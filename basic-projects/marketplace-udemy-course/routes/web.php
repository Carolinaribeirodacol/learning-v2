<?php

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $helloWorld = "Hello World";

    return view('welcome', compact('helloWorld'));
})->name('home');

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/model', function () {
    $user = User::find(4);

    return $user->store()->count();
});

Route::group(['middleware' => ['auth']], function () {
    Route::prefix('admin')->name('admin.')->namespace('App\Http\Controllers\Admin')->group(function () {
        Route::prefix('stores')->name('stores.')->group(function () {
            Route::get('/', 'StoreController@index')->name('index');
            Route::get('/create', 'StoreController@create')->name('create');
            Route::post('/store', 'StoreController@store')->name('store');
            Route::get('/{store}/edit', 'StoreController@edit')->name('edit');
            Route::post('/update/{store}', 'StoreController@update')->name('update');
            Route::get('/destroy/{store}', 'StoreController@destroy')->name('destroy');
        });

        Route::resource('products', 'ProductController');
        Route::resource('stores', 'StoreController');
        Route::resource('categories', 'CategoryController');
    });
});

// prefix -> define uma parte de uma rota para um grupo que vai utilizar a mesma rota.

// namespace -> define uma parte de um caminho para um grupo que vai
// utilizar o mesmo caminho.

// get
// put
// post
// patch
// delete
// options

Auth::routes();