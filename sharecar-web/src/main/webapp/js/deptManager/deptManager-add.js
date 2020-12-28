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


/* 日期选择组件 */
laydate.render({
    elem: '#deptBrithYear'
    ,format: 'yyyyMM'
});