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
    <title>套餐信息详情</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">

</head>
<body style="background: #eee;" class="col-sm-12">
<div style="padding: 0 15px;">

    <form id="addCarForm" onsubmit="return false" action="##" method="post">
        <%-- 车辆基本信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="businessName">套餐名称 *</label>
                    <input id="businessName" name="businessName" type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label for="businessUnit">业务单位 *</label>
                    <select class="form-control m-b" name="businessUnit" id="businessUnit" disabled>
                        <option>请选择</option>
                        <option value="H">小时套餐</option>
                        <option value="D">日套餐</option>
                        <option value="M">月套餐</option>
                        <option value="Q">季度套餐</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="businessTimeOutUnit">超时单位 *</label>
                    <select class="form-control m-b" name="businessTimeOutUnit" id="businessTimeOutUnit" disabled>
                        <option>请选择</option>
                        <option value="H">小时</option>
                        <option value="D">天</option>
                    </select>
                </div>

            </div>
        </div>
    </form>
</div>

<div class="row" style="margin: 20px;">


    <div style="margin-right: 0px;">
        <table  class="col-sm-offset-1 col-sm-10">
            <thead>
            <tr>
                <th style="text-align: center; vertical-align: middle; " data-field="id" tabindex="0">
                    <div class="th-inner sortable both">类型</div>
                    <div class="fht-cell" style="width: 20px;"></div>
                </th>
                <th style="text-align: center; vertical-align: middle; " data-field="typeId" tabindex="0">
                    <div class="th-inner ">价格(单位:元)</div>
                    <div class="fht-cell" style="width: 50px;"></div>
                </th>
                <th style="text-align: center; vertical-align: middle; " data-field="name" tabindex="0">
                    <div class="th-inner ">超时价格(单位:元)</div>
                    <div class="fht-cell" style="width: 50px;"></div>
                </th>
                <%--<th style="text-align: center; vertical-align: middle; width: 40px; " data-field="operate"
                    tabindex="0">
                    <div class="th-inner ">操作
                        <button id="btn_add" type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                        </button></div>
                    <div class="fht-cell" style="width: 249px;"></div>
                </th>--%>
            </tr>
            </thead>

            <tbody  id="appendTbody">
            <%-- <tr data-index="0" data-uniqueid="1">
                 <td style="text-align: center; vertical-align: middle; ">1</td>
                 <td style="text-align: center; vertical-align: middle; "></td>
                 <td style="text-align: center; vertical-align: middle; "></td>
                 <td style="text-align: center; vertical-align: middle; width: 250px; ">
                     <button id="delete" class="btn btn-danger" style="margin-left:10px;" onclick="delRow(this)">删除</button>
                 </td>
             </tr>--%>
            </tbody>

        </table>
    </div>
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


<!-- Jquery Validate -->
<script src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>

<!-- 自定义js -->
<%--<script src="${pageContext.request.contextPath}/js/content.js?v=1.0.0"></script>--%>
<script src="${pageContext.request.contextPath}/js/businessManager/businessManager-details.js"></script>


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
    table,table tr th, table tr td { border:1px solid #0094ff; }
    tr th{height: 35px}
    tr td{height: 35px}
</style>

