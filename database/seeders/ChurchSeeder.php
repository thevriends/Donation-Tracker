<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ChurchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('churches')->insert([
        //    'name' => Str::'Test church',
         //   'address' => Str::'123 Fake street, Ottawa, Ontario, canada, H0H0H0',
        //    'creator' => Str::'TestAdmin',
        //    'active' => Bool:: True,

        App\church::create([
            'name' => 'Test church',
            'address' => '123 Fake street, Ottawa, Ontario, Canada, H0H0H0',
            'creator' => 'TestAdmin',
            'active' => True
        ])
        App\church::create([
            'name' => 'Test church 2',
            'address' => '456 Fake street, Ottawa, Ontario, Canada, H0H0H0',
            'creator' => 'TestAdmin2',
            'active' => True
        ])
        ]);
    }
}
