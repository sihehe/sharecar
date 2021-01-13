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
    <title>共享车辆信息详情</title>

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
<div style="padding: 0 15px;">

    <form id="addCarForm" onsubmit="return false" action="##" method="post">
        <%-- 车辆基本信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <h2 class="col-sm-10">车辆基本信息</h2>
            <div class="col-sm-12 hr-line-dashed"></div>
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="name">名称 *</label>
                    <input id="name" name="name" type="text" class="form-control" disabled>
                </div>
                <div class="form-group">
                    <label for="factoryOwn">厂商 *</label>
                    <input id="factoryOwn" name="factoryOwn" type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label>车牌 *</label>
                    <input id="plate" name="plate" type="text" class="form-control " disabled>
                </div>

                <div class="form-group">
                    <label for="ownerId">车主 *</label>
                    <input id="ownerId"  name="ownerId" type="text" class="form-control " disabled>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="region">地区 *</label>
                    <input id="region" name="region" type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label for="type">类型 *</label>
                    <select class="form-control m-b" name="type" id="type" disabled>
                    </select>
                </div>
                <div class="form-group">
                    <label for="descr">介绍描述 </label>
                    <textarea id="descr" name="descr" class="form-control" rows="3" disabled></textarea>
                </div>

            </div>

        </div>

        <%-- 车辆规格信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <h2 class="col-sm-10">车辆规格信息</h2>
            <div class="col-sm-12 hr-line-dashed"></div>
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="style">风格 *</label>
                    <input id="style" name="style" type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label for="seats">座位数 *</label>
                    <input id="seats" name="seats" type="text" class="form-control " disabled>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="form-group">
                    <label for="color">颜色 *</label>
                    <input id="color" name="color"  type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label for="door">车门数 *</label>
                    <input id="door" name="door" type="text" class="form-control " disabled>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="form-group">
                    <label for="length">车长(单位:MM)  *</label>
                    <input id="length" name="length"  type="text" class="form-control " disabled>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="width">车宽(单位:MM) *</label>
                    <input id="width" name="width" type="text" class="form-control " disabled>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="hight">车高(单位:MM) *</label>
                    <input id="hight" name="hight" type="text" class="form-control " disabled>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="weight">车重(单位:KG) *</label>
                    <input id="weight" name="weight"  type="text" class="form-control " disabled>
                </div>
            </div>

            <%--  <div class="col-sm-2">
                  <li class="glyphicon glyphicon-plus"
                      style="margin-left: 100px; font-size: 220px;color: #e5e5e5 "></li>
              </div>--%>
        </div>

        <%-- 发动机规格信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <h2 class="col-sm-10">发动机规格信息</h2>
            <div class="col-sm-12 hr-line-dashed"></div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="engineType">发动机类型 *</label>
                    <input id="engineType" name="engineType" type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label for="gearbox">变速箱 *</label>
                    <input id="gearbox" name="gearbox" type="text" class="form-control " disabled>
                </div>
                <div class="form-group">
                    <label for="fuelType">燃油类型 *</label>
                    <input id="fuelType" name="fuelType" type="text" class="form-control " disabled>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="engineHorsepower">引擎马力</label>
                    <input id="engineHorsepower" name="engineHorsepower" type="text" class="form-control  " disabled>
                </div>
                <div class="form-group">
                    <label for="displacement">排量 </label>
                    <input id="displacement" name="displacement" type="text" class="form-control" disabled>
                </div>
            </div>
        </div>
        <%-- 车辆图片信息 --%>
        <div class="col-sm-10 col-sm-offset-1 row">
            <h2 class="col-sm-10">车辆图片信息</h2>
            <div class="col-sm-12 hr-line-dashed"></div>
            <%--<div class="wrapper wrapper-content animated fadeIn">--%>
            <div class="col-sm-12">
                <div class="ibox-content">
                    <div class="carousel slide" id="carousel3">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img alt="image" class="img-responsive" src="../img/p_big1.jpg">
                            </div>
                            <div class="item ">
                                <img alt="image" class="img-responsive" src="../img/p_big3.jpg">
                            </div>
                            <div class="item">
                                <img alt="image" class="img-responsive" src="../img/p_big2.jpg">
                            </div>

                        </div>
                        <a data-slide="prev" href="carousel.html#carousel3" class="left carousel-control">
                            <span class="icon-prev"></span>
                        </a>
                        <a data-slide="next" href="carousel.html#carousel3" class="right carousel-control">
                            <span class="icon-next"></span>
                        </a>
                    </div>
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

<%--<script src="${pageContext.request.contextPath}/js/demo/webuploader-demo.js"></script>--%>
<script src="${pageContext.request.contextPath}/js/carManager/carManager-details.js"></script>


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

