/**
 * Функция добавления товара в корзину
 * 
 * @param {integer} itemId ID продукта
 * @return в случае успеха обновятся данные корзины на странице
 */
function addToCart(itemId) {
    console.log("js - addToCart()");
    $.ajax({
        type: 'POST',
        async: false,
        url: "/cart/addtocart/" + itemId +'/',
        dataType: 'json',
        success: function(data) {
            if(data['success']) {
                $('#cartCntItems').html(data['cntItems']);
                //ссылка с id="addCart_12" скрывается а с id="removeCart_12" показыв.
                $('#addCart_'+ itemId).hide();
                $('#removeCart_'+ itemId).show();
            }
        }
    });
}

/**
 * Удаление продукта (товара) из корзины
 * 
 * @param integer itemId ID продукта товара
 * @return в случае успеха обновятся данные корзины на странице
 */
function removeFromCart(itemId) {
    console.log("js - removeFromCart("+itemId+")");
    $.ajax({
        type: 'POST',
        async: false,
        url:"/cart/removefromcart/" + itemId + '/',
        dataType: 'json',
        success: function(data) {
            if(data['success']) {

                $('#cartCntItems').html(data['cntItems']);
                //ссылка с id="addCart_12" скрывается а с id="removeCart_12" показыв.
                $('#addCart_'+ itemId).show();
                $('#removeCart_'+ itemId).hide();
            }
        }
    });
}

/**
 * Подсчет стоимости купленного товара (умнож. кол-во на цена за ед.)
 * 
 * @param integer itemId ID продукта (товара)
 */
function conversionPrice(itemId) {
    var newCnt = $('#itemCnt_' + itemId).val();
    var itemPrice = $('#itemPrice_' + itemId).attr('value');
    var itemRealPrice = newCnt * itemPrice;
    
    $('#itemRealPrice_' + itemId).html(itemRealPrice);
}

/**
 * Получение данных с формы (точнее с <div id="registerBox">)
 */
function getData(obj_form) {
    var hData = {};
    $('input, textarea, select', obj_form).each(function() {
        if(this.name && this.name!='') {
            hData[this.name] = this.value;
            console.log('hData[' + this.name + '] = ' + hData[this.name]);
        }
    });
    return hData;
}

/**
 * Регистрация нового ползователя
 */
function registerNewUser() {
    var postData = getData('#registerBox');
    
    $.ajax({
        type: 'POST',
        async: false,
        url: "/user/register/",
        data: postData,
        dataType: 'json',
        success: function(data) {
            if(data['success']) {
                alert('Регистрация прошла успешно');
                
                //> блок регистрации в левом столбце
                $('#registerBox').hide();
                
                $('#userLink').attr('href', '/user/');
                $('#userLink').html(data['userName']);
                $('#userBox').show();
                //<
                
                //> страница заказа
                $('#loginBox').hide();
                $('#btnSaveOrder').show();
                //<
            } else {
                alert(data['message']);
            }
        }
    });
}

/**
 * Авторизация пользователя
 */
function login() {
    
    var email = $('#loginEmail').val();
    var pwd   = $('#loginPwd').val();
    
    var postData = "email="+ email +"&pwd=" +pwd;
    
    $.ajax({
        type: 'POST',
        async: false,
        url: "/user/login/",
        data: postData,
        dataType: 'json',
        success: function(data) {
            if(data['success']) {
                $('#registerBox').hide();
                $('#loginBox').hide();
                
                $('#userLink').attr('href', '/user/');
                $('#userLink').html(data['displayName']);
                $('#userBox').show();
                
                // заполняем поля (имя, тел, адрес) на странице заказа
                $('#name').val(data['name']);
                $('#phone').val(data['phone']);
                $('#adress').val(data['adress']);
                
                $('#btnSaveOrder').show();
                
            } else {
                alert(data['message'])
            }
        }
    });
}

/**
 * Показать/спрятать фрорму регистрации
 */
function showRegisterBox() {
    if( $("#registerBoxHidden").css('display') != 'block' ) {
        $("#registerBoxHidden").show();
    } else {
        $("#registerBoxHidden").hide();
    }
}

/**
 * Обновление данных пользователя
 * (обращаетсяв UserController.php к функц. updateAction() )
 */
function updateUserData() {
    console.log("js - updateUserData()");
    var phone  = $('#newPhone').val();
    var adress = $('#newAdress').val();
    var pwd1   = $('#newPwd1').val();
    var pwd2   = $('#newPwd2').val();
    var curPwd = $('#curPwd').val();
    var name   = $('#newName').val();
    
    var postData = {
        phone: phone,
        adress: adress,
        pwd1: pwd1,
        pwd2: pwd2,
        curPwd: curPwd,
        name: name };
    
    $.ajax({
        type: 'POST',
        async: false,
        url: "/user/update/",
        data: postData,
        dataType: 'json',
        success: function(data) {
            if(data['success']) {
                $('#userLink').html(data['userName']);
                alert(data['message']);
            } else {
                alert(data['message']);
            }
        }
    });
}

/**
 * Сохранение заказа
 */
function saveOrder() {
    var postData = getData('form');
    $.ajax({
        type: 'POST',
        async: false,
        url: "/cart/saveorder/",
        data: postData,
        dataType: 'json',
        success: function(data) {
            if(data['success']) {
                alert(data['message']);
                document.location = '/';
            } else {
                alert(data['message']);
            }
        }
    });
}

/**
 * Показать или спрятать данные о заказе (подтабличка в таблице заказа)
 * вызов в user.tpl по onclick="showProducts('{$item['id']}'); return false;"
 */
function showProducts(id) {
    var objName = "#purchasesForOrderId_" + id;
    if( $(objName).css('display') != 'table-row' ) {
        $(objName).show();
    } else {
        $(objName).hide();
    }
}