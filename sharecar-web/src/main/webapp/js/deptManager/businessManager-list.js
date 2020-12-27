$(function () {
    init();
});


function init() {

    var columns = [
        {
            field: 'index',
            align: "center",
            halign: "center",
            valign: 'middle',
            checkbox: true
        },
        {
            field: 'businessId',
            title: '主键',
            align: "center",
            halign: "center",
            valign: 'middle',
            sortable: true
        },
        {
            field: 'businessName',
            title: '套餐名称',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'businessUnit',
            title: '套餐类型',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'carType',
            title: '车辆类型',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'price',
            title: '价格',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'timeOutPrice',
            title: '超时单价',
            align: "center",
            halign: "center",
            valign: 'middle'
        }];

    $('#tableDemo').bootstrapTable({
        url: "businessList",
        method: "post",                                        // 请求类型
        contentType : "application/x-www-form-urlencoded",
        dataType:"json",
        height: tableHeight(),//高度调整
        width: 600,//高度调整
        striped:true,//隔行变色
        uniqueId:"id",//Indicate an unique identifier for each row
        sidePagination: "server",                              // 设置在服务端还是客户端分页
        pagination: true,                                      // 是否显示分页
        pageNumber: 1,                                         // 首页页码，默认为1
        pageSize: 5,                                           // 页面数据条数
        pageList: [5, 10, 20, 30],
        queryParamsType: 'limit',
        clickToSelect: true,
        singleSelect: true,
        showColumns: true,
        queryParams: function (params) {
            return {
                pageSize: params.limit,
                pageIndex: params.offset,
                name: $('#queryName').val()
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
            name: $('#queryName').val()
        }
    }
    $('#tableDemo').bootstrapTable('refresh', params);
});

function getSelections() {
    return $('#tableDemo').bootstrapTable('getSelections', undefined);
}








