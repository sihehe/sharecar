<%--
  Created by IntelliJ IDEA.
  User: SAND
  Date: 2020/11/18
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客户信息添加</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
</head>
<body style="background: #eee;">
<div class="row" style="padding: 0 15px;">

    <form id="addCarForm" onsubmit="return false" action="##" method="post">
        <%-- 车辆基本信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="customerName">客户名称 *</label>
                    <input id="customerName" name="customerName" type="text" class="form-control ">
                </div>
                <div class="form-group">
                    <label for="customerGrad">客户性别 *</label>
                    <select class="form-control m-b" name="customerGrad" id="customerGrad">
                        <option>请选择</option>
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="customerBrithYear">客户出生年月 *</label>
                    <input id="customerBrithYear" name="customerBrithYear" type="text" class="form-control ">
                </div>

            </div>
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="customerPhone">客户联系电话 *</label>
                    <input id="customerPhone" name="customerPhone" type="text" class="form-control ">
                </div>
                <div class="form-group">
                    <label for="customerCardNum">客户身份证号 *</label>
                    <input id="customerCardNum" name="customerCardNum" type="text" class="form-control ">
                </div>
                <div class="form-group">
                    <label for="customerAddress">客户联系地址 *</label>
                    <textarea id="customerAddress" name="customerAddress" class="form-control" rows="3"></textarea>
                </div>

            </div>
        </div>
    </form>
</div>



<!-- 全局js -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.7"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/js/plugins/layer/layer.min.js?v=1.0.0"></script>


<!-- Bootstrap table -->
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>


<%-- layerDate --%>
<script src="${pageContext.request.contextPath}/js/plugins/layer/laydate_v5.0.9/laydate.js"></script>

<!-- Jquery Validate -->
<script src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>

<!-- 自定义js -->
<%--<script src="${pageContext.request.contextPath}/js/content.js?v=1.0.0"></script>--%>


<script src="${pageContext.request.contextPath}/js/customerManager/customerManager-edit.js"></script>


</body>

</html>

<style>
    .wizard-big.wizard > .content {
        min-height: 400px;
    }

    .hr-line-dashed {
        border-top: 3px dashed #ccc;
        color: #333;
        background-color: #ccc;
        height: 1px;
        margin: 20px 0;
    }
</style>

