<%--
  Created by IntelliJ IDEA.
  User: si.hj
  Date: 2021/1/21
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
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
<div class="pop-mask "></div>--
<script>
    $('#js-login-new').click(function () {
        $('#login1').addClass('show');
        $('.pop-mask').addClass('active');
    })

    $('#closeLogin1').click(function () {
        $('#login1').removeClass('show');
        $('.pop-mask').removeClass('active');
    });
    $('#login').click(function () {
        var phone = $('#phone').val();
        var code = $('#code').val();
        // 判断输入值
        if (phone == undefined || phone == '' || phone.length != 11) {
            $('#loginError1').text("输入手机号有误");
            return
        }
        if (code == '') {
            $('#loginError1').text("请输入验证码");
            return
        }
        var loginParam = {
            phone: phone,
            code: code
        }
        console.log(document.cookie)
        $.ajax({
            type: 'post',
            url: 'customerManager/login',
            data: JSON.stringify(loginParam),
            dataType: "Json",
            contentType: 'application/json;charset=UTF-8',
            success: function (res) {
                if (res.status) {
                    // 成功 讲手机号存入cookie中
                    console.log(document.cookie)
                    var cookiePhone = document.cookie;
                    // 判断cookie中是否已经存在
                    var flag =checkCookie('phone');
                    if (!flag) {
                        setCookie('phone',phone,1)
                    }

                    $('#cancel').attr('style', '');
                    $('#user').attr('style', '');
                    $('#user').text(phone);
                    $('#js-login-new').attr('style', 'display:none');
                    $('#login1').removeClass('show');
                    $('.pop-mask').removeClass('active');
                } else {
                    $('#loginError1').text("验证码输入不正确");
                    return
                }
            }
        })
    });
    // 退出
    $('#logout').click(function () {
        //清楚cookie中phone字段
        clearCookie('phone');
        window.location.reload();
    });

    // 设置cookie
    function setCookie(c_name, value, expiredays) {
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + expiredays);
        document.cookie = c_name + "=" + escape(value) + ";expires=" + exdate.toGMTString()
    }

    // 读取cookie
    function getCookie(c_name) {
        if (document.cookie.length > 0) {
            c_start = document.cookie.indexOf(c_name + "=")
            if (c_start != -1) {
                c_start = c_start + c_name.length + 1
                c_end = document.cookie.indexOf(";", c_start)
                if (c_end == -1)
                    c_end = document.cookie.length
                return unescape(document.cookie.substring(c_start, c_end))
            }
        }
        return ""
    }

    // 检查cookie
    function checkCookie(c_name) {
        username = getCookie(c_name);
        console.log(username);
        if (username != null && username != "") {
            return true;
        } else {
            return false;
        }
    }

    // 清除cookie
    function clearCookie(name) {
        setCookie(name, "", -1);
    }

    $(function () {
        //查看cookie中是否存在登录的手机号
        var flag = checkCookie('phone');
        if(flag){
            var phone = getCookie('phone');
            $('#cancel').attr('style', '');
            $('#user').attr('style', '');
            $('#user').text(phone);
            $('#js-login-new').attr('style', 'display:none');
        }
    })
</script>
<!-- 登录弹层  e -->
<!-- 登录弹框  e -->

</body>
</html>
