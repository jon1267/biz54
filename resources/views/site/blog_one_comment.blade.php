{{--
  это шаблон 1-ного коммента. блога добавляемого через ajax... не путать
  с шаблоном 1-ного коммента дерева - "ответ на коммент" с отступом, лесенкой.
  это разные шаблоны.
--}}
<div class="comment">
    <a href="#"><img src="{{asset('bizsolution/images/userpic.gif')}}" width="40" height="40" alt="user" class="userpic" /></a>
    <p>{{ $data['name'] }} &nbsp;&nbsp; says: <br>
        @if($data['created_at'])
            {{ $data['created_at'] }}
        @endif
    </p>
    <p>{{ $data['text'] }}</p>
</div>
