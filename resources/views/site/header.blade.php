<div class="header">
    <div class="logo">
        <h1><a href="/"><span>biz</span> solution<small>Simple web template</small></a></h1>
    </div>
    <div class="menu_nav">
        <ul>
                <li class="{{$active[0] ? 'active' : ''}}"><a href="/">Home</a></li>
                <li class="{{$active[1] ? 'active' : ''}}"><a href="{{ route('index.support') }}">Support</a></li>
                <li class="{{$active[2] ? 'active' : ''}}"><a href="{{ route('index.about') }}">About Us</a></li>
                <li class="{{$active[3] ? 'active' : ''}}"><a href="{{ route('index.blog') }}">Blog</a></li>
                <li class="{{$active[4] ? 'active' : ''}}"><a href="{{ route('index.contact') }}">Contact Us</a></li>
        </ul>
        <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <div class="hbg"><img src="{{asset('bizsolution/images/header_images.jpg')}}" width="653" height="271" alt="header images" />
        <div class="text">
            <h3>Creating Futures</h3>
        </div>
    </div>
</div>

@if(session('status'))
    <div class="mainbar success">
        {{ session('status') }}
    </div>
@endif
@if(count($errors))
    <div class="mainbar error">
        <ul>
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif