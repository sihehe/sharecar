var car = {
    cashPledge:'',
    color:'',
    descr:'',
    displacement:'',
    door:'',
    engineHorsepower:'',
    engineType:'',
    factoryOwn:'',
    fuelType:'',
    gearbox:'',
    hight:'',
    id:'',
    imageInfo:'',
    isDel:'',
    length:'',
    name:'',
    ownerId:'',
    plate:'',
    region:'',
    seats:'',
    style:'',
    typeId:'',
    typeName:'',
    weight:'',
    width:''
}
$(function () {
    var id = getQueryVariable('id');
    getDetail(id);

})

// 绑定数据
function bindData() {
    var imageList = "";
    if(car.imageInfo != '' && car.imageInfo != null){
        var mainImage =  '<img src="upload/image/'+car.imageInfo.split(",")[0]+'">';
        $('#mainImage').html(mainImage);
        var imageArr = car.imageInfo.split(",");
        imageList ='  <ul class="carpic-big clearfix"  >';
        for(var i=0;i<imageArr.length;i++){
            imageList += '<li class="fl js-bigpic"> <img src="upload/image/'+imageArr[i]+'"></li>';
        }
        imageList += ' </ul>';
        $('#pic').html(imageList);
    }
   $('#carName').text(car.name);
   $('#name').text(car.name);
   $('#region').text(car.region);
   $('#typeName').text(car.typeName);
   $('#typeName2').text(car.typeName);
   $('#region2').text(car.region);
   $('#cashPledge').text(car.cashPledge);

   $('#plate').text(car.plate);
   $('#plate2').text(car.plate);
   $('#displacement').text(car.displacement);
   $('#displacement2').text(car.displacement);
   $('#engineType').text(car.engineType);
   $('#engineType2').text(car.engineType);
   $('#color').text(car.color);

   $('#factoryOwn').text(car.factoryOwn);
   $('#style').text(car.style);
   $('#fadongji').text(car.displacement+'L/'+car.engineHorsepower+'马力');
   $('#engineType3').text(car.engineType);
   $('#jiegou').text(car.door+'门'+car.seats+'座');
   $('#changkuan').text(car.length+'/'+car.width+'/'+car.hight);
   $('#displacement3').text(car.displacement);
   $('#engineHorsepower').text(car.engineHorsepower);
   $('#engineType4').text(car.engineType);
   $('#fuelType').text(car.fuelType);

}


//获取车辆详情信息
function getDetail(id) {
    $.ajax({
        url: "carManager/portalCarDetail?id="+id,
        type: "GET",
        dataType: 'json',
        contentType: 'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                 car = res.data;
                bindData();
                getBuninessList();
            }
        },
        error:function (res) {
            alert("系统出错");
        }
    })
}

// 从地址栏中获取参数方法
function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}

$('#freeAsk').click(function () {
    $('#phonefree').addClass('active');
    $('.pop-mask').addClass('active');
})

$('#closePhone').click(function () {
    $('#phonefree').removeClass('active');
    $('.pop-mask').removeClass('active');
})

$('#phoneFreeDefind').click(function () {
    $('#phonefree').removeClass('active');
    $('.pop-mask').removeClass('active');
})

$('#myBook').click(function () {
    var flag = checkCookie('phone');
    if(flag){
        $('#myBookBox').addClass('active');
        $('.pop-mask').addClass('active');
    }else{
        $('#login1').addClass('show');
        $('.pop-mask').addClass('active');
    }
})

$('#pop-close').click(function () {
    $('#myBookBox').removeClass('active');
    $('.pop-mask').removeClass('active');
})

$('#nowBook').click(function () {
    $('#myBookBox').removeClass('active');
    $('.pop-mask').removeClass('active');
})

function selectBusiness(e){
    var elementArr = $('#businessList').children();
    for(var i =0;i<elementArr.length;i++){
        $(elementArr[i]).removeClass('active');
    }
    $(e).addClass('active');
    calculatePayAmt();
}

function calculatePayAmt() {
    var selectBuniness = getBusinessActive();
    var price = parseFloat($(selectBuniness).attr('price'));
    var cashPledge = parseFloat(car.cashPledge);
    var num = parseInt($('#businessNum').text());
    $('#price').text(cashPledge + num * price);
}

function getBusinessActive() {
    var elementArr = $('#businessList').children();

    for(var i =0;i<elementArr.length;i++){
        if( $(elementArr[i]).hasClass('active')){
            return elementArr[i];
        }
    }
}

function addBusinessNum(){
    var business = $('#businessNum').text();
    var businessNum = parseInt(business);
    businessNum++;
    if(businessNum >= 100){
        businessNum = 100;
    }
    $('#businessNum').text(businessNum);
    calculatePayAmt();
}
function reduceBusinessNum(){
    var business = $('#businessNum').text();
    var businessNum = parseInt(business);
    businessNum--;
    if(businessNum <= 1){
        businessNum = 1;
    }
    $('#businessNum').text(businessNum);
    calculatePayAmt();
}

/* 日期选择组件 */
laydate.render({
    elem: '#useStartTime'
    ,type: 'datetime'
    ,range: '~'
    ,format: 'yyyy-MM-dd HH:mm:ss'
});
function commitOrder() {
    $('#myBookBox').removeClass('active');
    $('#payCode').addClass('active');
}
function createOrder(){

    var order = {
        phone:getCookie('phone'),
        carId:car.id,
        businessId:$(getBusinessActive()).attr('value'),
        num:$('#businessNum').text(),
        useStartTime:$('#useStartTime').val(),
        remark:$('#remark').val()
    };
    $.ajax({
        type:'POST',
        url:'orderManager/protalAddOrder',
        dataType:'json',
        contentType:'application/json;charset=UTF-8',
        data:JSON.stringify(order),
        success:function (res) {
            console.log(res);
            if(res.status){
                $('#payCode').removeClass('active');
                $('.pop-mask').removeClass('active');
                alert('成功!')
            }else{
                $('#payCode').removeClass('active');
                $('.pop-mask').removeClass('active');
                alert('失败,请重试!')
            }
        },
        error:function (res) {
            alert("系统错误,请重试!");
        }
    })

}

$('#js-login-new').click(function () {
    $('#login1').addClass('show');
    $('.pop-mask').addClass('active');
})

$('#closeLogin1').click(function () {
    $('#login1').removeClass('show');
    $('.pop-mask').removeClass('active');
});
$('#login').click(function () {
    var phone = $('#phone').val();
    var code = $('#code').val();
    // 判断输入值
    if (phone == undefined || phone == '' || phone.length != 11) {
        $('#loginError1').text("输入手机号有误");
        return
    }
    if (code == '') {
        $('#loginError1').text("请输入验证码");
        return
    }
    var loginParam = {
        phone: phone,
        code: code
    }
    console.log(document.cookie)
    $.ajax({
        type: 'post',
        url: 'customerManager/login',
        data: JSON.stringify(loginParam),
        dataType: "Json",
        contentType: 'application/json;charset=UTF-8',
        success: function (res) {
            if (res.status) {
                // 成功 讲手机号存入cookie中
                console.log(document.cookie)
                var cookiePhone = document.cookie;
                // 判断cookie中是否已经存在
                var flag =checkCookie('phone');
                if (!flag) {
                    setCookie('phone',phone,1)
                }

                $('#cancel').attr('style', '');
                $('#user').attr('style', '');
                $('#user').text(phone);
                $('#js-login-new').attr('style', 'display:none');
                $('#login1').removeClass('show');
                $('.pop-mask').removeClass('active');
            } else {
                $('#loginError1').text("验证码输入不正确");
                return
            }
        }
    })
});
// 退出
$('#logout').click(function () {
    //清楚cookie中phone字段
    clearCookie('phone');
    window.location.reload();
});


// 获取符合车辆类型的套餐列表
function getBuninessList() {
//    /sharecar/businessManager/queryBusinessList
    var queryParam = {
        'pageSize':5,
        'pageIndex':0,
        'carType':car.typeId
    };

    $.ajax({
        type: 'post',
        url: 'businessManager/queryBusinessList',
        data: queryParam,
        dataType: "Json",
        contentType: 'application/x-www-form-urlencoded',
        success: function (res) {
            var rows = res.rows;
            if(rows.length > 0){
                var content = '';
                for(var i = 0;i<rows.length;i++){
                    if(i == 0){
                        content += ' <span class="js-select-time active" onclick="selectBusiness(this)" price='+rows[i].price+' value='+rows[i].businessId+'>'+rows[i].businessName+'</span>';
                    }else{
                        content += '<span class="js-select-time" onclick="selectBusiness(this)" price='+rows[i].price+' value='+rows[i].businessId+' >'+rows[i].businessName+'</span>';
                    }
                }
                $('#businessList').html(content);
                calculatePayAmt();
            }
        }
    })
}

// 设置cookie
function setCookie(c_name, value, expiredays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + expiredays);
    document.cookie = c_name + "=" + escape(value) + ";expires=" + exdate.toGMTString()
}

// 读取cookie
function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=")
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1
            c_end = document.cookie.indexOf(";", c_start)
            if (c_end == -1)
                c_end = document.cookie.length
            return unescape(document.cookie.substring(c_start, c_end))
        }
    }
    return ""
}

// 检查cookie
function checkCookie(c_name) {
    username = getCookie(c_name);
    console.log(username);
    if (username != null && username != "") {
        return true;
    } else {
        return false;
    }
}

// 清除cookie
function clearCookie(name) {
    setCookie(name, "", -1);
}

$(function () {
    //查看cookie中是否存在登录的手机号
    var flag = checkCookie('phone');
    if(flag){
        var phone = getCookie('phone');
        $('#cancel').attr('style', '');
        $('#user').attr('style', '');
        $('#user').text(phone);
        $('#js-login-new').attr('style', 'display:none');
    }

})