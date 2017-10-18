<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
use App\Article;

class ArticlesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        Article::truncate();

        //foreach (range(1,2) as $i) {
        $article = Article::create([
            'title' => 'Template License',
            'desc'  => '>This is a free CSS website template by 
                        <a href="#" title="Website Templates">CoolWebTemplates.net</a>. 
                        This work is distributed under the <a rel="license" href="#">
                        Creative Commons Attribution 3.0 License</a>, which means that 
                        you are free to use it for any personal or commercial purpose 
                        provided you credit me in the form of a link back to 
                        <a href="#" title="Website Templates"> CoolWebTemplates.net</a>.',
            'text'  => $faker->paragraph(mt_rand(5,15)),
            'img'   => 'images_1.jpg'
        ]);

        $article = Article::create([
            'title' => $faker->sentence,
            'desc'  => $faker->sentence(). ' ' .$faker->sentence(). ' ' .$faker->sentence(),
            'text'  => $faker->paragraph(mt_rand(5,15)),
            'img'   => 'images_2.jpg'

        ]);
        //}
    }
}
