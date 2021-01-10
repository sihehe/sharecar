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
    <title>套餐管理</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">


</head>
<body>
<div class="col-sm-12" style="padding: 0 20px">
    <div class="searchfrom row col-sm-2">
       <%-- <div class="form-group form-group-sm">
            <label class="col-sm-1 control-label" for="queryName">名称:</label>
            <div class="col-sm-2 ">
                <input class="form-control" type="text" id="queryName" placeholder="请输入内容">
            </div>
            <button class="btn btn-primary" id="querybtn">搜索</button>
        </div>--%>
           <input  type="text" id="queryName" placeholder="请输入内容" style="height:34px">
           <input  type="text" id="type" placeholder="请输入内容" style="display: none">
           <button class="btn btn-primary" id="querybtn" style="float: right;margin-right: 180px">搜索</button>
    </div>

    <div>
        <div class="carTable">
            <table id="tableDemo" class="table"></table>
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
<script src="${pageContext.request.contextPath}/js/businessManager/businessManager-list.js"></script>




</body>

</html>


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


