$(function () {
    $("#addCarForm").validate({
        //debug: true, //调试模式 表单不会被提交
        rules:{
            customerName:{required: true,rangelength:[2,30]},
            customerGrad:{ required: true},
            customerBrithYear:{ required: true,date:true },
            customerPhone:{ required: true,number:true},
            customerCardNum:{ required: true},
            customerAddress:{ required: true},
        },
        messages:{
            customerName:{required:"不能为空",rangelength:"长度必须是2-30个字符"},
            customerGrad:{required:"不能为空"},
            customerBrithYear:{required:"不能为空",date:"请输入正确的日期"},
            customerPhone:{required:"不能为空",number:"必须输入是数字"},
            customerCardNum:{required:"不能为空"},
            customerAddress:{required:"不能为空"},
        }


    });
});

function check(){
    var result = $("#addCarForm").valid();
    return result;
}

function initCustomer(id) {
    $.ajax({
        url: "customerDetails?customerId="+id,
        type: "POST",
        dataType:'json',
        contentType:'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                //    给弹出页面赋值
                $("#customerName").val(res.data.customerName);
                $("#customerGrad").val(res.data.customerGrad);
                $("#customerBrithYear").val(res.data.customerBrithYear);
                $("#customerPhone").val(res.data.customerPhone);
                $("#customerCardNum").val(res.data.customerCardNum);
                $("#customerAddress").val(res.data.customerAddress);
            }else{
                layer.alert(res.msg);
            }

        },
        error:function (res) {
            layer.alert('系统异常,请重试!');
        }

    });

}

/* 日期选择组件 */
laydate.render({
    elem: '#customerBrithYear'
    ,format: 'yyyyMM'
});