<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Admin\AdminController;
use App\Article;
use App\Repositories\ArticlesRepository;

class ArticlesController extends AdminController
{
    protected $a_rep; //typo article repository

    public function __construct(ArticlesRepository $a_rep)
    {
        //parent::__construct();// там Auth::user() return null... !!!
        //if(Gate::denies('VIEW_ADMIN_ARTICLES')) abort(403,'Доступ запрещен');

        $this->a_rep = $a_rep; //д.б __construct(ArticlesRepo $a_rep)
        $this->template = 'admin.articles';

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->title = 'Менеджер статей блога';
        $articles = $this->getArticles();
        $this->content = view('admin.articles_content')->with('articles', $articles)->render();

        return $this->renderOutput();
    }

    /**
     * Return collection articles
     */
    public function getArticles()
    {
        return $this->a_rep->get('*', false, 3, false);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $this->title = 'Добавить новый материал';
        $cats = Category::select(['id', 'parent_id', 'title', 'alias'])->get();

        $lists = [];
        foreach($cats as $cat) {
            if($cat->parent_id == 0){
                $lists[$cat->title] = [];
            } else {
                $lists[$cats->where('id', $cat->parent_id)->first()->title][$cat->id] = $cat->title;
            }
        }
        //dd($lists);

        $this->content = view('admin.articles_create_new')->with('cats', $lists)->render();

        return $this->renderOutput();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);//тут вместо такой валидации можно создать класс:
        // php art make:request ArticleRequest - и в нем в ф-ции rules()
        // написать правила валидации...пока пробую по простому...
        $ru_mess = [
            'required' => "Нужно заполнить поле :attribute.",
            'unique' => "Поле :attribute должно быть уникальным. Измените значение.",
            'email' => "Поле :attribute должно содержать корректный электронный адрес.",
        ];
        $this->validate($request, [
            'title' => 'required|max:255',
            'desc' => 'required',
            'text' => 'required',
            'category_id' => 'required|integer',
            'user_id' => 'required|integer',
        ], $ru_mess);

        $result = $this->a_rep->addArticle($request);

        if(is_array($result) && !empty($result['error'])) {
            //возврат на прошлую страницу,(ввод новой статьи)
            return redirect()->back()->with($result);
        }
        //на страницу просмотра статей
        return redirect()->route('articles.index')->with($result);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $article = Article::where('id', $id)->first();
        $cats = Category::select(['id', 'parent_id', 'title', 'alias'])->get();
        //dd($article, $cats);

        $lists = [];
        foreach($cats as $cat) {
            if($cat->parent_id == 0){
                $lists[$cat->title] = [];
            } else {
                $lists[$cats->where('id', $cat->parent_id)->first()->title][$cat->id] = $cat->title;
            }
        }

        $this->title = 'Редактирование статьи';

        $this->content = view('admin.articles_create_new')->with(['cats'=> $lists, 'article'=> $article])->render();

        return $this->renderOutput();

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $ru_mess = [
            'required' => "Нужно заполнить поле :attribute.",
            'unique' => "Поле :attribute должно быть уникальным. Измените значение.",
            'email' => "Поле :attribute должно содержать корректный электронный адрес.",
        ];
        $this->validate($request, [
            'title' => 'required|max:255',
            'desc' => 'required',
            'text' => 'required',
            'category_id' => 'required|integer',
            'user_id' => 'required|integer',
        ], $ru_mess);

        $result = $this->a_rep->updateArticle($request, $id);

        if(is_array($result) && !empty($result['error'])) {
            //возврат на прошлую страницу,(ввод новой статьи)
            return redirect()->back()->with($result);
        }
        //на страницу просмотра статей
        return redirect()->route('articles.index')->with($result);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $result = $this->a_rep->deleteArticle($id);

        if(is_array($result) && !empty($result['error'])) {
            //возврат на прошлую страницу,(ввод новой статьи)
            return redirect()->back()->with($result);
        }
        //на страницу просмотра статей
        return redirect()->route('articles.index')->with($result);

    }
}
