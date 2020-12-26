<%--
  Created by IntelliJ IDEA.
  User: SAND
  Date: 2020/11/10
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="renderer" content="webkit" />

    <title>共享汽车管理系统</title>

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

<%--<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />--%>
    <link href="${pageContext.request.contextPath}/favicon.ico" rel="x-iocn" />
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.7" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/style.css?v=4.1.0" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/jquery.contextMenu.min.css" rel="stylesheet"/>
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow: hidden;">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i></div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <span><img alt="image" class="img-circle" src="${pageContext.request.contextPath}/img/profile_small.jpg" /></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
									<span class="clear">
										<span class="block m-t-xs"><strong class="font-bold">Beaut-zihan</strong></span>
										<span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
									</span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="login">安全退出</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">CAR</div>
                </li>


                <li>
                    <a class="J_menuItem" href="home" > <i class="fa fa-home"></i> <span class="nav-label">首页</span></a>
                </li>
                <li>
                    <a class="J_menuItem" href="carManager/"><i class="fa fa-car"></i> <span class="nav-label">车辆信息管理</span></a>
                </li>
                <li>
                    <a class="J_menuItem" href="orderManager/"><i class="fa fa-table"></i> <span class="nav-label">订单管理</span></a>
                </li>
                <li>
                    <a class="J_menuItem" href="businessManager/"><i class="fa fa-edit"></i> <span class="nav-label">套餐管理</span></a>
                </li>
                <li>
                    <a class="J_menuItem" href="customerManager/"><i class="fa fa-cutlery"></i> <span class="nav-label">客户管理</span></a>
                </li>
                <li>
                    <a class="J_menuItem" href="orderManager/"><i class="glyphicon glyphicon-user"></i> <span class="nav-label">职工管理</span></a>
                </li>
               <%-- <li>
                    <a href="#">
                        <i class="fa fa fa-bar-chart-o"></i>
                        <span class="nav-label">统计图表</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="graph_echarts.html">百度ECharts</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">Flot</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_morris.html">Morris.js</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_rickshaw.html">Rickshaw</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_peity.html">Peity</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_sparkline.html">Sparkline</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_metrics.html">图表组合</a>
                        </li>
                    </ul>
                </li>--%>

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0;">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary" href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search" />
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <%--<li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#"> <i class="fa fa-envelope"></i> <span class="label label-warning">16</span> </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li class="m-t-xs">
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="${pageContext.request.contextPath}/img/a7.jpg" />
                                    </a>
                                    <div class="media-body">
                                        <small class="pull-right">46小时前</small>
                                        <strong>小四</strong> 这个在日本投降书上签字的军官，建国后一定是个不小的干部吧？
                                        <br />
                                        <small class="text-muted">3天前 2014.11.8</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="${pageContext.request.contextPath}/img/a4.jpg" />
                                    </a>
                                    <div class="media-body">
                                        <small class="pull-right text-navy">25小时前</small>
                                        <strong>国民岳父</strong> 如何看待“男子不满自己爱犬被称为狗，刺伤路人”？——这人比犬还凶
                                        <br />
                                        <small class="text-muted">昨天</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="mailbox.html"> <i class="fa fa-envelope"></i> <strong> 查看所有消息</strong> </a>
                                </div>
                            </li>
                        </ul>
                    </li>--%>
                    <%--<li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#"> <i class="fa fa-bell"></i> <span class="label label-primary">8</span> </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> 您有16条未读消息
                                        <span class="pull-right text-muted small">4分钟前</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-qq fa-fw"></i> 3条新回复
                                        <span class="pull-right text-muted small">12分钟钱</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="notifications.html">
                                        <strong>查看所有 </strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>--%>
                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle" aria-expanded="false"> <i class="fa fa-tasks"></i> 主题 </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i></button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="welcome">欢迎页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i></button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown" data-toggle="dropdown">页签操作<span class="caret"></span></button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="tabCloseCurrent"><a>关闭当前</a></li>
                    <li class="J_tabCloseOther"><a>关闭其他</a></li>
                    <li class="J_tabCloseAll"><a>全部关闭</a></li>
                </ul>
            </div>
            <a href="#" class="roll-nav roll-right tabReload"><i class="fa fa-refresh"></i> 刷新</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="welcome" frameborder="0" data-id="welcome" seamless></iframe>
        </div>
        <div class="footer" style="margin-bottom: -15px">
            <div class="pull-right" style="float: right;margin-top: -8px">&copy; 2020-2099 <a href="http://www.baidu.com" target="_blank">共享管理系统</a></div>
        </div>
    </div>
    <!--右侧部分结束-->
    <!--右侧边栏开始-->
    <div id="right-sidebar">
        <div class="sidebar-container">
            <ul class="nav nav-tabs navs-3">
                <li class="active">
                    <a data-toggle="tab" href="#tab-1"> <i class="fa fa-gear"></i> 主题 </a>
                </li>
            </ul>

            <div class="tab-content">
                <div id="tab-1" class="tab-pane active">
                    <div class="sidebar-title">
                        <h3><i class="fa fa-comments-o"></i> 主题设置</h3>
                        <small><i class="fa fa-tim"></i> 你可以从这里选择和预览主题的布局和样式，这些设置会被保存在本地，下次打开的时候会直接应用这些设置。</small>
                    </div>
                    <div class="skin-setttings">
                        <div class="title">主题设置</div>
                        <div class="setings-item">
                            <span>收起左侧菜单</span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="collapsemenu" />
                                    <label class="onoffswitch-label" for="collapsemenu">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                            <span>固定顶部</span>

                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="fixednavbar" class="onoffswitch-checkbox" id="fixednavbar" />
                                    <label class="onoffswitch-label" for="fixednavbar">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
									<span>
										固定宽度
									</span>

                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="boxedlayout" class="onoffswitch-checkbox" id="boxedlayout" />
                                    <label class="onoffswitch-label" for="boxedlayout">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="title">皮肤选择</div>
                        <div class="setings-item default-skin nb">
									<span class="skin-name">
										<a href="#" class="s-skin-0">
											默认皮肤
										</a>
									</span>
                        </div>
                        <div class="setings-item blue-skin nb">
									<span class="skin-name">
										<a href="#" class="s-skin-1">
											蓝色主题
										</a>
									</span>
                        </div>
                        <div class="setings-item yellow-skin nb">
									<span class="skin-name">
										<a href="#" class="s-skin-3">
											黄色/紫色主题
										</a>
									</span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--右侧边栏结束-->

</div>

<!-- 全局js -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.7"></script>
<script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/contextMenu/jquery.contextMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/js/hplus.js?v=4.1.0"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/contabs.js"></script>

<!-- 第三方插件 -->
<script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>
</body>
</html>
