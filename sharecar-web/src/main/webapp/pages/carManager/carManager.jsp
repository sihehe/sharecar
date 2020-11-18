<%--
  Created by IntelliJ IDEA.
  User: SAND
  Date: 2020/11/11
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>carManager</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">


</head>
<body>
<div class="col-sm-12" style="padding: 0 20px">
    <div class="searchfrom row">
        <div class="form-group form-group-md">
            <label class="col-sm-1 control-label" for="queryName">名称:</label>
            <div class="col-sm-3 ">
                <input class="form-control" type="text" id="queryName" placeholder="请输入内容">
            </div>
            <label class="col-sm-1 control-label" for="queryStyle">风格:</label>

            <div class="col-sm-3">
                <select class="form-control m-b" name="account" id="queryStyle">
                    <option>选项 1</option>
                    <option>选项 2</option>
                    <option>选项 3</option>
                    <option>选项 4</option>
                </select>
                <%--<input class="form-control" type="text" id="queryStyle" placeholder="请输入内容">--%>
            </div>
            <button class="btn btn-primary" id="querybtn">搜索</button>
        </div>
    </div>

    <div>
        <div class="carTable">
            <table id="tableDemo" class="table"></table>
            <div id="toolbar" class="btn-group pull-right" style="margin-right: 20px;margin-top: 10px">
                <%--  <button id="btn_edit" type="button" class="btn btn-default">
                      <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                  </button>
                  <button id="btn_delete" type="button" class="btn btn-default ">
                      <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                  </button>--%>
                <button id="btn_add" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                </button>
            </div>
        </div>

    </div>

</div>
<!-- End Example Pagination -->

<!-- 全局js -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.7"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/js/plugins/layer/layer.min.js?v=1.0.0"></script>


<!-- Bootstrap table -->
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>



<!-- Peity -->
<script src="${pageContext.request.contextPath}/js/carManager/carManager.js"></script>




</body>

</html>



<%--<div id="id">
    <div style="padding: 0 15px" >
        &lt;%&ndash;<div class="ibox">&ndash;%&gt;
           &lt;%&ndash; <div class="ibox-title">
                <h5>带验证的表单向导</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="form_wizard.html#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="form_wizard.html#">选项1</a>
                        </li>
                        <li><a href="form_wizard.html#">选项2</a>
                        </li>
                    </ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>&ndash;%&gt;
            <div class="ibox-content">
                <h2>
                    带验证的表单向导
                </h2>
                <p>
                    下面这个示例展示了如何在表单向导中使用 jQuery Validation 插件
                </p>

                <form id="form" action="form_wizard.html#" class="wizard-big">
                    <h1>账户</h1>
                    <fieldset>
                        <h2>账户信息</h2>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <label>用户名 *</label>
                                    <input id="userName" name="userName" type="text" class="form-control required">
                                </div>
                                <div class="form-group">
                                    <label>密码 *</label>
                                    <input id="password" name="password" type="text" class="form-control required">
                                </div>
                                <div class="form-group">
                                    <label>确认密码 *</label>
                                    <input id="confirm" name="confirm" type="text" class="form-control required">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="text-center">
                                    <div style="margin-top: 20px">
                                        <i class="fa fa-sign-in" style="font-size: 180px;color: #e5e5e5 "></i>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </fieldset>
                    <h1>个人资料</h1>
                    <fieldset>
                        <h2>个人资料信息</h2>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>姓名 *</label>
                                    <input id="name" name="name" type="text" class="form-control required">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email *</label>
                                    <input id="email" name="email" type="text" class="form-control required email">
                                </div>
                                <div class="form-group">
                                    <label>地址 *</label>
                                    <input id="address" name="address" type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <h1>警告</h1>
                    <fieldset>
                        <div class="text-center" style="margin-top: 120px">
                            <h2>你是火星人 :-)</h2>
                        </div>
                    </fieldset>

                    <h1>完成</h1>
                    <fieldset>
                        <h2>条款</h2>
                        <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required">
                        <label for="acceptTerms">我同意注册条款</label>
                    </fieldset>
                </form>
            </div>
        </div>
    &lt;%&ndash;</div>&ndash;%&gt;

</div>--%>

<div >


    <%--<div class="content">
        &lt;%&ndash;添加第一行表单&ndash;%&gt;
        <div class="form-group form-group-md">
            <label class="col-sm-1 control-label" for="addName">名称:</label>
            <div class="col-sm-3 ">
                <input class="form-control" type="text" id="addName" placeholder="请输入内容">
            </div>

            <label class="col-sm-1 control-label" for="addFactor">厂商:</label>
            <div class="col-sm-3">
                <select class="form-control m-b"  id="addFactor">
                    <option>奔驰</option>
                    <option>宝马</option>
                    <option>奥迪</option>
                    <option>大众</option>
                </select>
                &lt;%&ndash;<input class="form-control" type="text" id="queryStyle" placeholder="请输入内容">&ndash;%&gt;
            </div>

            <label class="col-sm-1 control-label" for="addStyle">风格:</label>
            <div class="col-sm-3">
                <select class="form-control m-b" id="addStyle">
                    <option>选项 1</option>
                    <option>选项 2</option>
                    <option>选项 3</option>
                    <option>选项 4</option>
                </select>
                &lt;%&ndash;<input class="form-control" type="text" id="queryStyle" placeholder="请输入内容">&ndash;%&gt;
            </div>
        </div>

        &lt;%&ndash;添加第二行表单&ndash;%&gt;
        <div class="form-group form-group-md">
            <label class="col-sm-1 control-label" for="addPlate">车牌号:</label>
            <div class="col-sm-3">
                <input class="form-control" type="text" id="addPlate" placeholder="请输入内容">
            </div>

            <label class="col-sm-1 control-label" for="addLength">车长(米):</label>
            <div class="col-sm-3">
                <input class="form-control" type="text" id="addLength" placeholder="请输入内容">
            </div>
            <label class="col-sm-1 control-label" for="addWidth">车宽(米):</label>
            <div class="col-sm-3">
                <input class="form-control" type="text" id="addWidth" placeholder="请输入内容">
            </div>
            &lt;%&ndash;<input class="form-control" type="text" id="queryStyle" placeholder="请输入内容">&ndash;%&gt;
        </div>



        &lt;%&ndash;第三行&ndash;%&gt;
        <div class="form-group form-group-md">
            <label class="col-sm-1 control-label" for="addSeats">座位数:</label>
            <div class="col-sm-3">
                <input class="form-control" type="text" id="addSeats" placeholder="请输入内容">
            </div>
            <label class="col-sm-1 control-label" for="addEngineType">发动机:</label>
            <div class="col-sm-3">
                <select class="form-control m-b" name="account" id="addEngineType">
                    <option>电动</option>
                    <option>汽油</option>
                    <option>柴油</option>
                    <option>混合动力</option>
                </select>
                &lt;%&ndash;<input class="form-control" type="text" id="queryStyle" placeholder="请输入内容">&ndash;%&gt;
            </div>
            <label class="col-sm-1 control-label" for="addFactor">变速箱:</label>
            <div class="col-sm-3">
                <select class="form-control m-b" name="account" id="addFactor">
                    <option>自动档</option>
                    <option>手动挡</option>
                </select>
                &lt;%&ndash;<input class="form-control" type="text" id="queryStyle" placeholder="请输入内容">&ndash;%&gt;
            </div>
        </div>

    </div>--%>

</div>



<style>
    .carTable {
        margin-top: 10px;
    }

    .searchfrom {
        margin-top: 25px;
    }

    .control-label {
        padding-top: 7px;
        margin-bottom: 0;
        text-align: right
    }


</style>


