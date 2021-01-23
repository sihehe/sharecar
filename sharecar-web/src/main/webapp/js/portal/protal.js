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
    province:'',
    city:'',
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
    var province = $(e).text();
    if(province != buxian){
        query.province = province
    }else{
        query.province = ''
    }
    $(e).parent().prev().text(province);
    $('.js-hover').removeClass('active');
    getCarList(query);
    var ofValue = $(e).attr('ofValue');
    provincechange(ofValue);
}

// 城市
function citySelect(e) {
    var city = $(e).text();
    if(city != buxian){
        query.city = city
    }else{
        query.city = ''
    }
    $(e).parent().prev().text(city);
    $('.js-hover').removeClass('active');
    getCarList(query);
    var ofValue = $(e).attr('ofValue');
    provincechange(ofValue);
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


var provinces = ['不限','北京市','上海市','天津市','重庆市','河北省','山西省','内蒙古省','辽宁省','吉林省','黑龙江省','江苏省','浙江省','安徽省','福建省','江西省','山东省','河南省','湖北省','湖南省','广东省','广西省','海南省','四川省','贵州省','云南省','西藏省','陕西省','甘肃省','宁夏省','青海省','新疆省','香港','澳门','台湾'];
var citys = [['不限'],
    ["东城区", "西城区", "崇文区", "宣武区", "朝阳区", "丰台区", "石景山区", "海淀区", "门头沟区", "房山区", "通州区", "顺义区", "昌平区", "大兴区", "怀柔区", "平谷区", "密云县", "延庆县"],
    ["黄浦区", "卢湾区", "徐汇区", "长宁区", "静安区", "普陀区", "虹口区", "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "南汇区", "奉贤区", "崇明县"],
    ["和平区", "河东区", "河西区", "南开区", "河北区", "红桥区", "塘沽区", "汉沽区", "大港区", "东丽区", "西青区", "津南区", "北辰区", "武清区", "宝坻区", "宁河县", "静海县", "蓟县"],
    ["万州区", "涪陵区", "渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区", "万盛区", "双桥区", "渝北区", "巴南区", "黔江区", "长寿区", "綦江县", "潼南县", "铜梁县", "大足县", "荣昌县", "璧山县", "梁平县", "城口县", "丰都县", "垫江县", "武隆县", "忠县", "开县", "云阳县", "奉节县", "巫山县", "巫溪县", "石柱土家族自治县", "秀山土家族苗族自治县", "酉阳土家族苗族自治县", "彭水苗族土家族自治县", "江津市", "合川市", "永川市", "南川市"],
    ["石家庄市","张家口市","承德市","秦皇岛市","唐山市","廊坊市","保定市","衡水市","沧州市","邢台市","邯郸市"],
    ["太原市","朔州市","大同市","阳泉市","长治市","晋城市","忻州市","晋中市","临汾市","吕梁市","运城市"],
    ["呼和浩特市","包头市","乌海市","赤峰市","通辽市","呼伦贝尔市","鄂尔多斯市","乌兰察布市","巴彦淖尔市","兴安盟","锡林郭勒盟","阿拉善盟"],
    ["沈阳市","朝阳市","阜新市","铁岭市","抚顺市","本溪市","辽阳市","鞍山市","丹东市","大连市","营口市","盘锦市","锦州市","葫芦岛市"],
    ["长春市","白城市","松原市","吉林市","四平市","辽源市","通化市","白山市","延边州"],
    ["哈尔滨市","齐齐哈尔市","七台河市","黑河市","大庆市","鹤岗市","伊春市","佳木斯市","双鸭山市","鸡西市","牡丹江市","绥化市","大兴安岭地区"],
    ["南京市","徐州市","连云港市","宿迁市","淮安市","盐城市","扬州市","泰州市","南通市","镇江市","常州市","无锡市","苏州市"],
    ["杭州市","湖州市","嘉兴市","舟山市","宁波市","绍兴市","衢州市","金华市","台州市","温州市","丽水市"],
    ["合肥市","宿州市","淮北市","亳州市","阜阳市","蚌埠市","淮南市","滁州市","马鞍山市","芜湖市","铜陵市","安庆市","黄山市","六安市","巢湖市","池州市","宣城市"],
    ["福州市","南平市","莆田市","三明市","泉州市","厦门市","漳州市","龙岩市","宁德市"],
    ["南昌市","九江市","景德镇市","鹰潭市","新余市","萍乡市","赣州市","上饶市","抚州市","宜春市","吉安市"],
    ["济南市","青岛市","聊城市","德州市","东营市","淄博市","潍坊市","烟台市","威海市","日照市","临沂市","枣庄市","济宁市","泰安市","莱芜市","滨州市","菏泽市"],
    ["郑州市","开封市","三门峡市","洛阳市","焦作市","新乡市","鹤壁市","安阳市","濮阳市","商丘市","许昌市","漯河市","平顶山市","南阳市","信阳市","周口市","驻马店市","济源市"],
    ["武汉市","十堰市","襄樊市","荆门市","孝感市","黄冈市","鄂州市","黄石市","咸宁市","荆州市","宜昌市","随州市","省直辖县级行政单位","恩施州"],
    ["长沙市","张家界市","常德市","益阳市","岳阳市","株洲市","湘潭市","衡阳市","郴州市","永州市","邵阳市","怀化市","娄底市","湘西州"],
    ["广州市","深圳市","清远市","韶关市","河源市","梅州市","潮州市","汕头市","揭阳市","汕尾市","惠州市","东莞市","珠海市","中山市","江门市","佛山市","肇庆市","云浮市","阳江市","茂名市","湛江市"],
    ["南宁市","桂林市","柳州市","梧州市","贵港市","玉林市","钦州市","北海市","防城港市","崇左市","百色市","河池市","来宾市","贺州市"],
    ["海口市","三亚市","省直辖县级行政单位"],
    ["成都市","广元市","绵阳市","德阳市","南充市","广安市","遂宁市","内江市","乐山市","自贡市","泸州市","宜宾市","攀枝花市","巴中市","达州市","资阳市","眉山市","雅安市","阿坝州","甘孜州","凉山州"],
    ["贵阳市","六盘水市","遵义市","安顺市","毕节地区","铜仁地区","黔东南州","黔南州","黔西南州"],
    ["昆明市","曲靖市","玉溪市","保山市","昭通市","丽江市","思茅市","临沧市","德宏州","怒江州","迪庆州","大理州","楚雄州","红河州","文山州","西双版纳州"],
    ["拉萨市","那曲地区","昌都地区","林芝地区","山南地区","日喀则地区","阿里地区"],
    ["西安市","延安市","铜川市","渭南市","咸阳市","宝鸡市","汉中市","榆林市","安康市","商洛市"],
    ["兰州市","嘉峪关市","白银市","天水市","武威市","酒泉市","张掖市","庆阳市","平凉市","定西市","陇南市","临夏州","甘南州"],
    ["西宁市","海东地区","海北州","海南州","黄南州","果洛州","玉树州","海西州"],
    ["银川市","石嘴山市","吴忠市","固原市","中卫市"],
    ["乌鲁木齐市","克拉玛依市","自治区直辖县级行政单位","喀什地区","阿克苏地区","和田地区","吐鲁番地区","哈密地区","克孜勒苏柯州","博尔塔拉州","昌吉州","巴音郭楞州","伊犁州","塔城地区","阿勒泰地区"],
    ["香港"],
    ["澳门"],
    ["台北市","高雄市","台中市","花莲市","基隆市","嘉义市","金门市","连江市","苗栗市","南投市","澎湖市","屏东市","台东市","台南市","桃园市","新竹市","宜兰市","云林市","彰化市"]];

function init(){
    var content1 = "";
    for(var i=0;i<provinces.length;i++){
        content1 += '<a onclick="regionSelect(this)" ofValue="'+i+'">'+provinces[i]+'</a>';
    }
    $('#province').html(content1);
}
function provincechange(num){
    var citystemp=citys[num];
    var content1 = "";
    for(var i=0;i<citystemp.length;i++){
        content1 += '<a href="javascript:void(0);" onclick="citySelect(this)">'+citystemp[i]+'</a>';
    }
    $('#city').html(content1);
}


$(function () {
    getCarList(query);
    init();
})
