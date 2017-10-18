<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\HomeController;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    //
    //protected $a_rep; //typo article repository
    //protected $s_rep; //typo support repository
    //protected $b_rep; //typo about repository

    protected $template; //блэйд шаблон кажд. стр. админки
    protected $content = false; //отрендеренное (в html-e) содерж.кажд.стр.админки
    protected $title; //заголовок стр.админки.
    protected $vars;  // $vars массив перем, передаваемый в блэйд шаблон

    public $user;     // null или обьект авторизов ползателя

    public function __construct()
    {
        //$this->user = Auth::user(); // Auth::user() return NULL !!!
        //if (!$this->user) abort(403, 'Нет авторизованного пользователя');
    }

    public function renderOutput()
    {

        $this->vars = array_add($this->vars, 'title', $this->title);
        //$menu = $this->getMenu(); //что с меню пока неясно... вроде оно постоянное ??? хз
        //$navigation = view('admin.navigations')->with('menu', $menu)->render();
        //$this->vars = array_add($this->vars, 'navigation', $navigation);

        if ($this->content) {
            $this->vars = array_add($this->vars, 'content',$this->content);
        }
        //$footer = view('admin.footer')->render();
        //$this->vars = array_add($this->vars, 'footer', $footer);
        return view($this->template)->with($this->vars);
    }

    public function getMenu()
    {

    }
}
