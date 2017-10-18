<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class PageController extends Controller
{
    public function index($id)
    {
        if(!$id) abort(404, 'Material not found');

        $page = Article::where('id',$id)->first();
        //dd($page);
        $active = [];
        $active[0] = true;
        for($i=1; $i<=4; $i++) $active[$i] = false;

        return view('site.page', ['page' => $page, 'active' => $active]);
    }

    public function getBlogOne($id)
    {
        if(!$id) abort(404, 'Material not found');

        $blogOne = Article::with('comments')->where('id', $id)->first();
        $com = $blogOne->comments->groupBy('parent_id');

        //dd($blogOne, $blogOne->comments->groupBy('parent_id'));

        $active = [];
        for($i=0; $i<=4; $i++) $active[$i] = false;
        $active[3] = true;

        return view('site.blog_page', ['blogOne'=>$blogOne, 'com'=>$com, 'active' => $active]);

    }

}
