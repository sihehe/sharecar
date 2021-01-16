var query = {
    // 品牌
    factoryOwn:'',
    // 价格
    cashPledge:'',
    // 变速箱
    gearbox:'',
    //排量
    displacement:'',
    // 座位数
    seats:'',
    // 燃油类型
    fuelType:'',
    // 颜色
    color:'',
    // 地区
    region:'',
    // 关键字
    keyword:'',
    // 排序字段
    sortFiled:'',
    // 排序规则
    sort:'',
    pageNum:1,
    pageSize:8,
}

var buxian = '不限';

// 点击品牌触发事件
function clickBrance(e) {
    var aList = $('#branceBox').find('a');
    for( var i = 0;i < aList.length-1;i++ ){
        $(aList[i]).removeClass('active');
    }
    $(e).addClass('active');
    var factoryOwn = $(e).text();
    if(factoryOwn != buxian){
        query.factoryOwn = factoryOwn
    }else{
        query.factoryOwn = ''
    }
    getCarList(query);
}

// 点击价格触发事件
function clickPrice(e) {
    var aList = $('#priceBox').find('a');
    for( var i = 0;i < aList.length-1;i++ ){
        $(aList[i]).removeClass('active');
    }
    $(e).addClass('active');
    var price = $(e).text();
    if(price != buxian){
        query.cashPledge = price
    }else{
        query.cashPledge = ''
    }
    getCarList(query);
}

// 更多悬浮事件
function palyerOption(e) {
    $(e).addClass('active');
}
// 更多离焦事件
function displayOption(e) {
    $(e).removeClass('active');
}

// 变速箱选择事件
function gearSelect(e) {
    var gear = $(e).text();
    if(gear != buxian){
        query.gearbox = gear
    }else{
        query.gearbox = ''
    }
    $(e).parent().prev().text(gear);
    $('.js-hover').removeClass('active');
    getCarList(query);
}
// 排量选择事件
function displacementSelect(e) {
    var displacement = $(e).text();
    if(displacement != buxian){
        query.displacement = displacement
    }else{
        query.displacement = ''
    }
    $(e).parent().prev().text(displacement);
    $('.js-hover').removeClass('active');
    getCarList(query);
}
//座位
function seatsSelect(e) {
    var seats = $(e).text();
    if(seats != buxian){
        query.seats = seats
    }else{
        query.seats = ''
    }
    $(e).parent().prev().text(seats);
    $('.js-hover').removeClass('active');
    getCarList(query);
}
//油类型
function fuelTypeSelect(e) {
    var fuelType = $(e).text();
    if(fuelType != buxian){
        query.fuelType = fuelType
    }else{
        query.fuelType = ''
    }
    $(e).parent().prev().text(fuelType);
    $('.js-hover').removeClass('active');
    getCarList(query);
}
//颜色
function colorSelect(e) {
    var color = $(e).text();
    if(color != buxian){
        query.color = color
    }else{
        query.color = ''
    }
    $(e).parent().prev().text(color);
    $('.js-hover').removeClass('active');
    getCarList(query);
}
// 地区
function regionSelect(e) {
    var region = $(e).text();
    if(region != region){
        query.region = region
    }else{
        query.region = ''
    }
    getCarList(query);
}


function getCarList(query) {
    $.ajax({
            url: "carManager/portalCarList",
            type: "POST",
            dataType: 'json',
            contentType: 'application/json;charset=UTF-8',
            data: JSON.stringify(query),
            success:function (res) {
                if(res.status){
                    // 总条数
                    res.data.total;
                    var rows = res.data.rows;
                    // carName: "奔驰测试车辆3"
                    // cashPledge: 2001
                    // fuelType: ""
                    // image: null
                    // region: "郑州"
                    // seats: 5
                    var content = '';
                    for(var i = 0 ; i < rows.length  ;i++){
                        var carName = rows[i].carName;
                        var cashPledge = rows[i].cashPledge;
                        var fuelType = rows[i].fuelType;
                        var image = rows[i].image;
                        var region = rows[i].region;
                        var seats = rows[i].seats;
                        if(image != null && image == ''){
                            // image = '../upload/image/' + image;
                            image = '<img src=../upload/image/'+image+'>';
                        }else{
                            image = '<img src="https://image1.guazistatic.com/qn21011317493007cb1a7b79299f404df82aa351cdd3f8.jpg?imageView2/1/w/287/h/192/q/88">';
                        }
                        content += '<li>\n' +
                            '            <a title='+carName+'\n' +
                            '               href="404.html">\n' + image+
                            '                <h2 class="t">'+carName+'</h2>\n' +
                            '                <div class="t-i">'+region+'<span class="icon-pad">|</span>'+fuelType+'<span class="icon-pad">|</span>'+seats+'座</div>\n' +
                            '                <div class="t-price">\n' +
                            '                    <p>'+cashPledge+'<span>元</span></p>\n' +
                            '                </div>\n' +
                            '            </a>\n' +
                            '        </li>';

                    }
                    $('#carListBox').html(content);
                }

            },
            error:function (res) {
                alert("系统出错");
            }
        })
}

$(function () {
    getCarList(query);
})