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
    <title>共享车辆信息添加</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/steps/jquery.steps.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo/webuploader-demo.css">
</head>
<body>
    <div style="padding: 0 15px" >
        <%--<div class="ibox">--%>
        <%-- <div class="ibox-title">
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
         </div>--%>
        <div class="ibox-content">

            <form id="form" action="form_wizard.html#" class="wizard-big" >
                <h1>基本信息</h1>
                <fieldset>
                    <h2>车辆基本信息</h2>
                    <div class="col-sm-10 row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label>名称 *</label>
                                <input id="userName" name="" type="text" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>厂商 *</label>
                                <input id="factor" name="" type="text" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>车牌 *</label>
                                <input id="plate" name="" type="text" class="form-control required">
                            </div>

                            <div class="form-group">
                                <label>车主 *</label>
                                <input id="confirm" name="" type="text" class="form-control required">
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label>地区 *</label>
                                <input id="region" name="" type="text" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>介绍描述 *</label>
                                <textarea  id="desc"  class="form-control" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <li class="glyphicon glyphicon-plus" style="margin-left: 100px; font-size: 220px;color: #e5e5e5 "></li>
                        </div>
                    </div>

                </fieldset>
                <h1>车辆规格</h1>
                <fieldset>
                    <h2>车辆规格信息</h2>


                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>风格 *</label>
                                <input id="name" name="" type="text" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>座位数 *</label>
                                <input id="seats" name="" type="text" class="form-control required">
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>颜色 *</label>
                                <input id="email" name="" type="text" class="form-control required ">
                            </div>
                            <div class="form-group">
                                <label>座位数 *</label>
                                <input id="address" name="" type="text" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="LENGTH">车长 *</label>
                                <input id="LENGTH" name="LENGTH" type="text" class="form-control required">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="WIDTH">车宽 *</label>
                                <input id="WIDTH" name="WIDTH" type="text" class="form-control required">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="WIDTH">车高 *</label>
                                <input id="HIGHT" name="HIGHT" type="text" class="form-control required">
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="WEIGHT">车重 *</label>
                                <input id="WEIGHT" name="WEIGHT" type="text" class="form-control required">
                            </div>
                        </div>
                    </div>

                </fieldset>

                <h1>发动机规格</h1>
                <fieldset>
                    <h2>发动机规格信息</h2>


                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>发动机类型 *</label>
                                <input id="ENGINE_TYPE" name="" type="text" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>变速箱 *</label>
                                <input id="GEARBOX" name="" type="text" class="form-control required">
                            </div>
                            <div class="form-group">
                                <label>燃油类型 *</label>
                                <input id="FUEL_TYPE" name="" type="text" class="form-control required">
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>引擎马力</label>
                                <input id="ENGINE_HORSEPOWER" name="" type="text" class="form-control required ">
                            </div>
                            <div class="form-group">
                                <label>排量 *</label>
                                <input id="DISPLACEMENT" name="" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>燃油号 *</label>
                                <input id="FUEL_NUM" name="" type="text" class="form-control required">
                            </div>
                        </div>
                    </div>

                </fieldset>

                <h1>车辆图片</h1>
                <fieldset>
                    <h2>车辆图片信息</h2>

                    <div class="row">
                        <div class="wrapper wrapper-content animated fadeIn">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="ibox float-e-margins">

                                        <div class="ibox-content">

                                            <h2>
                                                Web Uploader
                                            </h2>
                                            <p>
                                                WebUploader是由Baidu WebFE(FEX)团队开发的一个简单的以HTML5为主，FLASH为辅的现代文件上传组件。在现代的浏览器里面能充分发挥HTML5的优势，同时又不摒弃主流IE浏览器，沿用原来的FLASH运行时，兼容IE6+，iOS 6+, android 4+。两套运行时，同样的调用方式，可供用户任意选用。 采用大文件分片并发上传，极大的提高了文件上传效率。
                                            </p>

                                            <div class="alert alert-warning">
                                                官方文档及更多示例请参考：
                                                <a href="http://fex.baidu.com/webuploader/" target="_blank">http://fex.baidu.com/webuploader/</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="ibox float-e-margins">
                                        <div class="ibox-title">
                                            <h5>百度Web Uploader</h5>
                                            <div class="ibox-tools">
                                                <a class="collapse-link">
                                                    <i class="fa fa-chevron-up"></i>
                                                </a>
                                                <a class="dropdown-toggle" data-toggle="dropdown" href="form_file_upload.html#">
                                                    <i class="fa fa-wrench"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-user">
                                                    <li><a href="form_file_upload.html#">选项1</a>
                                                    </li>
                                                    <li><a href="form_file_upload.html#">选项2</a>
                                                    </li>
                                                </ul>
                                                <a class="close-link">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="ibox-content">
                                            <div class="page-container">
                                                <p>您可以尝试文件拖拽，使用QQ截屏工具，然后激活窗口后粘贴，或者点击添加图片按钮，来体验此demo.</p>
                                                <div id="uploader" class="wu-example">
                                                    <div class="queueList">
                                                        <div id="dndArea" class="placeholder">
                                                            <div id="filePicker"></div>
                                                            <p>或将照片拖到这里，单次最多可选300张</p>
                                                        </div>
                                                    </div>
                                                    <div class="statusBar" style="display:none;">
                                                        <div class="progress">
                                                            <span class="text">0%</span>
                                                            <span class="percentage"></span>
                                                        </div>
                                                        <div class="info"></div>
                                                        <div class="btns">
                                                            <div id="filePicker2"></div>
                                                            <div class="uploadBtn">开始上传</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </fieldset>

                <h1>完成</h1>
                <fieldset>0
                    <h2>条款</h2>
                    <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required">
                    <label for="acceptTerms">我同意注册条款</label>
                </fieldset>
            </form>
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


<!-- Steps -->
<script src="${pageContext.request.contextPath}/js/plugins/staps/jquery.steps.min.js"></script>

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


</body>

</html>

<style>
    .wizard-big.wizard > .content {
        min-height: 550px;
    }
</style>

<script>
    $(document).ready(function () {
        $("#wizard").steps();
        $("#form").steps({
            bodyTag: "fieldset",
            onStepChanging: function (event, currentIndex, newIndex) {
                // Always allow going backward even if the current step contains invalid fields!
                if (currentIndex > newIndex) {
                    return true;
                }

                // Forbid suppressing "Warning" step if the user is to young
                if (newIndex === 3 && Number($("#age").val()) < 18) {
                    return false;
                }

                var form = $(this);

                // Clean up if user went backward before
                if (currentIndex < newIndex) {
                    // To remove error styles
                    $(".body:eq(" + newIndex + ") label.error", form).remove();
                    $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
                }

                // Disable validation on fields that are disabled or hidden.
                form.validate().settings.ignore = ":disabled,:hidden";

                // Start validation; Prevent going forward if false
                return form.valid();
            },
            onStepChanged: function (event, currentIndex, priorIndex) {
                // Suppress (skip) "Warning" step if the user is old enough.
                if (currentIndex === 2 && Number($("#age").val()) >= 18) {
                    $(this).steps("next");
                }

                // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
                if (currentIndex === 2 && priorIndex === 3) {
                    $(this).steps("previous");
                }
            },
            onFinishing: function (event, currentIndex) {
                var form = $(this);

                // Disable validation on fields that are disabled.
                // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
                form.validate().settings.ignore = ":disabled";

                // Start validation; Prevent form submission if false
                return form.valid();
            },
            onFinished: function (event, currentIndex) {
                var form = $(this);

                // Submit form input
                form.submit();
            }
        }).validate({
            errorPlacement: function (error, element) {
                element.before(error);
            },
            rules: {
                confirm: {
                    equalTo: "#password"
                }
            }
        });
    });
</script>
