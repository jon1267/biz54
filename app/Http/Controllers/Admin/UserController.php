<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Admin\AdminController;
use App\User;
use App\Repositories\UserRepository;

class UserController extends AdminController
{
    protected $us_rep;

    public function __construct(UserRepository $us_rep)
    {
        $this->us_rep = $us_rep;
        $this->template = 'admin.users';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->title = 'Менеджер пользователей';
        $users = $this->us_rep->get();
        $this->content = view('admin.users_content')->with('users',$users)->render();

        return $this->renderOutput();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->title = 'Добавить пользователя';
        $this->content = view('admin.users_create_content')->render();

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
            'required' => "Нужно заполнить поле :attribute.",
            'unique' => "Поле :attribute уже используется.",
            'email' => "Поле :attribute должно содержать корректный электронный адрес.",
            'between' => "Поле :attribute должно содержать от 6 до 26 символов.",
            'confirmed' => "Пароли не совпадают"
        ];

        $this->validate($request, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|between:6,25|confirmed'
        ], $ru_mess);

        $data = $request->except('_token', 'password_confirmation');
        $data['password'] = bcrypt($data['password']);

        try {
            User::create($data);
        } catch(\Exception $e) {
            $request->flash();
            return redirect()->route('users.index')
                ->with(['error' => 'Ошибка добавления пользователя']);
        }

        return redirect()->route('users.index')
            ->with(['status' => 'Пользователь успешно добавлен']);

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
        $user = $this->us_rep->one($id);
        $this->title = 'Редактирование пользователя';
        $this->content = view('admin.users_create_content')->with('user', $user)->render();

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
        $user = $this->us_rep->one($id);
        //dd($request, $user, $id);

        $ru_mess = [
            'required' => "Нужно заполнить поле :attribute.",
            'unique' => "Поле :attribute уже используется.",
            'email' => "Поле :attribute должно содержать корректный электронный адрес.",
            'between' => "Поле :attribute должно содержать от 6 до 26 символов.",
            'confirmed' => "Пароли не совпадают"
        ];

        $this->validate($request, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users,email,'.$id ,
            'password' => 'nullable|between:6,25|confirmed'
        ], $ru_mess);

        $data = $request->except('_token', '_method' ,'password_confirmation');

        if(isset($data['password'])) {
            $data['password'] = bcrypt($data['password']);
        } else {
            $data['password'] = $user->password;
        }

        /*try {
            $user->update($data);

        } catch(\Exception $e) {
            $request->flash();
            return redirect()->route('users.index')
                ->with(['error' => 'Ошибка измения пользователя']);
        }

        return redirect()->route('users.index')
            ->with(['status' => 'Пользователь успешно изменен']);*/

        // закомент. код выше рабочий - просто пробую варианты ...

        if($user->update($data)) {
            return redirect()->route('users.index')
                ->with(['status' => 'Пользователь успешно изменен']);
        }

        return redirect()->route('users.index')
            ->with(['error' => 'Ошибка измения пользователя']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = $this->us_rep->one($id);
        //$user = User::find($id);
        //User::find($id)->first(); всегда! находит $user c $id=1 !!!

        if(empty($user)) return ['error' => 'Нет данных для удаления.'];

        if($user->delete()) {
            return redirect()->route('users.index')
                ->with(['status' => 'Материал успешно удален']);
        }

        return redirect()->route('users.index')
            ->with(['error' => 'Ошибка удаления данных.']);
    }
}
