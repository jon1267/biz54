{{-- это универсальная вьюха и на создание и на обновление статьи в разделе About Us --}}
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            <strong>{{(isset($about->id) ? 'Редактирование материала About As': 'Добавление материала в About As')}}</strong>
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

            <form action="{{(isset($about->id)) ? route('abouts.update', ['abouts' => $about->id]) : route('abouts.store') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="title"><small>Заголовок</small></label>
                    <input class="form-control" type="text" id="title" name="title" placeholder="Заголовок статьи"
                           value="{{(isset($about->title)) ? $about->title : old('title')}}">
                </div>

                <div class="form-group">
                    <label for="text"><small>Текст</small></label>
                    <textarea class="form-control" name="text" id="text" placeholder="Полный текст статьи"  rows="4">
                            {{(isset($about->text)) ? $about->text : old('text')}}
                        </textarea>
                </div>

                @if(isset($about->id))
                    <input type="hidden" name="_method" value="PUT">
                @endif

                <br><button type="submit" class="btn btn-primary"> <i class="fa fa-save" aria-hidden="true"></i>&nbsp;&nbsp;Сохранить статью</button>
            </form>
        </div>

    </div>
</div>

<script>
    CKEDITOR.replace( 'text', {
        height: 250
    });
</script>