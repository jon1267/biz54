<script   src="http://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
{{--
шаблон дурной. он идет с jquery-1.3.2 (master.blade.php, 15 стр.) Если в нем
(в master)подключать jquery-1.12.4 рушится верстка. Не подключать - нет ajax.
Бутстрап неподключал тк ломается верстка 
--}}
@if(isset($blogOne))
    <div class="content">
        <div class="content_bg">
            <div class="blog_page_content">

                <h2><span>A Blog</span> article</h2>

                <p>Posted by <a href="#">Owner</a>  <span>&nbsp;&bull;&nbsp;</span>  Filed under <a href="#">templates</a>, <a href="#">internet</a></p>


                <img class="img-center" src="{{asset('bizsolution/images/'.$blogOne->img)}}" width="200" height="63" alt="image" >
                {{--<p style="text-align: center;"><strong>{{ $blog->title }}</strong></p>--}}
                <p>
                <h2>{{ $blogOne->title }}</h2>
                {!! $blogOne->text !!}
                </p>

                <!-- </div> -->

                @if(count($blogOne->comments))
                    <div class="article">
                        <h2><span>{{ count($blogOne->comments) }}</span> Responses</h2><div class="clr"></div>

                        @foreach($blogOne->comments as $comment)
                            <div class="comment">
                                <img src="{{asset('bizsolution/images/userpic.gif')}}" width="40" height="40" alt="user" class="userpic" />

                                <p>
                                    @if($comment->name)
                                        {{ $comment->name }}
                                    @else
                                        {{ $comment->user->name }}
                                    @endif
                                    &nbsp;&nbsp; says: <br>
                                    @if($comment->created_at)
                                        {{ $comment->created_at->format('l, j F Y, \a\t H:i') }}
                                    @endif
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="commentNumber">#</span> &nbsp;&nbsp; <a href="#">Reply</a>
                                </p>
                                <p>{{ $comment->text }}</p>

                            </div>
                        @endforeach

                    </div>
                @else
                    <div class="article">
                        <h2><span>No</span> comments on this post</h2><div class="clr"></div>
                    </div>
                @endif

                <div id="start" class="insert_new_comment"></div>

                <div class="article">
                    <h2><span>Leave a</span> Reply</h2><div class="clr"></div>
                    <form action="{{ route('comment.store') }}" method="post" id="leavereply">
                        {{ csrf_field() }}
                        <input id="comment_blogOne_id" type="hidden" name="comment_blogOne_id" value="{{$blogOne->id}}">
                        <input id="comment_parent" type="hidden" name="comment_parent" value="0">

                        <ol>
                            @if(!Auth::check())
                            <li>
                                <label for="name">Name (required)</label>
                                <input id="name" name="name" class="text" value="" >
                            </li><li>
                                <label for="email">Email Address (required)</label>
                                <input id="email" name="email" class="text" value="">
                            </li><li>
                                <label for="site">Website</label>
                                <input id="site" name="site" class="text" value="">
                            </li>
                            @endif
                            <li>
                                <label for="text">Your Message</label>
                                <textarea id="text" name="text" rows="8" cols="50"></textarea>
                            </li><li>

                                <div class="ajax_result"></div>
                                {{--<input type="image" name="imageField" id="imageField" src="{{asset('bizsolution/images/submit.gif')}}" class="send" />--}}
                                <input type="image" name="imageField" id="submit" src="{{asset('bizsolution/images/submit.gif')}}" class="send" />
                                {{--<input type="submit" name="submit" id="submit" value="Send"/>--}}

                                <div class="clr"></div>
                            </li>
                        </ol>
                    </form>
                </div>
            </div>

            <div class="clr"></div>

        </div>
    </div>
@endif