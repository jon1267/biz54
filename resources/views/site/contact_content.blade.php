<div class="content">
    <div class="content_bg">
        <div class="mainbar">
            <div class="article">
                <h2><span>Contact</span></h2><div class="clr"></div>
                <p>You can find more of my free template designs at my website. For premium commercial designs, you can check out DreamTemplate.com.</p>
            </div>
            <div class="article">
                <h2><span>Send us</span> mail</h2><div class="clr"></div>
                <form action="{{route('post.contact')}}" method="post" id="sendemail">
                    <ol><li>
                            <label for="name">Name (required)</label>
                            <input id="name" name="name" class="text" value="{{ old('name') }}">
                        </li><li>
                            <label for="email">Email Address (required)</label>
                            <input id="email" name="email" class="text" value="{{ old('email') }}">
                        </li><li>
                            <label for="website">Website</label>
                            <input id="website" name="website" class="text" value="{{ old('website') }}">
                        </li><li>
                            <label for="message">Your Message (required)</label>
                            <textarea id="message" name="message" rows="8" cols="50">{{ old('message') }}</textarea>
                        </li><li>
                            <input type="image" name="imageField" id="imageField" src="{{asset('bizsolution/images/submit.gif')}}" class="send" />
                            <div class="clr"></div>
                        </li></ol>
                        {{csrf_field()}}
                </form>
            </div>
        </div>

        <!-- include('site.left_bar') поставь @ вперед -->
        @include('site.left_bar')

        <div class="clr"></div>
    </div>
</div>