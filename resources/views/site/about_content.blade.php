@if(isset($abouts))
<div class="content">
    <div class="content_bg">
        <div class="mainbar">
            @foreach($abouts as $about)
            <div class="article">
                <h2><span>{{ $about->title }}</span></h2><div class="clr"></div>
                <p>{!! $about->text !!}</p>
            </div>
            @endforeach
        </div>

        <!-- include('site.left_bar') поставь @ вперед -->
        @include('site.left_bar')

        <div class="clr"></div>
    </div>
</div>
@else

@endif