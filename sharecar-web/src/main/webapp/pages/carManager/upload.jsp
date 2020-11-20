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
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
//存储上次上传的图片
<div id="uploader">
    <div class="queueList">
        <div id="dndArea" class="placeholder">
            <div id="filePicker"></div>
            <p>或将附件拖到这里，单次最多可选10个</p>
        </div>
    </div>
    <div class="statusBar" style="display:none;">
        <div class="progress">
            <span class="text">0%</span>
            <span class="percentage"></span>
        </div><div class="info"></div>
        <div class="btns">
            <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.7"></script>
<script src="${pageContext.request.contextPath}/js/plugins/webuploader/webuploader.js"></script>
<script src="${pageContext.request.contextPath}/js/carManager/upload-demo.js"></script>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<script type="text/javascript">
    var path="<%=path%>";
    //下载已经上传到服务器的文件
    function downloadServerFile(id){
        window.location.href=path+"/AssessmentAction/downloadFile?id="+id;
    }
</script>
</body>
</html>
