<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
use App\About;

class AboutsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        About::truncate();

        $support = new About([
            'title' => 'About to Company Name',
            'text'  =>  $faker->paragraph(mt_rand(5,15))
        ]);
        $support->save();

        $support = new About([
            'title' => 'Our Mission',
            'text'  =>  $faker->paragraph(mt_rand(5,15))
        ]);
        $support->save();
    }
}
