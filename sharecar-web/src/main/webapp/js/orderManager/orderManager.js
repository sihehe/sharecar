$(function () {
    init();
});

function deleteInfo(e) {
    console.log(e);
    $.ajax({
        url: 'delCar?carId=' + e.id,
        type: 'post',
        success: function (data) {
            console.log(data);
            var params = {
                query: {
                    status: $('#queryStatus').val(),
                    orderNum: $('#queryOrderNum').val()
                }
            }
            $('#tableDemo').bootstrapTable('refresh', params);
        }

    })
}


function init() {
    console.log("初始化表格");

    var columns = [{
        field: 'orderId',
        title: '订单id',
        align: "center",
        halign: "center",
        valign: 'middle',
        visible: false
    },
        {
            field: 'orderNum',
            title: '订单编号',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'customerName',
            title: '客户',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'carName',
            title: '车辆',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'orderAmt',
            title: '订单金额',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'businessName',
            title: '套餐名称',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'num',
            title: '套餐次数',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'empName',
            title: '职工名称',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'orderStatus',
            title: '订单状态',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'payType',
            title: '支付方式',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'cashPledge',
            title: '押金',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'isExpire',
            title: '是否过期',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'operate',
            title: '操作',
            align: 'center',
            valign: 'middle',
            width: 250,
            events: {
                'click #edit': function (e, value, row, index) {
                    // $('#id').val(row.id);
                    // $('#name').val(row.name);
                    // $('#style').val(row.style);
                    // $('#region').val(row.region);
                    var id = row.id;
                    layer.open({
                        type: 2,
                        title: '编辑车辆信息',
                        area: ['870px', '650px'],
                        maxmin: true, //打开全屏
                        resize: true, //开启拉伸
                        scrollbar: false, //屏蔽滚动
                        btnAlign: 'c', //按钮居中对齐
                        btn: ['更新', '取消'],
                        content: "carManager-edit",
                        yes: function (index, layero) {
                            //    更新
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
                                id: id,
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
                            //    向后端传输数据
                            $.ajax({
                                url: "updateCar",
                                type: "POST",
                                dataType: 'json',
                                contentType: 'application/json;charset=UTF-8',
                                data: JSON.stringify(car),
                                success:function (res) {
                                    if(res.status){
                                        //    成功
                                        layer.close(index);
                                        var params = {
                                            query: {
                                                status: $('#queryStatus').val(),
                                                orderNum: $('#queryOrderNum').val()
                                            }
                                        };
                                        $('#tableDemo').bootstrapTable('refresh', params);
                                    }else{
                                        //    失败
                                        layer.alert(res.msg);
                                    }
                                },
                                error:function (res) {
                                    layer.alert("系统异常,请重试!");
                                }
                            })
                        },
                        btn2: function (index, layero) {
                            /*console.log(index);
                            console.log(layero);
                            layer.msg('取消按钮被点击');*/
                        },

                        success: function (layero,index) {
                            // layer.msg("成功弹出");
                            //父页面调用子页面方法
                            //得到iframe页的窗口对象，执行iframe页的方法：
                            var iframeWin = window[layero.find('iframe')[0]['name']];
                            iframeWin.initCar(id);
                        }

                    });

                    console.log(row.id);
                },
                'click #delete': function (e, value, row, index) {
                    deleteInfo(row);
                },
                'click #details': function (e, value, row, index) {
                    var id = row.id;
                    layer.open({
                        type: 2,
                        title: '车辆信息详情',
                        area: ['870px', '650px'],
                        maxmin: true, //打开全屏
                        resize: true, //开启拉伸
                        scrollbar: false, //屏蔽滚动
                        btnAlign: 'c', //按钮居中对齐
                        btn: ['返回'],
                        content: "carManager-details",
                        btn1: function (index, layero) {},
                        success: function (layero,index) {
                            // layer.msg("成功弹出");
                            //父页面调用子页面方法
                            //得到iframe页的窗口对象，执行iframe页的方法：
                            var iframeWin = window[layero.find('iframe')[0]['name']];
                            iframeWin.initCar(id);
                        }

                    });
                },

            },
            formatter: function (value, row, index) {
                var result = "";
                result += '<button id="details" class="btn btn-primary" data-toggle="modal" data-target="#detailsModal">详情</button>';
                result += '<button id="edit" class="btn btn-info" data-toggle="modal" data-target="#editModal" style="margin-left:10px;">编辑</button>';
                result += '<button id="delete" class="btn btn-danger" style="margin-left:10px;">删除</button>';
                return result;
            }
        }];

    $('#tableDemo').bootstrapTable({
        url: "orderList",
        method: "post",                                        // 请求类型
        contentType : "application/x-www-form-urlencoded",
        dataType:"json",
        height: tableHeight(),//高度调整
        width: 600,//高度调整
        striped:true,//隔行变色
        uniqueId:"id",//Indicate an unique identifier for each row
        toolbar: '#toolbar',
        sidePagination: "server",                              // 设置在服务端还是客户端分页
        pagination: true,                                      // 是否显示分页
        pageNumber: 1,                                         // 首页页码，默认为1
        pageSize: 5,                                           // 页面数据条数
        pageList: [5, 10, 20, 30],
        toolbarAlign: 'right',
        buttonsAlign: 'right',//按钮对齐方式
        queryParamsType: 'limit',
        clickToSelect: true,
        showColumns: true,
        queryParams: function (params) {
            return {
                pageSize: params.limit,
                pageIndex: params.offset,
                status: $('#queryStatus').val(),
                orderNum: $('#queryOrderNum').val()
            }
        },
        columns: columns,
        locale: 'zh-CN',//中文支持,
    })

}

function tableHeight() {
    return $(window).height() - 140;
}


$('#querybtn').click(function () {
    var params = {
        query: {
            status: $('#queryStatus').val(),
            orderNum: $('#queryOrderNum').val()
        }
    }
    $('#tableDemo').bootstrapTable('refresh', params);
})


$('#btn_add').click(function () {
    // window.location.href = "carManager-add"

    var index = layer.open({
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
            //调用表单校验 调用子方法
            var checkResult = iframeWin.check();
            if(checkResult){
                //    校验成功 获取子页面值
// 父页面获取子页面的iframe
                var frameId = $(layero).find("iframe").attr("id");
// 父页面获取子页面指定的id数据
                var customerId = $(window.frames[frameId].document).find("#customerId").val();
                var carId = $(window.frames[frameId].document).find("#carId").val();
                var businessId = $(window.frames[frameId].document).find("#businessId").val();
                var num = $(window.frames[frameId].document).find("#num").val();
                var useStartTime = $(window.frames[frameId].document).find("#useStartTime").val();
                var emptId = $(window.frames[frameId].document).find("#emptId").val();
                var payType = $(window.frames[frameId].document).find("#payType").val();
                var remark = $(window.frames[frameId].document).find("#remark").val();
                var order = {
                    customerId:customerId,
                    carId:carId,
                    businessId:businessId,
                    num:num,
                    useStartTime:useStartTime,
                    emptId:emptId,
                    payType:payType,
                    remark:remark
                };
                $.ajax({
                    type:'POST',
                    url:'addOrder',
                    dataType:'json',
                    contentType:'application/json;charset=UTF-8',
                    data:JSON.stringify(order),
                    success:function (res) {
                        console.log(res);
                        if(res.status){
                            layer.close(index);
                            var params = {
                                query: {
                                    orderNum: $('#queryOrderNum').val(),
                                    status: $('#queryStatus').val()
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

})






