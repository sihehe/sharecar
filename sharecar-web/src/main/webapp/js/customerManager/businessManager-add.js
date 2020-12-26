$(function () {
    $("#addCarForm").validate({
        //debug: true, //调试模式 表单不会被提交
        rules:{
            businessName:{required: true,rangelength:[3,30]},
            businessUnit:{ required: true},
            businessTimeOutUnit:{ required: true}
        },
        messages:{
            businessName:{required:"不能为空",rangelength:"长度必须是3-30个字符"},
            businessUnit:{required:"不能为空"},
            businessTimeOutUnit:{required:"不能为空"}
        }


    });
});

function check(){
    var result = $("#addCarForm").valid();
    return result;
}

$('#btn_add').click(function () {
    addRow();
});
function addRow() {
    console.log("准备增加一行");
    var appendRow = ' <tr data-index="0" data-uniqueid="1">\n' +
        '                <td style="text-align: center; vertical-align: middle; "><input  type="text" class="form-control "></td>\n' +
        '                <td style="text-align: center; vertical-align: middle; "><input  type="text" class="form-control "></td>\n' +
        '                <td style="text-align: center; vertical-align: middle; "><input  type="text" class="form-control "></td>\n' +
        '                <td style="text-align: center; vertical-align: middle; width: 250px; ">\n' +
        '                    <button id="delete" class="btn btn-danger" style="margin-left:10px;margin: 10px" onclick="delRow(this)">删除</button>\n' +
        '                </td>\n' +
        '            </tr>';
    $('#appendTbody').append(appendRow);
};
function delRow(obj) {
    $(obj).parent().parent().remove();
}

function getTableData() {
    var arr = new Array();
    var trList = $("#appendTbody").children('tr');
    for (var i = 0; i < trList.length; i++) {
        var json = {};
        var tdArr = trList.eq(i).find('td');
        json.type = $(tdArr[0]).children('input').val();
        json.price = $(tdArr[1]).children('input').val();
        json.outTimePrice = $(tdArr[2]).children('input').val();
        if (json.type == '' || json.price == ''|| json.outTimePrice == '') {
            layer.alert('输入信息不能为空');
            return;
        } else {
            arr.push(json);
        }
    }
    console.log("获取到动态表中用户输入到数据:");
    console.log(arr);
    return arr;
}

function checkTableData() {
    var trList = $("#appendTbody").children('tr');
    for (var i = 0; i < trList.length; i++) {
        var json = {};
        var tdArr = trList.eq(i).find('td');
        json.type = $(tdArr[0]).children('input').val();
        json.price = $(tdArr[1]).children('input').val();
        json.outTimePrice = $(tdArr[2]).children('input').val();
        if (json.type == '' || json.price == ''|| json.outTimePrice == '') {
            return false;
        }
    }
    return true;
}