<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Admin\AdminController;
use App\Repositories\AboutRepository;
use App\About;

class AboutController extends AdminController
{
    protected $b_rep; //typo about repository

    public function __construct(AboutRepository $b_rep)
    {
        $this->b_rep =  $b_rep;
        $this->template = 'admin.abouts';
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->title = 'Менеджер раздела About Us';
        //в разделе AboutUs по шаблону 2 статьи. Имхо take, пагинация, и пр тут ненада.
        $abouts = $this->b_rep->get('*', false, false, false);
        $this->content = view('admin.abouts_content')->with('abouts', $abouts)->render();

        return $this->renderOutput();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->title = 'Добавить материал в About Us';

        $this->content = view('admin.abouts_create_content')->render();

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
        $ru_mess = [
            'required' => "Нужно заполнить поле :attribute."
        ];
        $this->validate($request, [
            'title' => 'required|max:255',
            'text' => 'required'
        ], $ru_mess);

        /*
         * это нормально, пока запись в муск табл идет без ошибок.
         * Если нет - лара показывает ошибку MySQL Insert. пытаюсь отловить ошибку
        $result = About::create($request->all());
        if(is_array($result) && !empty($result['error'])) {
            return redirect()->back()->with($result);}
        */

        try {
            About::create($request->all());
        } catch(\Exception $e) {
            $request->flash();
            return redirect()->back()
                ->with(['error' => 'Ошибка добавления материала']);
        }

        return redirect()->route('abouts.index')
            ->with(['status' => 'Материал в раздел About Us успешно добавлен']);
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
        $about = $this->b_rep->one($id);
        $this->title = 'Редактирование материала About Us';
        $this->content = view('admin.abouts_create_content')->with('about', $about)->render();

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
        $about = $this->b_rep->one($id);

        $ru_mess = [
            'required' => "Нужно заполнить поле :attribute."
        ];
        $this->validate($request, [
            'title' => 'required|max:255',
            'text' => 'required'
        ], $ru_mess);

        try {
            $about->update($request->all());

        } catch(\Exception $e) {

            $request->flash();
            return redirect()->back()
                ->with(['error' => 'Ошибка сохранения материала в About Us']);
        }

        return redirect()->route('abouts.index')
            ->with(['status' => 'Материал успешно сохранен в раздел About Us']);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $about = $this->b_rep->one($id);

        if(empty($about)) return ['error' => 'Нет данных для удаления.'];

        if($about->delete()) {
            return redirect()->route('abouts.index')
                ->with(['status' => 'Материал успешно удален']);
        }

        return redirect()->route('abouts.index')
            ->with(['error' => 'Ошибка удаления данных.']);
    }
}
