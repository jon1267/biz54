<?php

namespace App\Repositories;

use App\Article;
use Image;

class ArticlesRepository extends Repository
{
    public function __construct(Article $article)
    {
        $this->model = $article;
    }

    //возвращает 1-у ст. со связ. комментами написавш их user если есть...
    //но я к статьям алиасов не делал...
    //public function one($alias, $attr=[]) {}

    public function addArticle($request) {

        $data = $request->except('_token', 'img');

        if(empty($data)) {
            return ['error' => 'Нет данных.'];
        }

        // тут формирование псевдонима статьи (если надо)

        // обрабатываем изображение
        if($request->hasFile('img')) {
            $image = $request->file('img');
            if($image->isValid()) {
                //dd($image);
                $filename = str_random(8).'.jpg';

                $img = Image::make($image);
                $img->fit(600,200)
                    ->save(public_path().'/'.'bizsolution/images/'.$filename);

                /*это голый Лара без доп.библ. Все ложится в storage без сжатия...
                Storage::disk('local')->put($filename, File::get($img));*/

                $data['img'] = $filename;
            }
        }
        $data['img'] = (!empty($data['img'])) ? $data['img'] : '';//если не выбрали img - убираем null
        //dd($data);

        /*$this->model->fill($data); ???
        $request->user()->articles()->save($this->model); ???*/

        try {
            Article::create($data);
        } catch(\Exception $e) {
            //return ['error' => $e->getMessage()];
            $request->flash(); //сохр. в сессию все поля объекта $request
            return ['error' => 'Ошибка записи материала'];
        }

        return ['status' => 'Материал успешно добавлен'];
    }

    public function updateArticle($request, $id) {

        //$article = Article::where('id', $id)->first();
        $article = $this->one($id);

        $data = $request->except('_token', 'img','_method');
        //dd($request, $article);

        if(empty($data)) {
            return ['error' => 'Нет данных.'];
        }

        // тут формирование псевдонима статьи (если надо)

        // обрабатываем изображение
        if($request->hasFile('img')) {
            $image = $request->file('img');
            if($image->isValid()) {

                $filename = str_random(8).'.jpg';

                $img = Image::make($image);
                $img->fit(600,200)
                    ->save(public_path().'/'.'bizsolution/images/'.$filename);

                /*это голый Лара без доп.библ. Все ложится в storage без сжатия...
                Storage::disk('local')->put($filename, File::get($img));*/

                $data['img'] = $filename;
            }
        } else {
            //!($request->hasFile('img')) те в редактир. новое изобр не выбрали, возможно есть старое...
            $data['img'] = $article->img;
        }
        $data['img'] = (!empty($data['img'])) ? $data['img'] : '';//если не выбрали img - убираем null
        //dd($data);

        /*$this->model->fill($data); ???
        $request->user()->articles()->save($this->model); ???*/

        try {
            $article->update($data);
        } catch(\Exception $e) {
            //return ['error' => $e->getMessage()];
            $request->flash();//сохранили в сессию все поля объекта $request
            return ['error' => 'Ошибка записи материала'];
        }

        return ['status' => 'Материал успешно обновлен'];
    }

    public function deleteArticle($id) {

        //$article = Article::where('id', $id)->first();
        $article = $this->one($id);

        if(empty($article)) return ['error' => 'Ошибка удаления.'];

        $article->comments()->delete(); //удаляем связ. со статьей комменты

        if($article->delete()) {
            return ['status' => 'Материал успешно удален.'];
        }
    }

}