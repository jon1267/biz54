<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class IndexController extends AdminController
{
    //
    public function __construct()
    {
        parent::__construct();
        $this->template = 'admin.index';
    }

    public function index()
    {
        $this->title = 'Панель администратора';
        return $this->renderOutput();
        //return view('admin.index');
    }
}
