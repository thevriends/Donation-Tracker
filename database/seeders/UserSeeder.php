<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'TestAdmin',
            'email' => 'TestTracker1@tracker.com',
            'password' => Hash::make('password'),
            'user_type' => 'SuperAdmin',
            'active' => True,
            'church_id' => '0'
        ]);

        User::create([
            'name' => 'TestAdmin2',
            'email' => 'TestTracker2@tracker.com',
            'password' => Hash::make('password'),
            'user_type' => 'Admin',
            'active' => True,
            'church_id' => '1'
        ]);


    }
}
