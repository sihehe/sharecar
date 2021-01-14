/* 选择盒子触发时间 */
window.onload = function () {
    initTypeList();
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
                $("#cashPledge").val(res.data.cashPledge);
                $("#descr").val(res.data.descr);
                $("#style").val(res.data.style);
                $("#type").val(res.data.typeId);
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
                var iamgeStr = res.data.imageInfo;
                if(iamgeStr != null && iamgeStr != ''){
                    var imageNameArr = iamgeStr.split(',');
                    var context = '';
                    for(var i = 0; i < imageNameArr.length; i++){
                        var element = imageNameArr[i];
                        var image = '../upload/image/'+element;
                        if(i == 0){
                            context += '<div class="item active">' +
                                '<img alt="image" class="img-responsive" style="width:1000;height: 563 " src='+image+'>' +
                                '</div>';
                        }else{
                            context += '<div class="item">' +
                                '<img alt="image" class="img-responsive" style="width:1000;height: 563 " src='+image+'>' +
                                '</div>';
                        }
                    }
                    $('.carousel-inner').html(context);
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
