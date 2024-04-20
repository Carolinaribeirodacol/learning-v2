<?php

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    Auth::loginUsingId(1);
    $users = User::all();

    return view('welcome', [
        'users' => $users
    ]);
});
