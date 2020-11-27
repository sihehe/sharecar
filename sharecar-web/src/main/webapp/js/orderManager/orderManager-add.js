$('#carId').click(function () {

    layer.open({
        type: 2,
        title: '添加订单',
        area: ['870px', '650px'],
        maxmin: true, //打开全屏
        resize: true, //开启拉伸
        scrollbar: false, //屏蔽滚动
        btnAlign: 'c', //按钮居中对齐
        btn: ['确定', '取消'],
        content: "orderManager-add",
        yes: function (index, layero) {
            //得到iframe页的窗口对象，执行iframe页的方法：
            var iframeWin = window[layero.find('iframe')[0]['name']];
            //调用表单校验
            var checkResult = iframeWin.check();
            if(checkResult){
                //    校验成功 获取子页面值
// 父页面获取子页面的iframe
                var frameId = $(layero).find("iframe").attr("id");
// 父页面获取子页面指定的id数据
                var name = $(window.frames[frameId].document).find("#name").val();
                var factoryOwn = $(window.frames[frameId].document).find("#factoryOwn").val();
                var plate = $(window.frames[frameId].document).find("#plate").val();
                var ownerId = $(window.frames[frameId].document).find("#ownerId").val();
                var region = $(window.frames[frameId].document).find("#region").val();
                var style = $(window.frames[frameId].document).find("#style").val();
                var seats = $(window.frames[frameId].document).find("#seats").val();
                var color = $(window.frames[frameId].document).find("#color").val();
                var door = $(window.frames[frameId].document).find("#door").val();
                var length = $(window.frames[frameId].document).find("#length").val();
                var width = $(window.frames[frameId].document).find("#width").val();
                var hight = $(window.frames[frameId].document).find("#hight").val();
                var weight = $(window.frames[frameId].document).find("#weight").val();
                var engineType = $(window.frames[frameId].document).find("#engineType").val();
                var gearbox = $(window.frames[frameId].document).find("#gearbox").val();
                var fuelType = $(window.frames[frameId].document).find("#fuelType").val();
                var engineHorsepower = $(window.frames[frameId].document).find("#engineHorsepower").val();
                var displacement = $(window.frames[frameId].document).find("#displacement").val();
                var car = {
                    name:name,
                    factoryOwn:factoryOwn,
                    plate:plate,
                    ownerId:ownerId,
                    region:region,
                    style:style,
                    seats:seats,
                    color:color,
                    door:door,
                    length:length,
                    width:width,
                    hight:hight,
                    weight:weight,
                    engineType:engineType,
                    gearbox:gearbox,
                    fuelType:fuelType,
                    engineHorsepower:engineHorsepower,
                    displacement:displacement
                };
                $.ajax({
                    type:'POST',
                    url:'addCar',
                    dataType:'json',
                    contentType:'application/json;charset=UTF-8',
                    data:JSON.stringify(car),
                    success:function (res) {
                        console.log(res);
                        if(res.status){
                            layer.close(index);
                            var params = {
                                query: {
                                    status: $('#queryStatus').val(),
                                    orderNum: $('#queryOrderNum').val()
                                }
                            };
                            $('#tableDemo').bootstrapTable('refresh', params);
                        }else{
                            layer.error(res.msg);
                        }
                    },
                    error:function (res) {
                        layer.alert("系统错误,请重试!");
                    }
                })
                // layer.close(index);
            }else{
                //    失败
                layer.msg('填写内容不符合要求');
            }
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
    layer.full(index);

    });

window.onload = function () {

    //键入字符触发事件:动态获得后台传入select选项数据
    //请求的url
    var selectNameUrl = $("#customerId").attr("data-selectNameUrl");
    //选择得到搜索栏input，松开按键后触发事件
    $("#customerId").prev().find('.bs-searchbox').find('input').keyup(function () {
        //键入的值
        var inputManagerName =$('#addForm .open input').val();
        //判定键入的值不为空，才调用ajax
        if(inputManagerName != ''){
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
                        $.each(Selectmanagers, function (i,Selectmanager) {
                            $("#customerId").append(" <option value=\"" + Selectmanager.customerId + "\">" + Selectmanager.customerName + "</option>");
                        })
                        //必不可少的刷新
                        $("#customerId").selectpicker('refresh');

                    }
                }
            })
        }else
        //如果输入的字符为空，清除之前option标签
            $("#customerId").empty();
        $("#customerId").selectpicker('refresh');
    });
}
