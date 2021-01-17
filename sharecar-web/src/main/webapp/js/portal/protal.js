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
var pages;
var buxian = '不限';

// 点击品牌触发事件
function clickBrance(e) {
    var aList = $('#branceBox').find('a');
    for( var i = 0;i < aList.length;i++ ){
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
    for( var i = 0;i < aList.length;i++ ){
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

// 数据请求
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
                    var total = res.data.total;
                    // 获取当前是多少页 总共多少页
                    var pageNum = query.pageNum;
                    var size = query.pageSize;
                    if( total % size == 0){
                        var totalPageNum = total / size;
                    }else{
                        var totalPageNum = Math.floor(total / size) + 1;
                    }
                    pages = totalPageNum;
                    var prev = "";
                    if(pageNum != 1){
                        prev = ' <li onclick="clickIndex(this)"><a href="javascript:void(0);" class="prev"><span>首页</span><em>&gt;</em></a></li>\n' +
                               '<li onclick="clickPagePrev(this)"><a href="javascript:void(0);" class="prev"><span>上一页</span><em>&gt;</em></a></li>';
                    }

                    var max;
                    var flag = false;
                    if(totalPageNum > parseInt(pageNum) +5){
                        max = 5;
                        flag = true;
                    }else{
                        max = totalPageNum
                    }
                    var text = "";
                    for(var i = 0; i < max;i++){
                        if(i == 0){
                            text += '<li onclick="clickPageNum(this)" class="link-on"><a ><span>'+(parseInt(pageNum) + parseInt(i)) +'</span></a></li>';
                        }else{
                            if( (parseInt(pageNum) + parseInt(i)) <= totalPageNum){
                                text += '<li onclick="clickPageNum(this)"><a href="javascript:void(0);"><span>'+(parseInt(pageNum) +  parseInt(i))+'</span></a></li>';
                            }
                        }
                    }

                    var next = "";
                    if(pageNum != totalPageNum){
                        if(flag){
                            next = '<li class="point"><a><span>...</span></a></li>\n' +
                                '            <li onclick="clickPageNum(this)"><a href="javascript:void(0);"><span>'+totalPageNum+'</span></a></li>\n' +
                                '            <li onclick="clickPageNext(this)"><a href="javascript:void(0);" class="next"><span>下一页</span><em>&gt;</em></a></li>';
                        }else{
                            next = '<li onclick="clickPageNext(this)"><a href="javascript:void(0);" class="next"><span>下一页</span><em>&gt;</em></a></li>';
                        }

                    }else{
                        text = "";
                        for(var i = 0; i < max;i++){
                            if(i == (max -1)){
                                text += '<li onclick="clickPageNum(this)" class="link-on"><a ><span>'+parseInt(pageNum)  +'</span></a></li>';
                            }else{
                                if((parseInt(pageNum) - parseInt(max-1-i)) > 0){
                                    text += '<li onclick="clickPageNum(this)"><a href="javascript:void(0);"><span>'+(parseInt(pageNum) - parseInt(max-1-i))+'</span></a></li>';
                                }
                            }
                        }
                        // 最后一页
                         next = "";
                    }
                    var pageContent = prev + text + next;
                    $('#pageBox').html(pageContent);

                    var rows = res.data.rows;
                    // carName: "奔驰测试车辆3"
                    // cashPledge: 2001
                    // fuelType: ""
                    // image: null
                    // region: "郑州"
                    // seats: 5
                    if(rows.length == 0){
                        var content = '  <li style="width:100%;height:100%;text-align: center">\n' +
                            '            <h3>抱歉没有符合条件的车辆</h3>\n' +
                            '        </li>';
                        $('#carListBox').html(content);
                        return
                    }
                    var content = '';
                    for(var i = 0 ; i < rows.length  ;i++){
                        var carName = rows[i].carName;
                        var cashPledge = rows[i].cashPledge;
                        var fuelType = rows[i].fuelType;
                        var image = rows[i].image;
                        var region = rows[i].region;
                        var seats = rows[i].seats;
                        var carId = rows[i].carId;
                        if(image != null && image != ''){
                            // image = '../upload/image/' + image;
                            image = '<img src="upload/image/'+image+'">';
                        }else{
                            image = '<img src="https://image1.guazistatic.com/qn21011317493007cb1a7b79299f404df82aa351cdd3f8.jpg?imageView2/1/w/287/h/192/q/88">';
                        }
                        content += '<li>\n' +
                            '            <a title='+carName+'\n' +
                            '               href="carDetail?id='+carId+'">\n' + image+
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

// 分页操作
function clickPageNum(e){
    var liList = $('#pageBox').find('li');
    for(var i = 0; i<liList.length;i++){
        $(liList[i]).removeClass('link-on');
    }
    $(e).addClass('link-on');
    var a = $(e).find('a');
    var pageNum = $(a).text();
    query.pageNum = pageNum;
    getCarList(query);
}
function clickIndex(e){
    query.pageNum = 1;
    getCarList(query);
}
function clickPageNext(){
   var pageNum = query.pageNum ;
    pageNum++;
    if(pageNum <= pages){
        query.pageNum = pageNum;
        getCarList(query);
    }
}
function clickPagePrev(){
    var pageNum = query.pageNum ;
    pageNum--;
    if(pageNum > 0){
        query.pageNum = pageNum;
        getCarList(query);
    }
}


function searchBtnClick(){
    var key = $('#keyword').val();
    query.keyword = key;
    getCarList(query);
}

$(function () {
    getCarList(query);
})
