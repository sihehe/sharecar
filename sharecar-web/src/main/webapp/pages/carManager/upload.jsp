<%--
  Created by IntelliJ IDEA.
  User: 司会军
  Date: 2020/11/19
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo/demo01.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo/demo02.css">
</head>
<body>
<div id="moduleGallery" class="editableGallery"></div>
//存储上次上传的图片
<div id="uploader" class="commonWebUploader"> //提供再次上传
    <div class="queueList">
        <div id="dndArea" class="placeholder">
            <div id="filePicker"></div>
            <p>或将照片拖到这里，单次最多可选10张</p>
            <p style="font-size: 12px;margin-top: 2px;">提示：请上传3M以下，格式为jpg、png、bmp格式图片，以保证获得最佳效果</p>
        </div>
    </div>
    <div class="statusBar" style="display:none;">
        <div class="progress">
            <span class="text">0%</span> <span class="percentage"></span>
        </div>
        <div class="info"></div>
        <div class="btns">
            <div id="filePicker2" class="addFileBtn"></div>
            <!--                                     <div class="uploadBtn">开始上传</div> -->
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.7"></script>
<script src="${pageContext.request.contextPath}/js/plugins/webuploader/webuploader.js"></script>
<script src="${pageContext.request.contextPath}/js/carManager/commonWebUploader.js"></script>
<script src="${pageContext.request.contextPath}/js/carManager/editableGallery.js"></script>
<script src="${pageContext.request.contextPath}/js/carManager/upload-demo.js"></script>
</body>
</html>
