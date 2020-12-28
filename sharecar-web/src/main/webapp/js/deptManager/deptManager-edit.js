$(function () {
    $("#addCarForm").validate({
        //debug: true, //调试模式 表单不会被提交
        rules:{
            deptName:{required: true,rangelength:[2,30]},
            deptGrad:{ required: true},
            deptBrithYear:{ required: true,date:true },
            deptPhone:{ required: true,number:true},
            deptCardNum:{ required: true},
            deptAddress:{ required: true},
        },
        messages:{
            deptName:{required:"不能为空",rangelength:"长度必须是2-30个字符"},
            deptGrad:{required:"不能为空"},
            deptBrithYear:{required:"不能为空",date:"请输入正确的日期"},
            deptPhone:{required:"不能为空",number:"必须输入是数字"},
            deptCardNum:{required:"不能为空"},
            deptAddress:{required:"不能为空"},
        }


    });
});

function check(){
    var result = $("#addCarForm").valid();
    return result;
}

function initDept(id) {
    $.ajax({
        url: "deptDetails?deptId="+id,
        type: "POST",
        dataType:'json',
        contentType:'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                //    给弹出页面赋值
                $("#deptName").val(res.data.deptName);
                $("#deptGrad").val(res.data.deptGrad);
                $("#deptBrithYear").val(res.data.deptBrithYear);
                $("#deptPhone").val(res.data.deptPhone);
                $("#deptCardNum").val(res.data.deptCardNum);
                $("#deptAddress").val(res.data.deptAddress);
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
    elem: '#deptBrithYear'
    ,format: 'yyyyMM'
});