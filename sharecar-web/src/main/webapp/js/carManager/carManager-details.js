$(function () {
    $("#addCarForm").validate({
        //debug: true, //调试模式 表单不会被提交
        rules:{
            name:{required: true,rangelength:[3,30]},
            factoryOwn:{ required: true},
            plate:{ required: true},
            ownerId:{ required: true},
            region:{ required: true},
            style:{ required: true},
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
});

function check(){
    var result = $("#addCarForm").valid();
    return result;
}

function initCar(id) {
    $.ajax({
        url: "carDetails?id="+id,
        type: "POST",
        dataType:'json',
        contentType:'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                //    给弹出页面赋值
                $("#name").val(res.data.name);
                $("#factoryOwn").val(res.data.factoryOwn);
                $("#plate").val(res.data.plate);
                $("#ownerId").val(res.data.ownerId);
                $("#region").val(res.data.region);
                $("#style").val(res.data.style);
                $("#seats").val(res.data.seats);
                $("#color").val(res.data.color);
                $("#door").val(res.data.door);
                $("#length").val(res.data.length);
                $("#width").val(res.data.width);
                $("#hight").val(res.data.hight);
                $("#weight").val(res.data.weight);
                $("#engineType").val(res.data.engineType);
                $("#gearbox").val(res.data.gearbox);
                $("#fuelType").val(res.data.fuelType);
                $("#engineHorsepower").val(res.data.engineHorsepower);
                $("#displacement").val(res.data.displacement);
            }else{
                layer.alert(res.msg);
            }

        },
        error:function (res) {
            layer.alert('系统异常,请重试!');
        }

    });

}

