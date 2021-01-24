
$('#define').click(function () {

    var customerName = $('#customerName').val();
    var customerGrad = $('#customerGrad').val();
    var customerBrithYear = $('#customerBrithYear').val();
    var customerCardNum = $('#customerCardNum').val();
    var customerAddress = $('#customerAddress').val();
    if(customerName == '' || customerGrad == '' || customerBrithYear ==''||customerCardNum==''||customerAddress==''){
        $('#error').text('请保证填写信息完整');
    }
   var customerPhone = getCookie('phone');
    // 获取表单中的内容
    var customer = {
        customerName:customerName,
        customerGrad:customerGrad,
        customerBrithYear:customerBrithYear,
        customerCardNum:customerCardNum,
        customerAddress:customerAddress,
        customerPhone:customerPhone
    }

    $.ajax({
        type: 'POST',
        url: 'customerManager/portalUpdateCustomer',
        dataType: 'json',
        contentType: 'application/json;charset=UTF-8',
        data: JSON.stringify(customer),
        success: function (res) {
            if(res.status){
                $('#customerName').attr("disabled",true);
                $('#customerGrad').attr("disabled",true);
                $('#customerBrithYear').attr("disabled",true);
                $('#customerCardNum').attr("disabled",true);
                $('#customerAddress').attr("disabled",true);
                $('#okOption').attr('style','display:none;margin-left: 65%');
                $('#editOption').attr('style','margin-left: 65%')
                alert('修改成功');
            }else{
                alert('系统出错,请稍后重试');
            }
        }

    })

})

$('#quxiao').click(function () {
    $('#customerName').attr("disabled",true);
    $('#customerGrad').attr("disabled",true);
    $('#customerBrithYear').attr("disabled",true);
    $('#customerCardNum').attr("disabled",true);
    $('#customerAddress').attr("disabled",true);
    $('#okOption').attr('style','display:none;margin-left: 65%');
    $('#editOption').attr('style','margin-left: 65%')
})

//编辑触发事件
$('#edit').click(function () {
    $('#customerName').removeAttr("disabled");
    $('#customerGrad').removeAttr("disabled");
    $('#customerBrithYear').removeAttr("disabled");
    $('#customerCardNum').removeAttr("disabled");
    $('#customerAddress').removeAttr("disabled");
    $('#editOption').attr('style','display:none;margin-left: 65%');
    $('#okOption').attr('style','margin-left: 65%')
})

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

function selectContent(e) {
    var aArr = $('#menu').find('a');
    var num = 0;
    for(var i = 0;i<aArr.length;i++){
        $(aArr[i]).removeClass('active');
        if(aArr[i] == e){
            num = i;
        }
    }
    $(e).addClass('active');

    var divArr = $('#zone').children();
    for(var i = 0;i<aArr.length;i++){
        $(divArr[i]).removeClass('active');
    }
    $(divArr[num]).addClass('active');
}

function getCustomerInfo(){
    var customerPhone = getCookie('phone');
    $.ajax({
        type: 'POST',
        url: 'customerManager/portalGetCustomer?phone='+customerPhone,
        dataType: 'json',
        contentType: 'application/json;charset=UTF-8',
        success: function (res) {
            if(res.status){
                var c = res.data;
                $('#customerName').val(c.customerName);
                $('#customerGrad').val(c.customerGrad);
                $('#customerBrithYear').val(c.customerBrithYear);
                $('#customerCardNum').val(c.customerCardNum);
                $('#customerAddress').val(c.customerAddress);
            }else{
                alert('系统出错,请稍后重试');
            }
        }

    })


}


$(function () {
    getCustomerInfo();
})