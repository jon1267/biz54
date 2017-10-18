{{-- это вьюха на обновление раздела Support статьи --}}
<div class="row">
    @include('admin.layouts.status_block')
</div>

<div class="row">
    <div class="panel panel-default">

        <div class="panel-heading">
            <strong>Раздел Support</strong>
        </div>
        <div class="panel-body">

            <form action="{{ route('support.update', ['support' => $support->id]) }}" method="post">
                {{ csrf_field() }}

                <div class="form-group">
                    <label for="title"><small>Заголовок</small></label>
                    <input class="form-control" type="text" id="title" name="title" placeholder="Заголовок статьи"
                           value="{{(isset($support->title)) ? $support->title : old('title')}}">
                </div>

                <div class="form-group">
                    <label for="text"><small>Текст</small></label>
                    <textarea class="form-control" name="text" id="text" placeholder="Полный текст статьи"  rows="4">
                            {{(isset($support->text)) ? $support->text : old('text')}}
                        </textarea>
                </div>

                <input type="hidden" name="_method" value="PUT">

                <br><button type="submit" class="btn btn-primary"> <i class="fa fa-save" aria-hidden="true"></i>&nbsp;&nbsp;Сохранить </button>
            </form>
        </div>

    </div>
</div>

<script>
    CKEDITOR.replace( 'text', {
        height: 250
    });
</script>