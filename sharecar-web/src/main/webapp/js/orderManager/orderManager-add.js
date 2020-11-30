/*车辆选择按钮事件*/
$('#carSearch').click(function () {

   layer.open({
        type: 2,
        title: '选择车辆',
        area: ['450px', '500px'],
        maxmin: true, //打开全屏
        resize: true, //开启拉伸
        scrollbar: false, //屏蔽滚动
        btnAlign: 'c', //按钮居中对齐
        btn: ['确定', '取消'],
        content: "../carManager/carManager-list",
        yes: function (index, layero) {
// 父页面执行子页面的方法
            var iframeWin = window[layero.find('iframe')[0]['name']];
            var selectArr = iframeWin.getSelections();
            if(selectArr.length > 0){
                if(selectArr.length > 1){
                    layer.alert("请选择一条车辆信息记录");
                }
               var carInfo = selectArr[0];
                console.log(carInfo);
               $('#carId').val(carInfo.id);
               $('#carName').val(carInfo.name);
               layer.close(index);
            }else{
                layer.alert("请选择车辆信息");
            }
            // layer.close(index);
        },
        btn2: function (index, layero) {
            console.log(index);
            console.log(layero);
            // layer.msg('取消按钮被点击');
        },

        success: function () {
            // layer.msg("成功弹出");
        }
    });
});

/* 套餐选择按钮时间 */
$('#businessSearch').click(function () {

    layer.open({
        type: 2,
        title: '选择车辆',
        area: ['450px', '500px'],
        maxmin: true, //打开全屏
        resize: true, //开启拉伸
        scrollbar: false, //屏蔽滚动
        btnAlign: 'c', //按钮居中对齐
        btn: ['确定', '取消'],
        content: "../carManager/carManager-list",
        yes: function (index, layero) {
// 父页面执行子页面的方法
            var iframeWin = window[layero.find('iframe')[0]['name']];
            var selectArr = iframeWin.getSelections();
            if(selectArr.length > 0){
                if(selectArr.length > 1){
                    layer.alert("请选择一条车辆信息记录");
                }
                var carInfo = selectArr[0];
                console.log(carInfo);
                $('#carId').val(carInfo.id);
                $('#carName').val(carInfo.name);
                layer.close(index);
            }else{
                layer.alert("请选择车辆信息");
            }
            // layer.close(index);
        },
        btn2: function (index, layero) {
            console.log(index);
            console.log(layero);
            // layer.msg('取消按钮被点击');
        },

        success: function () {
            // layer.msg("成功弹出");
        }
    });
});


/* 日期选择组件 */
laydate.render({
    elem: '#useStartTime'
    ,type: 'datetime'
    ,range: '~'
    ,format: 'yyyy-MM-dd HH:mm:ss'
});

/* 校验表单 */
function check(){
    var result = $("#addOrderForm").valid();
    return result;
}



/* 选择盒子触发时间 */
window.onload = function () {


    /* 选择客户绑定时间 */
    //键入字符触发事件:动态获得后台传入select选项数据
    //请求的url
    var selectNameUrl = $("#customerId").attr("data-selectNameUrl");
    //选择得到搜索栏input，松开按键后触发事件
    $("#customerId").prev().find('.bs-searchbox').find('input').keyup(function () {
        //键入的值
        var inputManagerName = $('#addOrderForm #customer .open input').val();
        //判定键入的值不为空，才调用ajax
        if (inputManagerName != '') {
            $.ajax({
                type: 'post',
                url: selectNameUrl,
                data: {                     //传递到后台的值
                    pageIndex: 1,
                    pageSize: 1000,
                    customerName: inputManagerName
                },
                dataType: "Json",
                success: function (res) {
                    //清除select标签下旧的option签，根据新获得的数据重新添加option标签
                    console.log(res);
                    $("#customerId").empty();
                    if (res.rows != null) {
                        Selectmanagers = res.rows;
                        $.each(Selectmanagers, function (i, Selectmanager) {
                            $("#customerId").append(" <option value=\"" + Selectmanager.customerId + "\">" + Selectmanager.customerName + "</option>");
                        })
                        //必不可少的刷新
                        $("#customerId").selectpicker('refresh');

                    }
                }
            })
        } else
        //如果输入的字符为空，清除之前option标签
            $("#customerId").empty();
        $("#customerId").selectpicker('refresh');
    });


/* 选择经理人时间 */
    //键入字符触发事件:动态获得后台传入select选项数据
    //请求的url
    var selectEmpNameUrl = $("#emptId").attr("data-selectNameUrl");
    //选择得到搜索栏input，松开按键后触发事件
    $("#emptId").prev().find('.bs-searchbox').find('input').keyup(function () {
        //键入的值
        var empNameInput = $('#addOrderForm #empt .open input').val();
        console.log(empNameInput);
        //判定键入的值不为空，才调用ajax
        if (empNameInput != '') {
            $.ajax({
                type: 'post',
                url: selectEmpNameUrl,
                data: {                     //传递到后台的值
                    pageIndex: 1,
                    pageSize: 1000,
                    customerName: empNameInput
                },
                dataType: "Json",
                success: function (res) {
                    //清除select标签下旧的option签，根据新获得的数据重新添加option标签
                    console.log(res);
                    $("#emptId").empty();
                    if (res.rows != null) {
                        Selectmanagers = res.rows;
                        $.each(Selectmanagers, function (i, Selectmanager) {
                            $("#emptId").append(" <option value=\"" + Selectmanager.customerId + "\">" + Selectmanager.customerName + "</option>");
                        })
                        //必不可少的刷新
                        $("#emptId").selectpicker('refresh');

                    }
                }
            })
        } else
        //如果输入的字符为空，清除之前option标签
            $("#emptId").empty();
        $("#emptId").selectpicker('refresh');
    });

    /* 校验  */

    $("#addOrderForm").validate({
        //debug: true, //调试模式 表单不会被提交
        rules:{
            customerId:{required: true},
            carId:{ required: true},
            businessId:{ required: true},
            num:{ required: true},
            useStartTime:{ required: true},
            emptId:{ required: true},
            payType:{ required: true}
        },
        messages:{
            customerId:{required:"客户不能为空"},
            carId:{required:"车辆信息不能为空"},
            businessId:{required:"套餐不能为空"},
            num:{required:"套餐数量不能为空"},
            useStartTime:{required:"日期不能为空"},
            emptId:{required:"经理人信息不能为空"},
            payType:{required:"支付方式不能为空"}
        }
    });
}
