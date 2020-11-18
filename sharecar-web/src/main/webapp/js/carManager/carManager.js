$(function () {
    init();
    initSelectStyleList();
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
                    data: {
                        name: $('#queryName').val(),
                        style: $('#queryStyle').val()
                    }
                }
            }
            $('#tableDemo').bootstrapTable('refresh', params);
        }

    })
}


function init() {
    console.log("初始化表格");

    var columns = [{
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
        },
        {
            field: 'operate',
            title: '操作',
            align: 'center',
            valign: 'middle',
            width: 200,
            events: {
                'click #edit': function (e, value, row, index) {
                    $('#id').val(row.url);
                    $('#name').val(row.name);
                    $('#style').val(row.style);
                    $('#region').val(row.region);
                },
                'click #delete': function (e, value, row, index) {
                    deleteInfo(row);
                }
            },
            formatter: function (value, row, index) {
                var result = "";
                result += '<button id="edit" class="btn btn-info" data-toggle="modal" data-target="#editModal">编辑</button>';
                result += '<button id="delete" class="btn btn-danger" style="margin-left:10px;">删除</button>';
                return result;
            }
        }];

    $('#tableDemo').bootstrapTable({
        url: "carList",
        method: "post",                                        // 请求类型
        contentType: "application/json",      // post请求必须要有，否则后台接受不到参数
        height: tableHeight(),//高度调整
        width: 600,//高度调整
        toolbar: '#toolbar',
        striped: true,
        dataField: "res",
        showRefresh: false,//刷新按钮
        showColumns: true,
        checkboxHeader: false,
        checkboxEnabled: true,
        checkbox: true,
        clickToSelect: true,//是否启用点击选中行
        toolbarAlign: 'right',
        buttonsAlign: 'right',//按钮对齐方式
        //sidePagination: "server",                              // 设置在服务端还是客户端分页
        pagination: true,                                      // 是否显示分页
        pageNumber: 1,                                         // 首页页码，默认为1
        pageSize: 5,                                           // 页面数据条数
        pageList: [5, 10, 20, 30],
        queryParamsType: 'limit',
        queryParams: function (params) {
            return {
                pageSize: params.limit,
                pageIndex: params.offset,
                data: {
                    name: null,
                    style: null
                }
                // name: $('queryName').val(),
                // style: $('queryStyle').val()
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
            data: {
                name: $('#queryName').val(),
                style: $('#queryStyle').val()
            }
        }
    }
    $('#tableDemo').bootstrapTable('refresh', params);
})

/*初始化风格列表*/
function initSelectStyleList() {
    $.ajax({
        url: 'styleList',
        type: 'post',
        success: function (data) {
            if (data.status) {
                console.log(data.data);
                var content = '';
                for (element in data.data) {
                    console.log(data.data[element]);
                    content += '<option>' + data.data[element] + '</option>';
                }
                console.log(content);
                $('#queryStyle').html(content);
                $('#addStyle').html(content);
            }
        }
    })
}

$('#btn_add').click(function () {

    var index = layer.open({
        type: 2,
        title: '添加车辆信息',
        area: ['870px', '650px'],
        maxmin: true, //打开全屏
        resize: true, //开启拉伸
        scrollbar: false, //屏蔽滚动
        btnAlign: 'c', //按钮居中对齐
        btn: ['确定', '取消'],
        btn1: function(index,layero){
            console.log(index);
            console.log(layero);
           layer.msg('确定按钮被点击');
        },
        btn2: function(index,layero){
            console.log(index);
            console.log(layero);
            layer.msg('取消按钮被点击');
        },
        content: "carManager-add",
        success: function () {
            layer.msg("成功弹出");
        }
    });
    layer.full(index);

})






