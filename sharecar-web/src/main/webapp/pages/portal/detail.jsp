<%--
  Created by IntelliJ IDEA.
  User: 司会军
  Date: 2021/1/17
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>哈哈共享汽车租赁--汽车详情</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" media="screen"/>
    <link href="${pageContext.request.contextPath}/js/portal/detail.css" rel="stylesheet">
</head>
<!-- 加载js/css-->
<%--<script type="text/javascript" src="//cli-sta.guazistatic.com/c2c_web/base.84c6ec1831ce28e4c7a5.js"></script>
<script type="text/javascript" src="//cli-sta.guazistatic.com/c2c_web/detail_v4.5d908af3a4c5d35cb1fa.js"></script>--%>
<body class="detail">


<!-- 头部 -->
<input type="hidden" id="skipKindNew" value="0">
<!--<input type="hidden" id="firstSubLogin" value="0">-->
<input type="hidden" id="clueData" data-puid="3013499160" data-city-id="155">

<!-- 头部吸顶菜单 s -->
<div id="jstop" class="j-header header-2 ">
    <div class="header">
        <div class="city">
            <!-- 鼠标悬停 .city添加class名active -->
            <p class="city-curr">
                <a href="portal">首页</a><%--<i></i>--%>
            </p>

        </div>

        <div class="uc js-uc js-uc-new" data-gzlog="tracking_type=click&amp;eventid=1015123400000003">
            <a href="javascript:" class="uc-my" id="js-login-new">登录</a>
            <a href="javascript:" class="uc-my" id="user" style="display:none"></a>
            <div class="uc-app" style="display:none" id="cancel">
                <a href="personInfo" class="js-logout js-loginElem4">个人设置</a>
                <a href="javascript:;" class="js-logout js-loginElem4" id="logout">退出</a>
                <i></i>
            </div>
        </div>
        <div class="header-phone">
            <!--电话判断，当页面处于汽车金融则显示汽车金融电话  -->
            热线电话 400-000-0000
        </div>
    </div>
</div>
<!-- 头部吸顶菜单 e -->

<!-- 登录弹层  s -->
<!-- 登录弹框  s -->
<!-- 使用时class加show -->
<div class="pop-box pop-login" id="login1">
    <%--<form action="https://www.guazi.com/passport/login" method="post" onsubmit="return window.web_sso_login_check()"--%>
    <form onsubmit="return false" action="##" method="post">
        <div class="pop-close" id="closeLogin1"></div>
        <p class="pop-tit js-logintitle">哈哈共享汽车租赁</p>
        <ul class="phone-login">
            <li>
                <p class="phone-login-tit">手机号码</p>
                <input id="phone" name="phone" class="phone-login-input js-phoneNum1" placeholder="">
            </li>
            <li>
                <p class="phone-login-tit">&emsp;验证码</p>
                <input id="code" name="code" class="phone-login-input phone-login-code js-code1" placeholder="">
                <button class="get-code">获取验证码</button>
            </li>
        </ul>
        <p class="p-error" id="loginError1"></p>
        <button class="sub-btn  js-checkcode" id="login">登录</button>
        <p class="free-phone">免费咨询400-000-0000</p>
        <p class="agree-text">登录即视为同意<a
                href="https://image.guazistatic.com/gz01190926/17/21/21c7f57e0f6b77e4b7dd3b608e44d04f.pdf"
                data-gzlog="tracking_type=click&amp;eventid=92392518" target="_blank">《用户使用协议》</a>及<a
                href="https://image1.guazistatic.com/qn201030102530dbb0915e8dd42688d8191b3a5f60b3e2.pdf"
                data-gzlog="tracking_type=click&amp;eventid=92392518" target="_blank">《隐私权条款》</a></p>

        <%-- <input type="hidden" name="source" value="2">
         <input type="hidden" name="staticPage" value="https://www.guazi.com/ssoJump.php">
         <input type="hidden" name="callBack" value="parent.web_login_callback">--%>
    </form>
</div>
<iframe name="guazi_login" style="display: none;"></iframe>

<!-- 使用时class加active -->
<div class="pop-mask "></div>
<!-- 登录弹层  e -->
<!-- 登录弹框  e -->

<input type="hidden" class="js-loandata" source-id="13788103" city-domain="ty" user-city-id="13">


<div class="center js-center detail">

    <div class="placeon clearfix">
        <div class="left-nav" style="display: none;">
            <a rel="nofollow" href="//www.guazi.com/ty/"
               data-gzlog="tracking_type=click&eventid=0220050000099000">首页</a>&gt;
            <a href="//www.guazi.com/ty/buy/" data-gzlog="tracking_type=click&eventid=0220050000099000">太原二手车</a>&gt;
            <a href="//www.guazi.com/ty/ford/" data-gzlog="tracking_type=click&eventid=0220050000099000">太原福特二手车</a>&gt;
            <a href="//www.guazi.com/ty/fute-fukesi/" data-gzlog="tracking_type=click&eventid=0220050000099000">太原二手福特福克斯</a>&gt;
            福特 福克斯 2011款 两厢 1.8L 自动时尚型
        </div>
    </div>

    <div class="infor-main clearfix service-open">
        <!--    详情页左上方的图片-->
        <div class="product-detail" id="page-slide" data-group-count="4">
            <div class="bigimgbox">
                <ul class="det-picside js-picside">
                    <li class="js-bigpic" data-role="img" data-index="0" style="display: list-item;" id="mainImage">
                        <img src="https://image1.guazistatic.com/qn21011317493007cb1a7b79299f404df82aa351cdd3f8.jpg?imageView2/1/w/600/h/400/q/88">
                    </li>
                </ul>
            </div>
        </div>
        <!--    详情页左上方的图片-->

        <!--    详情页右上方车源基本信息 -->
        <div class="product-textbox">
            <h1 class="titlebox" id="carName">
                xxx车名称
            </h1>

            <ul class="assort clearfix">
                <li class="one"><span id="region">xxxx</span>地区</li>
                <li class="two"><span id="displacement">1.8L</span>排量</li>
                <li class="three"><span id="engineType">自动</span>变速箱</li>
                <li class="four"><span id="color">白色</span>颜色</li>
                <li class="last"><span id="typeName">豪华型</span>类评</li>
            </ul>


            <div class="pricebox js-disprice">
                <i class="ico-type"></i>
                <!-- 新版价格样式 start -->
                <div class="price-title">押金</div>
                <!--            右侧结构-->
                <!--            价格-->
                <div class="price-main">
                    <span class="price-num" id="cashPledge">xxxx</span><span class="price-num">元</span>
                    <!-- 金融-->
                </div>
                <!-- 新版价格样式 end -->
            </div>


            <div class="service-protect-vip">
                <div class="service-protect-title clearfix">
                    <i class="text-service">售后保障</i>
                </div>
                <ul class="service-protect-list clearfix">
                    <li>
                        <i class="icon-two"></i>
                        <span>无忧退车</span>
                    </li>
                    <li>
                        <i class="icon-30xiu-not"></i>
                        <span>支持保修</span>
                    </li>
                </ul>
            </div>


            <div class="btnbox clearfix">
                <a rel="nofollow" href="javascript:" class="orgbtn js-apt"
                   data-gzlog="tracking_type=click&eventid=0460310000000074&position=1&carid=106211604" id="myBook">我要租车
                </a>
                <a href="javascript:;" data-gzlog="tracking_type=click&eventid=92747112&position=1&carid=106211604"
                   class="freephonebtn js-freePhone" id="freeAsk">免费咨询</a>
            </div>
        </div>
        <!--    详情页右上方车源基本信息-->
    </div>
    <div class="car-picture-infor">
        <h2 class="titlediv"><span><span id="name">xxx车辆名称</span>&nbsp;基本信息</span></h2>
        <ul class="basic-eleven clearfix">
            <li class="one">
                <div class="typebox" id="plate2">豫A</div>
                牌照
            </li>
            <li class="two">
                <div class="typebox" id="displacement2">1.2L</div>
                排量
            </li>
            <li class="three">
                <div class="typebox" id="region2">河南郑州</div>
                地区
            </li>

            <li class="five">
                <div class="typebox" id="engineType2">手动</div>
                变速箱
            </li>
            <li class="six">
                <div class="typebox" id="typeName2">豪华</div>
                类型
            </li>

            <li class="eight">
                <div class="typebox">到店服务</div>
                看车方式
            </li>

        </ul>
        <div class="detailcontent clearfix js-detailcontent active">

            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="param-table
            one">
                <tbody>
                <tr>
                    <th colspan="2">基本参数</th>
                </tr>
                <tr>
                    <td width="50%" class="td1">厂商</td>
                    <td width="50%" class="td2" id="factoryOwn">上汽大众</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">风格</td>
                    <td width="50%" class="td2" id="style">经济</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">发动机</td>
                    <td width="50%" class="td2" id="fadongji">1.6L/105马力/L4</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">变速箱</td>
                    <td width="50%" class="td2" id="engineType3">自动</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">车身结构</td>
                    <td width="50%" class="td2" id="jiegou">4门5座</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">长/宽/高(mm)</td>
                    <td width="50%" class="td2" id="changkuan">3916/1650/1465</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">整备质量(kg)</td>
                    <td width="50%" class="td2" id="weight">1143</td>
                </tr>

                </tbody>
            </table>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="param-table
            ">
                <tbody>
                <tr>
                    <th colspan="2">发动机参数</th>
                </tr>
                <tr>
                    <td width="50%" class="td1">排量(L)</td>
                    <td width="50%" class="td2" id="displacement3">1.6</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">马力</td>
                    <td width="50%" class="td2" id="engineHorsepower">120</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">燃料类型</td>
                    <td width="50%" class="td2" id="engineType4">汽油</td>
                </tr>
                <tr>
                    <td width="50%" class="td1">燃油标号</td>
                    <td width="50%" class="td2" id="fuelType">92号</td>
                </tr>

                </tbody>
            </table>
            <div class="text-ins">
                以上参配信息仅供参考，实际参数配置以售卖车辆为准
                <!--        -->    </div>
        </div>
    </div>
    <div class="car-picture-infor">
        <h2 class="titlediv"><span>xxx车辆名称&nbsp;车辆图片</span></h2>
        <div id="pic">
            <ul class="carpic-big clearfix">
                <li class="fl js-bigpic" data-index="0"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=0"><img
                        src="https://image1.guazistatic.com/qn21011317493007cb1a7b79299f404df82aa351cdd3f8.jpg?imageView2/1/w/600/h/400/q/88">
                </li>
                <li class="fl js-bigpic" data-index="1"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=1"><img
                        src="https://image1.guazistatic.com/qn21011317493231e0fb2ea6a51f848efad80d2f7eb3ce.jpg?imageView2/1/w/600/h/400/q/88">
                </li>
                <li class="fl js-bigpic" data-index="3"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=2"><img
                        src="https://image1.guazistatic.com/qn210113174933b02936d7bc14f723931045ff8ef4dd37.jpg?imageView2/1/w/600/h/400/q/88">
                </li>
                <li class="fl js-bigpic" data-index="5"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=3"><img
                        src="https://image1.guazistatic.com/qn21011317493522f5723886715a4d8a0b7341aea1b497.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

            </ul>
            <ul class="carpic-small clearfix">
                <li class="js-bigpic" data-index="2"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=4">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn21011317493135fe8ee9f7db1ad21f6ca3983edf53bc.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
                <li class="js-bigpic" data-index="4"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=5">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn210113174932392720cf3e30e0bff7aaf33edccceb1b.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
                <li class="js-bigpic" data-index="6"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=6">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn210113174934497f1fede18c71fe577a2f3512659ea0.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
                <li class="last js-bigpic" data-index="0"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099027&amp;position=7">
                    <div class="img-border"><img class="blur"
                                                 src="https://image1.guazistatic.com/qn21011317493007cb1a7b79299f404df82aa351cdd3f8.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                    <a class="morepic-text">查看10张<span class="f18">外观图</span></a></li>

            </ul>
            <ul class="carpic-big clearfix">
                <li class="fl js-bigpic" data-index="12"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=0"><img
                        src="https://image1.guazistatic.com/qn210113173951f3d8ef17a356c9b3aa7f5395ae685f7b.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

                <li class="fl js-bigpic" data-index="14"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=1"><img
                        src="https://image1.guazistatic.com/qn210113173951b87fa6b5248d4c224a42250d6666f8f4.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

                <li class="fl js-bigpic  ddd2" data-index="19"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=2"><img
                        src="https://image1.guazistatic.com/qn210113173951c445adc6e623489496761c9efbcd91f2.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

                <li class="fr js-bigpic  ddd3" data-index="20"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=3"><img
                        src="https://image1.guazistatic.com/qn2101131739513f8526b336ce8c6cec9026276d6b9ec3.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

                <li class="fl js-bigpic" data-index="21"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=4"><img
                        src="https://image1.guazistatic.com/qn210113173951580f7681da9befdf17ae02ae915acd91.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

                <li class="fl js-bigpic" data-index="22"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=5"><img
                        src="https://image1.guazistatic.com/qn210113173951ee228c34d26a2ad5d37e98cbe8253006.jpg?imageView2/1/w/600/h/400/q/88">
                </li>

            </ul>
            <ul class="carpic-small clearfix">
                <li class="js-bigpic" data-index="16"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=6">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn2101131739519d631e805c86b459e978ea3d62b5229b.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
                <li class="js-bigpic" data-index="17"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=7">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn2101131739516ac8e0f58bb6e4371c481e04e16e0b2b.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
                <li class="js-bigpic" data-index="18"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=8">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn21011317395167e59f512037d52ff941175ef5bc8a32.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
                <li class="js-bigpic" data-index="12"
                    data-gzlog="tracking_type=click&amp;eventid=0220050000099033&amp;position=9">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn210113173951f3d8ef17a356c9b3aa7f5395ae685f7b.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>
            </ul>
            <ul class="carpic-small clearfix">
                <li class="js-bigpic" data-index="23" data-gzlog="tracking_type=click&amp;eventid=0220050000099041">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn21011317395124380a665a43cf8aed429e767e3540c7.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>

                <li class="js-bigpic" data-index="28" data-gzlog="tracking_type=click&amp;eventid=0220050000099041">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn210113173951442df2ed7a74cf3d8f61f773766aeb5f.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>

                <li class="js-bigpic" data-index="29" data-gzlog="tracking_type=click&amp;eventid=0220050000099041">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn2101131739515b1d5178514d66ee25392052de7da80b.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>

                <li class="js-bigpic" data-index="23" data-gzlog="tracking_type=click&amp;eventid=0220050000099044">
                    <div class="img-border"><img
                            src="https://image1.guazistatic.com/qn21011317395124380a665a43cf8aed429e767e3540c7.jpg?imageView2/1/w/600/h/400/q/88">
                    </div>
                </li>

            </ul>
        </div>

    </div>
</div>
<div class="pop-box pop-ask-phone" id="phonefree">
    <div class="pop-close" id="closePhone"></div>
    <p class="pop-tit js-logintitle">免费咨询</p>
    <ul class="ask-phone-you">
        <li class="p-entry-input">
            <span class="lable">手机号码</span>
            <input class="phone-login-input js-phoneNum-text " value="">
        </li>
        <li class="p-entry-input js-captcha-li">
            <span class="lable">验证码</span>
            <input class="phone-login-input width200 js-phoneNum1 js-captcha">
            <!-- 添加active为点击后状态 不可点击状态 -->
            <div class="button js-get-code">获取验证码</div>
        </li>
        <li class="p-error" id="loginError1"></li>
        <li>
            <button class="sub-btn js-checkcode " id="phoneFreeDefind">确定</button>
        </li>
        <%--  <li class="p-workonline js-customService">
              <span></span>
              <a href="javascript:;" data-position="pc_detail_basic_info" data-city-id="13" data-clue-id="106465503">24小时客服在线</a>
          </li>--%>
        <li class="p-worktime">免费咨询 400-000-0000</li>
    </ul>
</div>

<div class="pop-box pop-order-time-succ pop-order-time js-appoint-see-car" id="myBookBox">
    <div class="pop-close" id="pop-close"></div>
    <div class="pop-title-left">我要租车</div>
    <div class="pop-bottom">
        <div class="pop-con">预约<i class="js-appoint-time-desc">今天</i>，即享优惠</div>
        <div class="pop-address">
            看车方式            <span>
                到店服务            </span>
        </div>
        <div class="pop-time">选择时间
            <div id="appoint-time">
                <span class="js-select-time active" onclick="cselectBookTime(this)">今天</span>
                <span class="js-select-time" onclick="cselectBookTime(this)" >明天</span>
                <span class="js-select-time" onclick="cselectBookTime(this)" >后天</span>
            </div>
        </div>
        <input name="selected_time" type="hidden" value="1611474469">
    </div>
    <div class="pop-btn" data-gzlog="tracking_type=click&amp;eventid=92334677" data-val="106408634" data-type="3" id="nowBook">立即预约</div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/portal/detail.js"></script>
</body>
</html>

