<%--
  Created by IntelliJ IDEA.
  User: 司会军
  Date: 2020/11/11
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>登录</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
    <script>if (window.top !== window.self) {
        window.top.location = window.location;
    }</script>
</head>
<body class="gray-bg">

<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">CAR</h1>

        </div>
        <h3>欢迎使用 CAR</h3>

        <form class="m-t" role="form" onsubmit="return false" action="##" method="post">
            <div class="form-group">
                <input  class="form-control" placeholder="用户名" required="" id="userName">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="" id="passWord">
            </div>
            <button class="btn btn-primary block full-width m-b" id="login">登 录</button>

            <p id="error" style="text-align: center;color: red"></p>
          <%--  <p class="text-muted text-center"><a href="javascript:">
                <small>忘记密码了？</small>
            </a> | <a href="register">注册一个新账号</a>
            </p>--%>

        </form>
    </div>
</div>

<!-- 全局js -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.7"></script>
<script src="${pageContext.request.contextPath}/js/plugins/layer/layer.min.js?v=1.0.0"></script>
<script>
    $('#login').click(function () {
      var  userName = $('#userName').val();
       var passWord = $('#passWord').val();
       var user = {
           username:userName,
           password:passWord
       }
       $.ajax({
           url: "shareUser/dologin",
           type: "POST",
           dataType: 'json',
           contentType: 'application/json;charset=UTF-8',
           data: JSON.stringify(user),
           success:function (res) {
               if(res.status){
                    layer.msg("成功");
                    window.location.href='manager';
               }else{
                   layer.alert(res.msg);
               }
           },
           error:function (res) {
               layer.alert("系统异常,请重试!");
           }
       })
    })
</script>

</body>
</html>
