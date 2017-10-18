@foreach($items as $item)
    <div id="comment-{{ $item->id }}" class="comment {{ ($item->user_id == $blogOne->user_id) ? 'blogauthor' : '' }}">
        <img src="{{asset('bizsolution/images/userpic.gif')}}" width="40" height="40" alt="user" class="userpic" />

        <p>
            @if($item->name)
                {{ $item->name }}
            @else
                {{ $item->user->name }}
            @endif
            &nbsp;&nbsp; says: <br>
            @if($item->created_at)
                {{ $item->created_at->format('l, j F Y, \a\t H:i') }}
            @endif
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       <span class="commentNumber">#</span> &nbsp;&nbsp;
            <a class="reply-link" href="#" onclick="return moveForm(&quot;{{$item->id}}&quot;)">Reply</a>&nbsp;&nbsp;&nbsp;
            {{--<a class="cancel-reply-link" href="#" onclick="return removeForm() ">Cancel</a>--}}

            {{--<a class="comment-reply-link" href="#respond" onclick="return addComment.moveForm(&quot;comment-{{$item->id}}&quot;, &quot;{{$item->id}}&quot;, &quot;respond&quot;, &quot;{{$item->article_id}}&quot;)">Reply</a>--}}

        </p>
        <p class="item-text">{{ $item->text }}</p>

    </div>
    @if(isset($com[$item->id]))
        <div id="child-{{ $item->id }}" class="children">
            {{--рекурсивный вызов шаблоном самого себя, но с др массивом коммента
            блога. Это ("children") - сдвинутый на 20px те дочерний коммент--}}
            @include('site.blog_one_comment_tree', ['items'=>$com[$item->id]])
        </div>
        <div id="start-child" class="insert_new_child"></div>
    @endif
@endforeach
