<?php

namespace Database\Seeders;

use App\Models\Store;
use App\Models\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // -- Criação de um único usuário fake. -- //

        // DB::table('users')->insert([
        //     'name' => 'Administrator',
        //     'email' => 'admin@gmail.com',
        //     'email_verified_at' => now(),
        //     'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        //     'remember_token' => 'testesteteste',
        // ]);

        // -- Criação de múltiplos usuários fakes. -- //
        // User::factory()->count(40)->create();

        // Criação de uma loja pra cada usuário.
        // Foi utilizado o save por ser um objeto, o create seria para array.
        User::factory()->count(40)->create()->each(function ($user) {
            $user->store()->save(Store::factory()->make());
        });
    }
}
