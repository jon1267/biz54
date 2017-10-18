@if(isset($supports))
<div class="content">
    <div class="content_bg">
        <div class="mainbar">
            @foreach($supports as $support)
            <div class="article">
                <h2>{{ $support->title }}</h2><div class="clr"></div>
                <p>{!! $support->text !!}</p>
                <ul class="sb_menu">
                    <li><a href="#"><strong>Lorem ipsum</strong></a></li>
                    <li><a href="#"><strong>Lorem absum</strong></a></li>
                    <li><a href="#"><strong>Lorem addsum</strong></a></li>
                </ul>
            </div>
            @endforeach

        </div>

        <!-- include('site.left_bar') поставь @ вперед -->
        @include('site.left_bar')

        <div class="clr"></div>
    </div>
</div>
@else
    <div class="content">
        <div class="content_bg">
            <h1>No contents here</h1>
        </div>
    </div>
@endif