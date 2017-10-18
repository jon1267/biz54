@if(isset($page))

    <div class="content">
        <div class="content_bg">
            <!-- <div class="mainbar"> -->

                    <div class="article">
                        <h2><span>{{ $page->title }}</span></h2>
                        <div class="clr"></div>
                        <p class="post-data"><a href="#" class="com fr">Comments (3)</a> <span class="date">{{ $page->created_at }}</span> &nbsp;|&nbsp; Posted by <a href="#">Owner</a></p>

                        <img src="{{asset('bizsolution/images/'.$page->img)}}" width="200" height="63" alt="image" >
                        <p>{!! $page->desc !!}</p>
                        <p>{!! $page->text !!}</p>
                        <p class="spec"> <a href="{{route('index.home')}}" class="rm fl"> Back </a></p><br>
                        <div class="clr"></div>
                    </div>

                <!-- <div class="pagenavi"><span class="pages">Page 1 of 2</span><span class="current">1</span><a href="#" title="2">2</a><a href="#" >&raquo;</a></div> -->
            <!-- </div> -->

            <!-- include('site.left_bar') поставь @ вперед -->

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
