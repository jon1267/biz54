<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
use App\Support;

class SupportsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        Support::truncate();

        $support = new Support([
            'title' => 'Support to Company Name',
            'text'  =>  $faker->paragraph(mt_rand(5,15))
        ]);
        $support->save();
    }
}
