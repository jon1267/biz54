// В шаблоне - jQuery 1.3.(2009!!!) Если втыкать что посовременнее - ломается верстка...
//должно было быть- jQuery(document).ready(function ($) { ...методом тыка нашел старый аналог
$(function(){

    $('div.article div.comment').each(function (i) {
        $(this).find('span.commentNumber').text('#' + (i+1))
    });

    $('#leavereply').on('click', '#submit', function (e) {
        // строка ниже предотвращает (отменяет) дефолтовое поведение кнопы сабмит -
        // отправка формы и перерисовка стр. Это - начало добавл коммента через ajax
        e.preventDefault();
        // var comParent = $(this); выродилось указывает на input формы - но идея интересная
        $('.ajax_result').
            css('color', 'green').
            text('Сохранение комментария...').
            fadeIn(500, function () {
            var data = $('#leavereply').serializeArray();
            $.ajax({
                url: $('#leavereply').attr('action'),
                data: data,
                // строка headers: из доки по Ларавелу
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                type: 'POST',
                datatype: 'JSON',
                success: function (html) {
                    if(html.error) {
                        $('.ajax_result').css('color', 'red')
                            .append('<br><strong>Ошибка...</strong>' + html.error.join('<br>'));
                        $('.ajax_result').delay(2000).fadeOut(500);
                    }
                    else if(html.success) {
                        $('.ajax_result').append('<br><strong>Сохранено...</strong>')
                            .delay(2000)
                            .fadeOut(500, function () {

                                if(html.data.parent_id > 0) {
                                    //это как-бы дочерний коммент, те ответ на уже существующий
                                    //точно с отступами не получилось...зато коммент под нужным местом...
                                    $('form#leavereply').parent().after('<div class="children">' + html.comment +'</div>');
                                    $('a.cancel-reply-link').click();
                                    //все тоже что ниже, Reply вставить низзя, нада рефрешить стр...
                                } else {
                                    // это родительский коммент - просто выводим в дом дерево
                                    $('div#start').before('<div class="insert_new_parent_comment">' + html.comment + '</div>');
                                    //вставляется где надо в DOM-tree и в MySQL...:) но без ссылки Reply :(
                                    //тут в js скрипте уже неясно что с {{$item->id}}- нада для ссылки (короче я в тупике:)
                                }
                            });
                    }
                },
                error: function () {
                    $('.ajax_result').css('color', 'red').append('<br><strong>Ошибка...</strong>');
                    $('.ajax_result').delay(3000).fadeOut(1000, function() {
                        $('a.cancel-reply-link').click();
                    });
                }
            });
        });
    });

    /*$('.comment').find('.reply-link').on('click', function (e, div) {
        e.preventDefault();
        console.log(e, div);
        //$('form#leavereply').detach().appendTo('div#comment-1>p#item-text');
        $('form#leavereply').detach().appendTo(div + '>p#item-text');
    });*/

});

function moveForm(div) {
    //event.preventDefault();
    //console.log('div#comment-' + div + '>p.item-text');
    $('form#leavereply').detach().insertAfter( $('div#comment-' + div + '>p.item-text'));
    $('div.comment a.reply-link').hide();
    $('a.cancel-reply-link').detach().prependTo($('form#leavereply')).show();
    $('form#leavereply input#comment_parent').val(div);

    return false;
}

function removeForm() {
    //event.preventDefault();
    //console.log('div#' + div + '>p.item-text');
    $('form#leavereply').detach().insertAfter( $('div.article>div#insert_form'));
    $('a.cancel-reply-link').hide();
    $('div.comment a.reply-link').show();

    return false;
}

//addComment={moveForm:function(d,f,i,c){var m=this,a,h=m.I(d),b=m.I(i),l=m.I("cancel-comment-reply-link"),j=m.I("comment_parent"),k=m.I("comment_post_ID");if(!h||!b||!l||!j){return}m.respondId=i;c=c||false;if(!m.I("wp-temp-form-div")){a=document.createElement("div");a.id="wp-temp-form-div";a.style.display="none";b.parentNode.insertBefore(a,b)}h.parentNode.insertBefore(b,h.nextSibling);if(k&&c){k.value=c}j.value=f;l.style.display="";l.onclick=function(){var n=addComment,e=n.I("wp-temp-form-div"),o=n.I(n.respondId);if(!e||!o){return}n.I("comment_parent").value="0";e.parentNode.insertBefore(o,e);e.parentNode.removeChild(e);this.style.display="none";this.onclick=null;return false};try{m.I("comment").focus()}catch(g){}return false},I:function(a){return document.getElementById(a)}};
/*
addComment={
    moveForm:function(d,f,i,c)
    {
        console.log(d,f,i,c);
        var m=this,a,h=m.I(d),b=m.I(i),l=m.I("cancel-comment-reply-link"),j=m.I("comment_parent"),k=m.I("comment_post_ID");
        if(!h||!b||!l||!j){return}
        m.respondId=i;
        c=c||false;
        if(!m.I("leavereply")){
            a=document.createElement("div");
            a.id="leavereply";
            a.style.display="none";
            b.parentNode.insertBefore(a,b)
        }
        h.parentNode.insertBefore(b,h.nextSibling);
        if(k&&c){k.value=c}
        j.value=f;
        l.style.display="";
        l.onclick=function(){
            var n=addComment,e=n.I("leavereply"),o=n.I(n.respondId);
            if(!e||!o){return}
            n.I("comment_parent").value="0";
            e.parentNode.insertBefore(o,e);e.parentNode.removeChild(e);
            this.style.display="none";
            this.onclick=null;
            return false
        };
        try{m.I("comment").focus()}catch(g){}return false
    },
    I:function(a){return document.getElementById(a)}

};*/
