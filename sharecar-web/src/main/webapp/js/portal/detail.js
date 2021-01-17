var car = {
    cashPledge:'',
    color:'',
    descr:'',
    displacement:'',
    door:'',
    engineHorsepower:'',
    engineType:'',
    factoryOwn:'',
    fuelType:'',
    gearbox:'',
    hight:'',
    id:'',
    imageInfo:'',
    isDel:'',
    length:'',
    name:'',
    ownerId:'',
    plate:'',
    region:'',
    seats:'',
    style:'',
    typeId:'',
    typeName:'',
    weight:'',
    width:''
}
$(function () {
    var id = getQueryVariable('id');
    getDetail(id);
})

// 绑定数据
function bindData() {
    var imageList = "";
    if(car.imageInfo != '' && car.imageInfo != null){
        var mainImage =  '<img src="upload/image/'+car.imageInfo.split(",")[0]+'">';
        $('#mainImage').html(mainImage);
        var imageArr = car.imageInfo.split(",");
        imageList ='  <ul class="carpic-big clearfix"  >';
        for(var i=0;i<imageArr.length;i++){
            imageList += '<li class="fl js-bigpic"> <img src="upload/image/'+imageArr[i]+'"></li>';
        }
        imageList += ' </ul>';
        $('#pic').html(imageList);
    }
   $('#carName').text(car.name);
   $('#name').text(car.name);
   $('#region').text(car.region);
   $('#typeName').text(car.typeName);
   $('#typeName2').text(car.typeName);
   $('#region2').text(car.region);
   $('#cashPledge').text(car.cashPledge);

   $('#plate').text(car.plate);
   $('#plate2').text(car.plate);
   $('#displacement').text(car.displacement);
   $('#displacement2').text(car.displacement);
   $('#engineType').text(car.engineType);
   $('#engineType2').text(car.engineType);
   $('#color').text(car.color);

   $('#factoryOwn').text(car.factoryOwn);
   $('#style').text(car.style);
   $('#fadongji').text(car.displacement+'L/'+car.engineHorsepower+'马力');
   $('#engineType3').text(car.engineType);
   $('#jiegou').text(car.door+'门'+car.seats+'座');
   $('#changkuan').text(car.length+'/'+car.width+'/'+car.hight);
   $('#displacement3').text(car.displacement);
   $('#engineHorsepower').text(car.engineHorsepower);
   $('#engineType4').text(car.engineType);
   $('#fuelType').text(car.fuelType);

}


//获取车辆详情信息
function getDetail(id) {
    $.ajax({
        url: "carManager/portalCarDetail?id="+id,
        type: "GET",
        dataType: 'json',
        contentType: 'application/json;charset=UTF-8',
        success:function (res) {
            if(res.status){
                 car = res.data;
                bindData();
            }
        },
        error:function (res) {
            alert("系统出错");
        }
    })
}

// 从地址栏中获取参数方法
function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}