<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Church;

class ChurchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Church::create([
            'name' => 'Test church',
            'address' => '123 Fake street, Ottawa, Ontario, Canada, H0H0H0',
            'creator' => 'TestAdmin',
            'active' => True
        ]);
    
        Church::create([
            'name' => 'Test church 2',
            'address' => '456 Fake street, Ottawa, Ontario, Canada, H0H0H0',
            'creator' => 'TestAdmin2',
            'active' => True
        ]);
    }
}
