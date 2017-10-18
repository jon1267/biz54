{{-- это универсальная вьюха и на создание и на обновление статьи (_new - неудачно...) --}}
<div class="row">
    {{--<div class="col-md-10 col-md-offset-1">--}}
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>{{(isset($article->id) ? 'Редактирование статьи': 'Добавление статьи')}}</strong>
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

                <form action="{{(isset($article->id)) ? route('articles.update', ['articles' => $article->id]) : route('articles.store') }}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                    <div class="form-group">
                        <label for="title"><small>Заголовок</small></label>
                        <input class="form-control" type="text" id="title" name="title" placeholder="Заголовок статьи"
                               value="{{(isset($article->title)) ? $article->title : old('title')}}">
                    </div>

                    <div class="form-group">
                        <label for="desc"><small>Описание</small></label>
                        <textarea class="form-control" name="desc" id="desc" placeholder="Краткое описание статьи"  rows="2">
                            {{(isset($article->desc)) ? $article->desc : old('desc')}}
                        </textarea>
                    </div>

                    <div class="form-group">
                        <label for="text"><small>Текст</small></label>
                        <textarea class="form-control" name="text" id="text" placeholder="Полный текст статьи"  rows="4">
                            {{(isset($article->text)) ? $article->text : old('text')}}
                        </textarea>
                    </div>

                    @if(isset($article->id) && (mb_strlen($article->img) != 0 ))
                    <div class="form-group">
                        <label for="old_img"><small>Старое изображение</small></label>
                        <div><img id="old_img" src="{{asset('bizsolution/images/'.$article->img)}}" width="200" height="63" alt="&nbsp;"></div>
                    </div>
                    @endif

                    <div class="row">

                        <div class="form-group col-md-6 col-xs-8">
                            <label for="img">
                                <small>Изображение</small>
                            </label>
                            <input type="file" name="img" id="img" class="filestyle"
                                   data-buttonText="&nbsp;&nbsp;Выбор изображения" data-buttonName="btn-primary"
                                   data-placeholder="Файла нет">
                        </div>

                        <div class="form-group col-md-6 col-xs-8">
                            <label for="category_id">
                                <small>Категория статьи</small>
                            </label>
                            <select class="form-control" name="category_id" id="category_id">
                                @foreach($cats as $k => $v)
                                    <optgroup label="{{$k}}">
                                        @foreach($v as $id => $cat)
                                            @if(isset($article->category_id) && ($article->category_id == $id))
                                                <option selected value="{{$id}}">{{$cat}}</option>
                                            @else
                                                <option value="{{$id}}">{{$cat}}</option>
                                            @endif
                                        @endforeach
                                    </optgroup>
                                @endforeach
                            </select>

                        </div>

                    </div>

                    @if(isset($article->id))
                        <input type="hidden" name="_method" value="PUT">
                    @endif

                    <br><button type="submit" class="btn btn-primary"> <i class="fa fa-save" aria-hidden="true"></i>&nbsp;&nbsp;Сохранить статью</button>
                </form>
            </div>

        </div>
    {{--</div>  CKEDITOR.replace( 'desc' );  --}}
</div>

<script>
    CKEDITOR.replace( 'desc', {
        height: 100
    });
    CKEDITOR.replace( 'text', {
        height: 160
    });
</script>