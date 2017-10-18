<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use App\Support;
use App\About;
use App\Category;
use Mail;
use DB;

class IndexController extends Controller
{
    //
    public function getIndex()
    {
        $active = [];
        // $articles = Article::all();
        $articles = Article::take(2)->get();
        $active[0] = true;
        for($i=1; $i<=4; $i++) $active[$i] = false;
        //dd($articles);

        return view('site.index', ['articles' => $articles, 'active' => $active]);
    }

    public function getSupport()
    {
        $active = [];
        $supports = Support::get(['title', 'text', 'created_at']);
        for($i=0; $i<=4; $i++) $active[$i] = false;
        $active[1] = true;
        //dd($supports);

        return view('site.support')->with(['supports' => $supports, 'active' => $active]);
    }

    public function getAbout()
    {
        $active = [];
        $abouts = About::take(2)->get();
        for($i=0; $i<=4; $i++) $active[$i] = false;
        $active[2] = true;
        //$abouts = About::where('id', '<=', 2)->get();
        //dd($abouts);

        return view('site.about')->with(['abouts' => $abouts, 'active' => $active]);
    }

    public function getBlog($category_id = false)
    {
        $active = [];
        for($i=0; $i<=4; $i++) $active[$i] = false;
        $active[3] = true;

        //для упрощения считаю что статьи блога = статьям articles.
        //ну те не завожу в мускуле табл блог - беру все из articles-comments.
        //----$id=1;

        //$blog = Article::with('comments', 'category')->find($id);
        //$cats = Category::get(['id', 'title', 'alias']);
        //dd($blog, $blog->comments, $blog->category);
        //dd($blog, $blog->comments[0]['text'], $blog->category->alias);

        //----$blog = Article::find($id);
        //----$comments = $blog->comments;

        //решил делать типа карточки статей (<div class="thumbnail">)

        if($category_id) {
            $blogs = Article::with('comments')->where('category_id', $category_id)->paginate(3);//->get(['id', 'title', 'desc', 'img'])
        } else {
            $blogs = Article::with('comments')->paginate(3);//->get(['id', 'title', 'desc', 'img'])
        }

        //$cats = Category::get(['id', 'title', 'alias']); //работает но сильно просто
        // SELECT DISTINCT `category_id`, `id`, `title` FROM `articles` a
        // JOIN `categories` c ON a.category_id = c.id
        $cats = DB::table('articles')
            ->join('categories', 'articles.category_id', '=', 'categories.id')
            ->select('categories.id','categories.title')->distinct()->get();
        //dd($blogs, $cats);

        return view('site.blog', [
            'active' => $active, 'blogs' => $blogs, 'cats' => $cats, 'category_id' => $category_id
        ]);
    }

    public function getContact()
    {
        $active = [];
        for($i=0; $i<=4; $i++) $active[$i] = false;
        $active[4] = true;

        return view('site.contact', ['active' => $active]);
    }

    public function postContact(Request $request)
    {
        $messages = [
            'required' => "Поле :attribute обязательно к заполнению.",
            'email' => "Поле :attribute должно содержать корректный электронный адрес"
        ];

        $this->validate($request, [
            'name' => 'required|max:255',
            'email'=> 'required|email',
            'message' => 'required'
        ], $messages);
        //dd($request);

        $data = $request->all();
        $result = Mail::send('site.email_template', ['data' => $data], function($mess) use($data) {
            $mailAdmin = 'admin@mail.com';// = env('MAIL_ADMIN') и в.env файле строка MAIL_ADMIN=admin@mail.com
            $mess->from($data['email'], $data['name']);
            $mess->to($mailAdmin, 'Mr. Admin')->subject('Message from site');
        });

        if(!$result) {
            return redirect()->route('home')->with('status', 'Ваше сообщение успешно отправлено.');
        }
    }
}
