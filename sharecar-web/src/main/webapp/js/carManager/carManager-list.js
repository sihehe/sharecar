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
            checkbox: true,
        },
        {
        field: 'id',
        title: '主键',
        align: "center",
        halign: "center",
        valign: 'middle',
        sortable: true
    },
        {
            field: 'typeId',
            title: '类型Id',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'name',
            title: '名称',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'factoryOwn',
            title: '厂商',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'style',
            title: '风格',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'engineType',
            title: '发动机类型',
            align: "center",
            halign: "center",
            valign: 'middle'
        },
        {
            field: 'region',
            title: '地区',
            align: "center",
            halign: "center",
            valign: 'middle'
        }];

    $('#tableDemo').bootstrapTable({
        url: "carList",
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








