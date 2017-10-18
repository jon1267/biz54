{{-- это универсальная вьюха и на создание и на обновление в пользователя --}}
<div class="row">
<div class="col-md-6 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <strong>{{(isset($user->id) ? 'Редактирование пользователя': 'Добавление пользователя')}}</strong>
        </div>
        <div class="panel-body">

            @if(count($errors))
                <div class="alert alert-danger " role="alert">
                    <ul> {{--style="list-style: none;text-align: center;"--}}
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form  action="{{(isset($user->id)) ? route('users.update', ['users' => $user->id]) : route('users.store') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name"><small>Имя пользователя</small></label>
                    <input class="form-control" type="text" id="name" name="name" placeholder="Имя пользователя"
                           value="{{(isset($user->name)) ? $user->name : old('name')}}">
                </div>

                <div class="form-group">
                    <label for="email"><small>Email</small></label>
                    <input class="form-control" type="text" id="email" name="email" placeholder="Email"
                           value="{{(isset($user->email)) ? $user->email : old('email')}}">
                </div>

                <div class="form-group">
                    <label for="password"><small>Пароль</small></label>
                    <input class="form-control" type="password" id="password" name="password">
                </div>
                <div class="form-group">
                    <label for="password_confirmation"><small>Повтор пароля</small></label>
                    <input class="form-control" type="password" id="password_confirmation" name="password_confirmation">
                </div>


                @if(isset($user->id))
                    <input type="hidden" name="_method" value="PUT">
                @endif

                <br><button type="submit" class="btn btn-primary"> <i class="fa fa-save" aria-hidden="true"></i>&nbsp;&nbsp;Сохранить пользователя </button>
            </form>
        </div>

    </div>
</div>
</div>
