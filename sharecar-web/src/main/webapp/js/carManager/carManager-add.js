
function check(){
    var result = $("#addCarForm").valid();
    return result;
}

function initTypeList() {
    $.ajax({
        url: "typeList",
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
                $('#type').html(content);
            }else{
                layer.alert(res.msg);
            }

        },
        error:function (res) {
            layer.alert('系统异常,请重试!');
        }

    });
}
/* 选择盒子触发时间 */
window.onload = function () {


    /* 选择客户绑定时间 */
    //键入字符触发事件:动态获得后台传入select选项数据
    //请求的url
    var selectNameUrl = $("#ownerId").attr("data-selectNameUrl");
    //选择得到搜索栏input，松开按键后触发事件
    $("#ownerId").prev().find('.bs-searchbox').find('input').keyup(function () {
        //键入的值
        var inputManagerName = $('#addCarForm #owner .open input').val();
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
                    $("#ownerId").empty();
                    if (res.rows != null) {
                        Selectmanagers = res.rows;
                        $.each(Selectmanagers, function (i, Selectmanager) {
                            $("#ownerId").append(" <option value=\"" + Selectmanager.customerId + "\">" + Selectmanager.customerName + "</option>");
                        })
                        //必不可少的刷新
                        $("#ownerId").selectpicker('refresh');

                    }
                }
            })
        } else{
            //如果输入的字符为空，清除之前option标签
            $("#ownerId").empty();
            $("#ownerId").selectpicker('refresh');
        }
    });



    $("#addCarForm").validate({
        //debug: true, //调试模式 表单不会被提交
        rules:{
            name:{required: true,rangelength:[3,30]},
            factoryOwn:{ required: true},
            plate:{ required: true},
            ownerId:{ required: true},
            region:{ required: true},
            style:{ required: true},
            type:{ required: true},
            seats:{ required: true},
            color:{ required: true},
            door:{ required: true,digits:true,max:99},
            length:{ required: true,number:true},
            width:{ required: true,number:true},
            hight:{ required: true,number:true},
            weight:{ required: true,number:true},
            engineType:{ required: true},
            gearbox:{ required: true},
            fuelType:{ required: true},
            engineHorsepower:{ required: true},
            displacement:{ required: true}

        },
        messages:{
            name:{required:"不能为空",rangelength:"长度必须是3-30个字符"},
            factoryOwn:{required:"不能为空"},
            plate:{required:"不能为空"},
            ownerId:{required:"不能为空"},
            region:{required:"不能为空"},
            style:{required:"不能为空"},
            type:{required:"不能为空"},
            seats:{required:"不能为空"},
            color:{required:"不能为空"},
            door:{required:"不能为空",digits:"必须为正数",max:"最大不能超过99"},
            length:{required:"不能为空",number:"必须为数字"},
            width:{required:"不能为空",number:"必须为数字"},
            hight:{required:"不能为空",number:"必须为数字"},
            weight:{required:"不能为空",number:"必须为数字"},
            engineType:{required:"不能为空"},
            gearbox:{required:"不能为空"},
            fuelType:{required:"不能为空"},
            engineHorsepower:{required:"不能为空"},
            displacement:{required:"不能为空"}
        }


    });
    initTypeList();
}