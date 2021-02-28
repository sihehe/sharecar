$(function () {
    init();
});

function deleteInfo(e) {
    console.log(e);
    $.ajax({
        url: 'orderDel?orderId=' + e.orderId,
        type: 'post',
        success: function (data) {
            console.log(data);
            var params = {
                query: {
                    orderNum: $('#queryOrderNum').val(),
                    status: $('#queryStatus').val()
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
            valign: 'middle',
            width: 180
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
            field: 'orderStatusStr',
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
            field: 'operate',
            title: '操作',
            align: 'center',
            valign: 'middle',
            width: 250,
            events: {
                'click #details': function (e, value, row, index) {
                    var id = row.orderId;
                    layer.open({
                        type: 2,
                        title: '订单信息详情',
                        area: ['870px', '550px'],
                        maxmin: true, //打开全屏
                        resize: true, //开启拉伸
                        scrollbar: false, //屏蔽滚动
                        btnAlign: 'c', //按钮居中对齐
                        btn: ['返回'],
                        content: "orderManager-details",
                        btn1: function (index, layero) {},
                        success: function (layero,index) {
                            // layer.msg("成功弹出");
                            //父页面调用子页面方法
                            //得到iframe页的窗口对象，执行iframe页的方法：
                            var iframeWin = window[layero.find('iframe')[0]['name']];
                            iframeWin.initOrder(id);
                        }

                    });
                },
                'click #pay': function (e, value, row, index) {
                    var index = layer.open({
                        type: 1,
                        title: '添加订单',
                        area: ['430px', '500px'],
                        maxmin: true, //打开全屏
                        resize: true, //开启拉伸
                        scrollbar: false, //屏蔽滚动
                        btnAlign: 'c', //按钮居中对齐
                        btn: ['返回'],
                        content: "<img src= '../img/payCode.png'/>",
                        btn1: function (index, layero) {
                        },
                        success: function () {
                            // layer.msg("成功弹出");
                        }
                    });
                }

            },
            formatter: function (value, row, index) {
                var result = "";
                result += '<button id="details" class="btn btn-primary" data-toggle="modal" data-target="#detailsModal">详情</button>';
                if(row.orderStatusStr == '待支付'){
                    result += '<button id="pay" class="btn btn-info" data-toggle="modal" data-target="#payModal" style="margin-left:10px;">结算</button>';
                }
                // result += '<button id="delete" class="btn btn-danger" style="margin-left:10px;">删除</button>';
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
        area: ['870px', '550px'],
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
                    url:'orderAdd',
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
                            layer.alert(res.msg);
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






