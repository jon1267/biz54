@if(isset($blogs))
    <div class="content">
        <div class="content_bg">
            <!-- <div class="mainbar"> -->
                <p class="article">
                    <h2><span>A Blog</span> Entry</h2>


                    <div class="pagenavi  blogPagination">

                        <span class="pages">Выберите тему блога</span>

                        @if(isset($cats))

                            @if(! $category_id)
                                <a class="current disabled"> Все </a>
                            @else
                                <a href="{{ route('index.blog') }}"> Все </a>
                            @endif

                            @foreach($cats as $cat)
                                @if($cat->id == $category_id)
                                    <a class="current disabled">{{ $cat->title }}</a>
                                @else
                                    <a href="{{ route('index.blog', ['category_id'=> $cat->id]) }}">{{ $cat->title }}</a>
                                @endif
                            @endforeach
                        @endif
                        {{-- к этому селекту с опшенами нада кнопа выбора, не кошерно...
                        @if(isset($cats))
                            <select name="category" id="category" style="margin-left: 20px">
                                <option value="0">Все</option>
                                @foreach($cats as $cat)
                                    <option value="{{ $cat->id }}">{{ $cat->title }}</option>
                                @endforeach
                            </select>
                        @endif
                        --}}
                    </div>
                    <div class="clr"></div>
                    <p>Posted by <a href="#">Owner</a>  <span>&nbsp;&bull;&nbsp;</span>  Filed under <a href="#">templates</a>, <a href="#">internet</a></p>


                    {{--<p>{!! $blog->desc !!}</p>       col-sm-6 col-md-4      --}}
                    <div class="row">
                        @foreach($blogs as $blog)
                        <div class="col_13 ">
                            <div class="thumbnail">
                                <br><img class="img-center" src="{{asset('bizsolution/images/'.$blog->img)}}" width="200" height="63" alt="image" >
                                {{--<p style="text-align: center;"><strong>{{ $blog->title }}</strong></p>--}}
                                <p>
                                    <h4>{{ $blog->title }}</h4>
                                    {!! $blog->desc !!}
                                </p>
                                <p style="text-align: right;">
                                    <a href="{{ route('show.blogOne', ['id' => $blog->id]) }}" class="rm fl">Подробнее</a>&nbsp;&nbsp;
                                    {{--<span > Откликов - <span class="badge"> {{ count($blog->comments) }} </span>&nbsp;&nbsp;</span>--}}
                                    <span > Откликов - {{ count($blog->comments) }} </span>&nbsp;&nbsp;
                                </p>
                            </div>
                        </div>
                        @endforeach

                    </div>

                </div>

                {{--@if(count($comments))
                    <div class="article">
                        <h2><span>{{ count($comments) }}</span> Responses</h2><div class="clr"></div>
                        @foreach($comments as $comment)
                            <div class="comment">
                                <a href="#"><img src="{{asset('bizsolution/images/userpic.gif')}}" width="40" height="40" alt="user" class="userpic" /></a>
                                <p><a href="#">admin</a> Says:<br />April 20th, 2009 at 2:17 pm {{ $comment->created_at->format('d.m.Y H:i:s') }}</p>
                                <p>{{ $comment->text }}</p>
                            </div>
                        @endforeach
                    </div>
                @else
                    <div class="article">
                        <h2><span>No</span> comments on this post</h2><div class="clr"></div>
                    </div>
                @endif--}}

                {{--<div class="article">
                    <h2><span>Leave a</span> Reply</h2><div class="clr"></div>
                    <form action="#" method="post" id="leavereply">
                        <ol><li>
                                <label for="name">Name (required)</label>
                                <input id="name" name="name" class="text" />
                            </li><li>
                                <label for="email">Email Address (required)</label>
                                <input id="email" name="email" class="text" />
                            </li><li>
                                <label for="website">Website</label>
                                <input id="website" name="website" class="text" />
                            </li><li>
                                <label for="message">Your Message</label>
                                <textarea id="message" name="message" rows="8" cols="50"></textarea>
                            </li><li>
                                <input type="image" name="imageField" id="imageField" src="{{asset('bizsolution/images/submit.gif')}}" class="send" />
                                <div class="clr"></div>
                            </li></ol>
                    </form>
                </div>--}}

            <!-- </div> -->

            <!-- include('site.left_bar') поставь @ вперед -->

            <div class="clr"></div>

            {{--<div class="pagenavi"><span class="pages">Page 1 of 2</span><span class="current">1</span><a href="#" title="2">2</a><a href="#" >&raquo;</a></div>
            <span class="pages">Page {{ $blogs->currentPage() }} of {{ $blogs->lastPage() }} </span>
            <span class="current">{{ $blogs->currentPage() }}</span><a href="{{ $blogs->nextPageUrl() }}" title="2">2</a><a href="#" >&raquo;</a>
            {{ $blogs->links() }} пагинация как она была в шаблоне --}}

            <div class="pagenavi  blogPagination">
                @if( $blogs->lastPage() > 1 )

                    <span class="pages">Page {{ $blogs->currentPage() }} of {{ $blogs->lastPage() }}</span>

                    @if($blogs->currentPage() !== 1)
                        <a href="{{ $blogs->url(($blogs->currentPage()-1)) }}" >&laquo;</a>
                    @endif

                    @for($i=1; $i<=$blogs->lastPage(); $i++)
                        @if($blogs->currentPage() == $i)
                            <a class="current disabled">{{ $i }}</a>
                        @else
                            <a href="{{ $blogs->url($i) }}">{{ $i }}</a>
                        @endif
                    @endfor

                    @if($blogs->currentPage() !== $blogs->lastPage())
                        <a href="{{ $blogs->url($blogs->currentPage() + 1) }}">&raquo;</a>
                    @endif

                @endif
            </div>
            <div class="clr"></div>

        </div>
    </div>
@endif