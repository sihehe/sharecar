var typeList;
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
    initTypeList();
});

//  初始化类型列表
function initTypeList() {
    $.ajax({
        url: "../carManager/typeList",
        type: "POST",
        dataType:'json',
        contentType:'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                //    给弹出页面赋值
                var content = '<option ></option>';
                for (element in res.data) {
                    var typeName = res.data[element].typeName;
                    var typeId = res.data[element].typeId;
                    content += '<option value='+typeId+'>' + typeName + '</option>';
                }
                console.log(content);
                typeList = content;
            }else{
                layer.alert(res.msg);
            }
        },
        error:function (res) {
            layer.alert('系统异常,请重试!');
        }
    });
}

function check(){
    var result = $("#addCarForm").valid();
    return result;
}

function initBusiness(id) {
    $.ajax({
        url: "businessDetails?businessId="+id,
        type: "POST",
        dataType:'json',
        contentType:'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                //    给弹出页面赋值
                $("#businessName").val(res.data.businessName);
                $("#businessUnit").val(res.data.businessUnit);
                $("#businessTimeOutUnit").val(res.data.timeOutUnit);
                var arr = res.data.priceDetailsDTOList;
                for (var i = 0; i < arr.length; i++) {
                   var carType = arr[i].carTypeId;
                    var price = arr[i].price;
                    var timeOutPrice = arr[i].timeOutPrice;
                    var cashPledge = arr[i].cashPledge;
                    var row = '<tr data-index="0" data-uniqueid="1">\n' +
                        '                 <td style="text-align: center; vertical-align: middle; "><select class="form-control" id="type'+i+'" disabled>'+typeList+'</select></td>\n' +
                        '                 <td style="text-align: center; vertical-align: middle; ">'+price+'</td>\n' +
                        '                 <td style="text-align: center; vertical-align: middle; ">'+timeOutPrice+'</td>\n' +
                        '                 <td style="text-align: center; vertical-align: middle; ">'+cashPledge+'</td>\n' +
                        '             </tr>';
                    $('#appendTbody').append(row);
                    $('#'+'type'+i).val(carType);
                }
            }else{
                layer.alert(res.msg);
            }

        },
        error:function (res) {
            layer.alert('系统异常,请重试!');
        }

    });

}

