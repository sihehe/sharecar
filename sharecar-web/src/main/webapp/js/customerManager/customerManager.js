$(function () {
    init();
});

function deleteInfo(e) {
    console.log(e);
    $.ajax({
        url: 'delCustomer?customerId=' + e.customerId,
        type: 'post',
        success: function (data) {
            console.log(data);
            refresh();
        }

    })
}
// 重新刷新
function refresh() {
    var params = {
        query: {
            customerName: $('#queryName').val(),
            customerPhone: $('#queryPhone').val()
        }
    }
    $('#tableDemo').bootstrapTable('refresh', params);
}


function init() {
    console.log("初始化表格");

    var columns = [{
        field: 'customerId',
        title: '客户名称',
        align: "center",
        halign: "center",
        valign: 'middle',
        sortable: true
    },
        {
            field: 'customerName',
            title: '客户姓名',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'customerGrad',
            title: '客户性别',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'customerPhone',
            title: '客户手机号',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'customerAddress',
            title: '客户地址',
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
                    var id = row.businessId;
                    layer.open({
                        type: 2,
                        title: '编辑客户信息',
                        area: ['870px', '550px'],
                        maxmin: true, //打开全屏
                        resize: true, //开启拉伸
                        scrollbar: false, //屏蔽滚动
                        btnAlign: 'c', //按钮居中对齐
                        btn: ['更新', '取消'],
                        content: "businessManager-edit",
                        yes: function (index, layero) {
                            var iframeWin = window[layero.find('iframe')[0]['name']];
                            var business = getAddBusiness(layero,iframeWin,id);
                        //    向后端传输数据
                            $.ajax({
                                url: "updateBunsiness",
                                type: "POST",
                                dataType: 'json',
                                contentType: 'application/json;charset=UTF-8',
                                data: JSON.stringify(business),
                                success:function (res) {
                                    retryQueryTable(res,index);
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
                            iframeWin.initBusiness(id);
                        }

                    });

                    console.log(row.id);
                },
                'click #delete': function (e, value, row, index) {
                    deleteInfo(row);
                },
                'click #details': function (e, value, row, index) {
                    var id = row.businessId;
                   var index= layer.open({
                        type: 2,
                        title: '客户信息详情',
                        area: ['870px', '550px'],
                        maxmin: true, //打开全屏
                        resize: true, //开启拉伸
                        scrollbar: false, //屏蔽滚动
                        btnAlign: 'c', //按钮居中对齐
                        btn: ['返回'],
                        content: "businessManager-details",
                        btn1: function (index, layero) {},
                        success: function (layero,index) {
                            // layer.msg("成功弹出");
                            //父页面调用子页面方法
                            //得到iframe页的窗口对象，执行iframe页的方法：
                            var iframeWin = window[layero.find('iframe')[0]['name']];
                            iframeWin.initBusiness(id);
                        }

                    });
                   layer.full(index);
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
        url: "customerList",
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
                customerName: $('#queryName').val(),
                customerPhone: $('#queryPhone').val()
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
    refresh();
})


$('#btn_add').click(function () {
    // window.location.href = "carManager-add"

    var index = layer.open({
        type: 2,
        title: '添加套餐信息',
        area: ['870px', '550px'],
        maxmin: true, //打开全屏
        resize: true, //开启拉伸
        scrollbar: false, //屏蔽滚动
        btnAlign: 'c', //按钮居中对齐
        btn: ['确定', '取消'],
        content: "businessManager-add",
        yes: function (index, layero) {
            //得到iframe页的窗口对象，执行iframe页的方法：
            var iframeWin = window[layero.find('iframe')[0]['name']];
            //调用表单校验
            var checkResult = iframeWin.check();
            if (!checkResult) {
                //    失败
                layer.msg('填写内容不符合要求');
            } else {
                // 调用动态表格校验
                var checkTableData = iframeWin.checkTableData();
                if (!checkTableData) {
                    layer.alert('价格配置信息填写不完整');
                }
                var business = getAddBusiness(layero,iframeWin,null);
                $.ajax({
                    type: 'POST',
                    url: 'addBusiness',
                    dataType: 'json',
                    contentType: 'application/json;charset=UTF-8',
                    data: JSON.stringify(business),
                    success: function (res) {
                        retryQueryTable(res,index);
                    },
                    error: function (res) {
                        layer.alert("系统错误,请重试!");
                    }
                })
                // layer.close(index);
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

function getAddBusiness(layero,iframeWin,id) {
    //    校验成功 获取子页面值
    // 父页面获取子页面的iframe
    var frameId = $(layero).find("iframe").attr("id");
    // 父页面获取子页面指定的id数据
    var name = $(window.frames[frameId].document).find("#businessName").val();
    var businessUnit = $(window.frames[frameId].document).find("#businessUnit").val();
    var businessTimeOutUnit = $(window.frames[frameId].document).find("#businessTimeOutUnit").val();
    var tableData = iframeWin.getTableData();
    var business = {
        businessId:id,
        name: name,
        businessUnit: businessUnit,
        businessTimeOutUnit: businessTimeOutUnit,
        businessPriceList: tableData
    };
    return business;
}


function retryQueryTable(res,index) {
    if(res.status){
        //    成功
        layer.close(index);
       refresh();
    }else{
        //    失败
        layer.alert(res.msg);
    }
}



