{{--admin part Articles content (all arts in table, add, edit, dele each arts) --}}
<div class="row">
    @include('admin.layouts.status_block')
</div>

@if($articles)
    <div class="row">
        <div  class="table-responsive">
            <h1><small>Статьи блога</small></h1>
            <table class="table table-bordered table-striped " id="table">
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Category</th>
                    <th>&nbsp;&nbsp;&nbsp;Actions&nbsp;&nbsp;&nbsp;</th>
                </tr>

                @foreach($articles as $article)
                    <tr class="item{{$article->id}}">
                    <td>{{$article->id}}</td>
                        <td>
                            <a href="{{ route('articles.edit', ['id' => $article->id]) }}" title="Редактировать статью"> {{$article->title}} </a>
                        </td>
                        <td>{{str_limit($article->text,200)}}</td>
                        <td>
                            @if(isset($article->img))
                            <img src="{{asset('bizsolution/images/'.$article->img)}}" width="50" height="32" alt="image">
                            @endif
                        </td>
                        <td>{{$article->category->title}}</td>
                        <td>

                            <form action="{{ route('articles.destroy', ['id' => $article->id]) }}" class="form-inline " method="POST">
                            <div class="form-group">
                                {{-- ссылка независима, к форме не привязана, просто чтоб кнопы были в строку --}}
                                <a href="{{ route('articles.edit', ['id' => $article->id]) }}" class="btn btn-primary btn-sm" title="Редактировать статью"> <i class="fa fa-pencil" aria-hidden="true"></i> </a>

                                {{csrf_field()}}
                                {{method_field('DELETE')}}
                                <button class="btn btn-danger btn-sm" title="Delete article" type="submit"> <i class="fa fa-trash-o" aria-hidden="true"></i> </button>
                            </div>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </table>
            <a href="{{route('articles.create')}}" class="btn btn-primary" title="Добавить новый материал"> <i class="fa fa-file-text" aria-hidden="true"></i>&nbsp; Добавить статью </a>
        </div>
        <!-- станд. пагинация -->
        {{ $articles->links() }}
    </div>
@endif