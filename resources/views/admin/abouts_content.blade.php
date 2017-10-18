{{--admin part About Us content (all content in table, add, edit, dele each of 2 arts:) --}}
<div class="row">
    @include('admin.layouts.status_block')
</div>

@if($abouts)
    <div class="row">
        <div  class="table-responsive">
            <h1><small>Раздел About Us</small></h1>
            <table class="table table-bordered table-striped " id="table">
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Text</th>
                    <th>&nbsp;&nbsp;&nbsp;Actions&nbsp;&nbsp;&nbsp;</th>
                </tr>

                @foreach($abouts as $about)
                    <tr class="item{{$about->id}}">
                        <td>{{$about->id}}</td>
                        <td>
                            <a href="{{ route('abouts.edit', ['id' => $about->id]) }}" title="Редактировать статью"> {{$about->title}} </a>
                        </td>
                        {{--<td>{{str_limit($about->text,400)}}</td>--}}
                        <td>{{$about->text}}</td>
                        <td>

                            <form action="{{ route('abouts.destroy', ['id' => $about->id]) }}" class="form-inline " method="POST">
                                <div class="form-group">
                                    {{-- ссылка независима, к форме не привязана, просто чтоб кнопы были в строку --}}
                                    <a href="{{ route('abouts.edit', ['id' => $about->id]) }}" class="btn btn-primary btn-sm" title="Редактировать статью"> <i class="fa fa-pencil" aria-hidden="true"></i> </a>

                                    {{csrf_field()}}
                                    {{method_field('DELETE')}}
                                    <button class="btn btn-danger btn-sm" title="Удалить статью" type="submit"> <i class="fa fa-trash-o" aria-hidden="true"></i> </button>
                                </div>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </table>
            <a href="{{route('abouts.create')}}" class="btn btn-primary" title="Добавить новый материал"> <i class="fa fa-file-text" aria-hidden="true"></i>&nbsp; Добавить материал </a>
        </div>
    </div>
@else
    <div class="row">
        <h2><small>Нет записей в разделе About Us</small></h2>
        <a href="{{route('abouts.create')}}" class="btn btn-primary" title="Добавить новый материал"> <i class="fa fa-file-text" aria-hidden="true"></i>&nbsp; Добавить материал </a>
    </div>
@endif