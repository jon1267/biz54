@if(isset($articles))

<div class="content">
    <div class="content_bg">
        <div class="mainbar">

                @foreach($articles as $article)
                    <div class="article">
                        <h2><span>{{ $article->title }}</span></h2>
                        <div class="clr"></div>
                        <p class="post-data"><a href="#" class="com fr">Comments (3)</a> <span class="date">{{ $article->created_at }}</span> &nbsp;|&nbsp; Posted by <a href="#">Owner</a></p>
                        <img src="{{asset('bizsolution/images/'.$article->img)}}" width="613" height="193" alt="image" />
                        <p>{{$article->desc}}</p>
                        <p class="spec"> <a href="{{route('page', ['id'=> $article->id])}}" class="rm fl">Read more</a></p>
                        <div class="clr"></div>
                    </div>
                @endforeach

            <div class="pagenavi"><span class="pages">Page 1 of 2</span><span class="current">1</span><a href="#" title="2">2</a><a href="#" >&raquo;</a></div>
        </div>

        <!-- include('site.left_bar') поставь @ вперед -->
        @include('site.left_bar')

        <div class="clr"></div>
    </div>
</div>
@else
    <div class="content">
        <div class="content_bg">
            <h1>No articles for display</h1>
        </div>
    </div>
@endif
