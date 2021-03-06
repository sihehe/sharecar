<%--
  Created by IntelliJ IDEA.
  User: SAND
  Date: 2020/11/26
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单编辑</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-select/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">

</head>
<body style="background: #eee;">
<div style="padding: 0 15px;">

    <form id="addOrderForm" onsubmit="return false" action="##" method="post">
        <%-- 订单录入 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <h2 class="col-sm-10">订单编辑</h2>
            <div class="col-sm-12 hr-line-dashed"></div>
            <div class="col-sm-5">
                <div class="form-group" id="customer">
                    <label for="customerId">客户名称 *</label>
                    <select data-size="6" class="form-control selectpicker show-tick" data-live-search="true" title="请输入客户名称"  id="customerId" name="customerId" data-selectNameUrl="${pageContext.request.contextPath}/customerManager/customerList" >
                    </select>
                    <%--<input id="customerId" name="customerId" type="text" class="form-control ">--%>
                </div>
                <div class="form-group">
                    <label for="carName">车辆 *</label>
                    <input id="carId" name="carId" type="text" class="form-control" style="display: none">
                    <div class="input-group">
                        <input type="text" class="form-control" id="carName" name="carName" readonly="readonly">
                        <span class="input-group-btn">
                            <button type="button" id="carSearch" class="btn btn-primary">选择</button>
                        </span>
                    </div>
                    <%--<input id="carName" name="carName" type="text" class="form-control" >--%>
                </div>

                <div class="form-group">
                    <label for="cashPledge">押金 *</label>
                    <input id="cashPledge" name="cashPledge" type="text" class="form-control " readonly="readonly">
                </div>

                <div class="form-group">
                    <label for="businessName">套餐 *</label>
                    <input id="businessId" name="businessId" type="text" class="form-control" style="display: none">
                    <div class="input-group">
                        <input type="text" class="form-control" id="businessName" name="businessName" readonly="readonly" >
                        <span class="input-group-btn">
                            <button type="button" id="businessSearch" class="btn btn-primary">选择</button>
                        </span>
                    </div>

                </div>
                <div class="form-group">
                    <label for="num">套餐数量 *</label>
                    <input id="num" name="num" type="text" class="form-control ">
                </div>
            </div>
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="useStartTime">租车起止时间 *</label>
                    <input id="useStartTime" name="useStartTime" type="text" class="form-control ">
                </div>
                <div class="form-group" id="empt">
                    <label for="emptId">经理人</label>
                    <select data-size="6" class="form-control selectpicker show-tick" data-live-search="true" title="请输入职工名称"  id="emptId" name="emptId" data-selectNameUrl="${pageContext.request.contextPath}/customerManager/customerList" >
                    </select>
                </div>
                <div class="form-group">
                    <label for="orderAmt">订单金额 *</label>
                    <input id="orderAmt" name="orderAmt" type="text" class="form-control " readonly="readonly">
                </div>
                <div class="form-group">
                    <label for="payType">支付方式 *</label>
                    <select class="form-control m-b" name="payType" id="payType" >
                        <option>请选择</option>
                        <option>银联</option>
                        <option>微信</option>
                        <option>支付宝</option>
                        <option>其他</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="remark">备注 </label>
                    <textarea id="remark" name="remark" class="form-control" rows="3"></textarea>
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
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-select/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

<%-- layerDate --%>
<script src="${pageContext.request.contextPath}/js/plugins/layer/laydate_v5.0.9/laydate.js"></script>

<!-- Jquery Validate -->
<script src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>

<!-- 自定义js -->
<%--<script src="${pageContext.request.contextPath}/js/content.js?v=1.0.0"></script>--%>


<script src="${pageContext.request.contextPath}/js/orderManager/orderManager-edit.js"></script>


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