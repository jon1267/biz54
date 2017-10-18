<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Route::get('/', [
    'uses' => 'IndexController@getIndex',
    'as' => 'index.home'
]);
Route::get('/support', [
    'uses' => 'IndexController@getSupport',
    'as'   => 'index.support'
]);
Route::get('/about', [
    'uses' => 'IndexController@getAbout',
    'as'   => 'index.about'
]);

//в IndexController@getBlog отображение всех (с категориями) статей блога.
//Одну статью блога, ее комменты помещу в PageController (там и articles)
Route::get('/blog/{category_id?}', [
    'uses' => 'IndexController@getBlog',
    'as'   => 'index.blog'
]);

Route::get('/contact', [
    'uses' => 'IndexController@getContact',
    'as'   => 'index.contact'
]);
Route::post('/contact', [
    'uses' => 'IndexController@postContact',
    'as'   => 'post.contact'
]);
Route::get('/page/{id}', [
    'uses' => 'PageController@index',
    'as'   => 'page',
]);

// Одна статья блога со связ комментами (выше были все ст. блога без коммент.)
Route::get('/blog/show/{id}', [
    'uses' => 'PageController@getBlogOne',
    'as'   => 'show.blogOne'
]);

Route::resource('comment', 'CommentController', ['only'=>['store']]);

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

// /admin
Route::group(['prefix' => 'admin', 'middleware' => ['web','auth']], function () {

    Route::get('/', [
        'uses' => 'Admin\IndexController@index',
        'as' => 'admin.index'
    ]);

    Route::resource('/articles', 'Admin\ArticlesController');

    Route::resource('/support', 'Admin\SupportController', ['only'=>['index','update']]);

    Route::resource('/abouts', 'Admin\AboutController');

    Route::resource('/users', 'Admin\UserController');
});

