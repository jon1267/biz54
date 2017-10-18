<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Admin\AdminController;
use App\Support;
use App\Repositories\SupportRepository;

class SupportController extends AdminController
{
    protected $s_rep; //typo support repository

    public function __construct(SupportRepository $s_rep)
    {
        $this->s_rep = $s_rep;
        $this->template = 'admin.support';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->title = 'Менеджер раздела support';
        $support = $this->s_rep->one(1);//в табл support 1-a запись (она-же $id = 1)

        $this->content = view('admin.support_content')->with('support', $support)->render();

        return $this->renderOutput();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        $support = $this->s_rep->one($id);
        //dd($request, $support, $id);

        $ru_mess = ['required' => "Нужно заполнить поле :attribute."];

        $this->validate($request, [
            'title' => 'required|max:255',
            'text'  => 'required'
        ], $ru_mess);

        if($support->update($request->all())){

            return redirect()->route('admin.index')
                ->with(['status' =>'Данные успешно сохранены.']);
        }

        return redirect()->route('support.index')
            ->with(['error' => 'Ошибка записи данных.']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
