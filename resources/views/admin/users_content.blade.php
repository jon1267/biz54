{{--admin part Users content (all content in table, add, edit, dele each of users:) --}}
<div class="row">
    @include('admin.layouts.status_block')
</div>

@if($users)
    <div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div  class="table-responsive">
            <h1><small>Пользователи</small></h1>
            <table class="table table-bordered table-striped " id="table">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>

                @foreach($users as $user)
                    <tr class="item{{$user->id}}">
                        <td>{{$user->id}}</td>
                        <td>
                            <a href="{{ route('users.edit', ['id' => $user->id]) }}" title="Редактировать пользователя"> {{$user->name}} </a>
                        </td>
                        {{--<td>{{str_limit($about->text,400)}}</td>--}}
                        <td>{{$user->email}}</td>
                        <td>

                            <form action="{{ route('users.destroy', ['id' => $user->id]) }}" class="form-inline " method="POST">
                                <div class="form-group">
                                    {{-- ссылка независима, к форме не привязана, просто чтоб кнопы были в строку --}}
                                    <a href="{{ route('users.edit', ['id' => $user->id]) }}" class="btn btn-primary btn-sm" title="Редактировать пользователя"> <i class="fa fa-pencil" aria-hidden="true"></i> </a>

                                    {{csrf_field()}}
                                    {{method_field('DELETE')}}
                                    <button class="btn btn-danger btn-sm" title="Удалить пользователя" type="submit"> <i class="fa fa-trash-o" aria-hidden="true"></i> </button>
                                </div>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </table>
            <a href="{{route('users.create')}}" class="btn btn-primary" title="Добавить пользователя"> <i class="fa fa-file-text" aria-hidden="true"></i>&nbsp; Добавить пользователя </a>
        </div>
    </div>
    </div>
@else
    <div class="row">
        <h2><small>Нет пользователей</small></h2>
        <a href="{{route('users.create')}}" class="btn btn-primary" title="Добавить пользователя"> <i class="fa fa-file-text" aria-hidden="true"></i>&nbsp; Добавить пользователя </a>
    </div>
@endif