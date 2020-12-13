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
    <title>共享套餐信息添加</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo/webuploader-demo.css">
</head>
<body style="background: #eee;">
<div class="row" style="padding: 0 15px;">

    <form id="addCarForm" onsubmit="return false" action="##" method="post">
        <%-- 车辆基本信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="businessName">套餐名称 *</label>
                    <input id="businessName" name="businessName" type="text" class="form-control ">
                </div>
                <div class="form-group">
                    <label for="businessUnit">业务单位 *</label>
                    <select class="form-control m-b" name="businessUnit" id="businessUnit">
                        <option>请选择</option>
                        <option value="H">小时套餐</option>
                        <option value="D">日套餐</option>
                        <option value="M">月套餐</option>
                        <option value="Q">季度套餐</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="businessTimeOutUnit">超时单位 *</label>
                    <select class="form-control m-b" name="businessTimeOutUnit" id="businessTimeOutUnit">
                        <option>请选择</option>
                        <option value="H">小时套餐</option>
                        <option value="D">日套餐</option>
                    </select>
                </div>

            </div>
        </div>
    </form>
</div>

<div class="row" style="margin: 20px;">


    <div style="margin-right: 0px;">
        <table  style="width: 1652px;">
            <thead>
            <tr>
                <th style="text-align: center; vertical-align: middle; " data-field="id" tabindex="0">
                    <div class="th-inner sortable both">主键</div>
                    <div class="fht-cell" style="width: 196px;"></div>
                </th>
                <th style="text-align: center; vertical-align: middle; " data-field="typeId" tabindex="0">
                    <div class="th-inner ">类型Id</div>
                    <div class="fht-cell" style="width: 178px;"></div>
                </th>
                <th style="text-align: center; vertical-align: middle; " data-field="name" tabindex="0">
                    <div class="th-inner ">名称</div>
                    <div class="fht-cell" style="width: 341px;"></div>
                </th>

                <th style="text-align: center; vertical-align: middle; width: 250px; " data-field="operate"
                    tabindex="0">
                    <div class="th-inner ">操作
                        <button id="btn_add" type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                        </button></div>
                    <div class="fht-cell" style="width: 249px;"></div>
                </th>
            </tr>
            </thead>

            <tbody>
            <%--<tr data-index="0" data-uniqueid="1">
                <td style="text-align: center; vertical-align: middle; ">1</td>
                <td style="text-align: center; vertical-align: middle; ">1</td>
                <td style="text-align: center; vertical-align: middle; ">奔驰测试车辆3</td>
                <td style="text-align: center; vertical-align: middle; width: 250px; ">
                    <button id="details" class="btn btn-primary" data-toggle="modal" data-target="#detailsModal">详情
                    </button>
                    <button id="edit" class="btn btn-info" data-toggle="modal" data-target="#editModal"
                            style="margin-left:10px;">编辑
                    </button>
                    <button id="delete" class="btn btn-danger" style="margin-left:10px;">删除</button>
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


<!-- Web Uploader -->
<script type="text/javascript">
    // 添加全局站点信息
    var BASE_URL = '../js/plugins/webuploader';
</script>
<script src="${pageContext.request.contextPath}/js/plugins/webuploader/webuploader.min.js"></script>

<script src="${pageContext.request.contextPath}/js/demo/webuploader-demo.js"></script>
<script src="${pageContext.request.contextPath}/js/businessManager/businessManager-add.js"></script>


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

