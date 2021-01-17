<%--
  Created by IntelliJ IDEA.
  User: si.hj
  Date: 2021/1/16
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><!-- head -->
<head>
    <style type="text/css">object {
        outline: none;
    }</style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" media="screen"/>
    <meta name="renderer" content="webkit">
    <title>哈哈共享汽车租赁--首页</title>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <style>
        .announcement {
            height: 34px;
            line-height: 34px;
            background: #fffae8;
            text-align: center;
            color: #c3a853;
            font-size: 14px
        }

        .icon-close-gb, .icon-gb {
            vertical-align: middle;
            margin-top: -2px;
            background-size: 12px 12px;
            width: 12px;
            height: 12px;
            display: inline-block
        }

        .icon-gb {
            background: url(//cli-sta.guazistatic.com/c2c_web/gaungbo_icon.c9dd3ec6f62f087bf7191b8320765248.png) no-repeat;
            margin-right: 10px
        }

        .icon-close-gb {
            background: url(//cli-sta.guazistatic.com/c2c_web/close_icon.6a60703de9f824a8cff6eef325440588.png) no-repeat;
            margin-left: 10px
        }</style>

    <style>
        body .ie7-pop {
            height: 432px;
            margin-top: -216px;
            overflow: hidden
        }

        .ie7-pop-tit {
            line-height: 72px;
            text-align: center;
            font-size: 24px;
            color: #495056
        }

        .ie7-pop-txt {
            font-size: 18px;
            color: #757f89;
            line-height: 54px;
            padding-bottom: 14px;
            text-align: center
        }

        .browser-down-box {
            width: 420px;
            height: 42px;
            margin: 0 auto 27px
        }

        .chrome-btn, .ff-btn {
            width: 193px;
            height: 40px;
            line-height: 40px;
            font-size: 16px;
            color: #22ac38;
            border: 1px solid #22ac38;
            border-radius: 2px;
            text-align: center
        }

        .chrome-btn:hover, .ff-btn:hover {
            text-decoration: none;
            color: #fff;
            background: #22ac38
        }

        .guide-ewm, .guide-ewm-app, .guide-ewm-weixin {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon.690a9b59b3d34c0c07a05657c6a10351.png);
            background-repeat: no-repeat
        }

        .guide-ewm {
            width: 425px;
            height: 217px;
            padding-left: 5px;
            margin: 0 auto;
            background-position: 332px -270px
        }

        .guide-ewm-txt {
            font-size: 14px;
            color: #757f89;
            line-height: 28px
        }

        .guide-ewm-box {
            padding-top: 17px;
            width: 304px;
            height: 132px
        }

        .guide-ewm-app, .guide-ewm-weixin {
            width: 132px;
            height: 132px
        }

        .guide-ewm-weixin {
            background-position: 0 0
        }

        .guide-ewm-app {
            background-position: 0 -135px
        }</style>
    <style>
        a, abbr, acronym, address, applet, b, big, blockquote, body, caption, center, cite, code, dd, del, dfn, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, kbd, label, legend, li, object, ol, p, pre, q, s, samp, small, span, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, tr, tt, u, ul, var {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0
        }

        li, ol, ul {
            list-style: none
        }

        blockquote, q {
            quotes: none
        }

        blockquote:after, blockquote:before, q:after, q:before {
            content: "";
            content: none
        }

        :focus {
            outline: 0
        }

        del {
            text-decoration: line-through
        }

        table {
            border-collapse: collapse;
            border-spacing: 0
        }

        address, cite, code, dfn, em, i, var {
            font-style: normal
        }

        button, input[type=button], input[type=reset], input[type=submit] {
            cursor: pointer;
            -webkit-appearance: none
        }

        .vm {
            vertical-align: middle
        }

        .clearfix:after {
            content: " ";
            display: block;
            clear: both;
            height: 0;
            visibility: hidden
        }

        * + html .clearfix, * html .clearfix {
            zoom: 1
        }

        .fl {
            float: left
        }

        .fr {
            float: right
        }

        body {
            background: #fff
        }

        body, button, input, select, textarea {
            font: 12px/1.5 arial, helvetica, clean, sans-serif
        }

        a {
            text-decoration: none !important;
            color: #24d
        }

        a:hover {
            text-decoration: underline;
            color: #c00
        }</style>
    <style>
        .city-curr i, .header h1 a, .uc, .uc:hover {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon_@2x_s.5dfd8e0395d1a3188c98507b746b6df4.png);
            background-size: 451px 300px
        }

        .ie8 .city-curr i, .ie8 .header h1 a, .ie8 .uc, .ie8 .uc:hover {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon_@1x_s.fb16a94d9aafffcb573139cb98bd4964.png);
            background-repeat: no-repeat
        }

        input::-moz-placeholder {
            color: #acb4bd
        }

        input::-webkit-input-placeholder {
            color: #acb4bd
        }

        #search_keyword:-ms-input-placeholder {
            color: #acb4bd
        }

        input.placeholder {
            color: #acb4bd
        }

        body {
            font: 12px/1.5 PingFang SC, Microsoft YaHei, arial, helvetica, sans-serif
        }

        .header {
            width: 1200px;
            height: 55px;
            margin: 0 auto
        }

        .header h1 {
            float: left
        }

        .header h1 a {
            display: block;
            width: 55px;
            height: 55px;
            text-indent: -9999px;
            background-position: -181px -32px;
            background: url(//cli-sta.guazistatic.com/c2c_web/gr-logo.572ab9991d7a29aa936f4a793ebb9047.png);
            background-size: 100% 100%
        }

        .green-header h1 a {
            background: url(//cli-sta.guazistatic.com/c2c_web/wh-logo.48578367102547ee80527a409862a82c.png);
            background-size: 100% 100%
        }

        .city {
            float: left;
            height: 34px;
            padding: 0 15px;
            margin: 10.5px 0 0 14px;
            border-radius: 2px;
            border: 2px solid transparent;
            background: transparent;
            padding-bottom: 8.5px
        }

        .city.active {
            position: relative;
            z-index: 10
        }

        .city-curr {
            line-height: 34px;
            font-size: 14px;
            cursor: pointer
        }

        .active .city-curr, .city-curr {
            color: #181818
        }

        .city-curr i {
            display: inline-block;
            width: 11px;
            height: 6px;
            background-position: -247px -35px;
            vertical-align: middle;
            margin: 0 0 0 5px
        }

        .active .city-curr i {
            background-position: -283px -35px
        }

        .city-box-parent {
            width: 100%;
            position: absolute;
            top: 55px;
            z-index: 11;
            background: #fff;
            box-shadow: 0 1px 2px 0 hsla(0, 0%, 80%, .5)
        }

        .city-scroll {
            width: 1200px;
            margin: 0 auto
        }

        @media screen and (max-height: 800px) {
            .city-box {
                max-height: 453px;
                overflow-y: scroll
            }
        }

        .city-box-parent.active-top .city-box, .city-box-parent.active .city-box {
            display: block
        }

        .city-box-parent.active-top {
            position: fixed;
            top: 70px
        }

        .city-box {
            display: none;
            overflow: auto
        }

        .active .white-line {
            display: block;
            position: absolute;
            top: 34px;
            left: 0;
            z-index: 20;
            width: 100%;
            height: 1px;
            line-height: 0;
            font-size: 0;
            background: #fff
        }

        .city-box .city-box-left, .city-box .city-box-right {
            width: 50%;
            float: left;
            padding-bottom: 7.5px
        }

        .city-box .city-box-right {
            float: right
        }

        .city-box dl {
            width: 100%;
            overflow: hidden;
            margin-bottom: 10px
        }

        .city-box dl.bdb-n, .city-box dl.bdb-s {
            padding-top: 20px;
            padding-bottom: 20px;
            margin-bottom: 17.5px;
            position: relative
        }

        .city-box dl.bdb-n:after, .city-box dl.bdb-s:after {
            content: "";
            background-color: #e8f0ea;
            height: 1px;
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            transform: scaleY(.5);
            transform-origin: 0 0
        }

        .city-box dt {
            float: left;
            width: 25px;
            line-height: 29px;
            color: #22ab38;
            font-size: 14px
        }

        .city-box dt.green-tit {
            color: #3cb46d;
            width: 43px
        }

        .city-box dd {
            float: left;
            width: 501px;
            line-height: 29px
        }

        .city-box a {
            float: left;
            color: #495056;
            font-size: 14px;
            margin-right: 15px;
            white-space: nowrap
        }

        .city-box a.on, .city-box a:hover {
            text-decoration: none;
            color: #22ac38
        }

        .city-padding-bottom {
            padding-bottom: 16px
        }

        .uc {
            float: right;
            cursor: pointer;
            margin-top: 19px;
            margin-left: 10px;
            font-size: 14px;
            color: #fff;
            padding-left: 24px;
            background-position: 6px -265px;
            position: relative;
            padding-bottom: 11px
        }

        .uc, .uc .uc-my {
            line-height: 16px
        }

        .uc .uc-my {
            text-decoration: none;
            display: inline-block
        }

        .uc-app {
            position: absolute;
            top: 30px;
            right: -20px;
            display: none;
            width: 122px;
            height: auto;
            border: 1px solid #e6e6e6;
            background: #fff;
            z-index: 9999
        }

        .uc-app i {
            position: absolute;
            top: -7px;
            right: 0;
            display: block;
            width: 124px;
            height: 7px;
            background: url(//cli-sta.guazistatic.com/c2c_web/icon.2d94d6e1065080ead0ae67c67e81c694.png) no-repeat 85px -20px
        }

        .uc:hover .uc-app {
            display: block;
            padding: 11px 0
        }

        .uc:hover .uc-app a {
            display: block;
            font-size: 14px;
            color: #495056;
            line-height: 32px;
            text-align: center
        }

        .uc:hover .uc-app a:hover {
            text-decoration: none;
            color: #22ac38
        }

        .header-phone {
            float: right;
            color: #181818;
            font-size: 14px;
            line-height: 16px;
            padding: 0 15px 0 0;
            margin-top: 19px;
            margin-left: 30px;
            border-right: 1px solid #181818
        }

        .green-header .header-phone {
            border-right: 1px solid #fff
        }

        .nav-list {
            float: right;
            width: 700px;
            height: 42px;
            padding-top: 7px
        }

        .nav-list a {
            float: right;
            line-height: 40px;
            margin: 0 20px;
            font-size: 14px;
            color: #fff
        }

        .nav-list a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .nav-list a.active {
            color: #fff;
            text-decoration: none;
            border-bottom: 2px solid #22ac38
        }

        .header-2 {
            box-sizing: border-box;
            background-color: #fcfcfc
        }

        .header-2 .city {
            border: 1px solid transparent
        }

        .header-2 .city.active .city-curr {
            color: #3cb46d
        }

        .header-2 .city-curr {
            color: #181818
        }

        .green-header .city-curr {
            color: #fff
        }

        .green-header .city.active .city-curr {
            font-weight: 700;
            color: #fff
        }

        .header-2 .city-curr i {
            width: 6px;
            height: 3px;
            background: url(//cli-sta.guazistatic.com/c2c_web/down2.d703742c145f11bed5c7dd98b3addfb0.png);
            background-size: 100% 100%
        }

        .green-header .city-curr i {
            background: url(//cli-sta.guazistatic.com/c2c_web/Triangle.1f79e749aad1ff66a62c0b434f283a58.png);
            background-size: 100% 100%
        }

        .header-2 .active .city-curr i {
            width: 6px;
            height: 3px;
            background: url(//cli-sta.guazistatic.com/c2c_web/down.f650f3c93282f9c05c5bbd5dcf2e754b.png);
            background-size: 100% 100%
        }

        .green-header .active .city-curr i {
            background: url(//cli-sta.guazistatic.com/c2c_web/Triangle.1f79e749aad1ff66a62c0b434f283a58.png);
            background-size: 100% 100%
        }

        .header-2 .uc-app {
            box-shadow: 0 2px 5px 0 #e6e6e6
        }

        .header-2 .uc-app a {
            text-align: center
        }

        .header-2 .header-phone {
            color: #181818
        }

        .green-header .header-phone {
            color: #fff
        }

        .header-2 .nav-list a {
            color: #181818
        }

        .green-header .nav-list a {
            color: #fff
        }

        .header-2 .nav-list a.active, .header-2 .nav-list a.active:hover {
            color: #181818;
            text-decoration: none;
            border-bottom: 2px solid #22ac38
        }

        .green-header .nav-list a.active, .green-header .nav-list a.active:hover {
            color: #fff;
            border-bottom: 2px solid #fff
        }

        .header-2 .nav-list a:hover {
            color: #22ac38;
            text-decoration: none;
            border-bottom-color: #22ac38
        }

        .green-header .nav-list a:hover {
            color: #fff;
            border-bottom-color: #fff;
            font-weight: 700
        }

        .header-2 .uc {
            color: #495056;
            background-position: 6px -212px
        }

        .green-header .uc {
            background-position: 6px -268px
        }

        .header-2 .uc:hover, .uc:hover {
            color: #495056;
            background-position: 6px -240px
        }

        .green-header .uc:hover {
            background-position: 6px -268px
        }

        .header-2 .uc .uc-my {
            color: #181818
        }

        .green-header .uc .uc-my {
            color: #fff
        }

        .uc:hover .uc-my {
            color: #23ac3a
        }

        .green-header .uc:hover .uc-my {
            color: #fff;
            font-weight: 700
        }

        .active .choose-city i, .call-back, .choose-city i, .close-box, .close-side, .ewm-app, .ewm-wx, .fb-btn, .footer-logo, .hot-phone i, .logo, .open-box, .totop {
            background-repeat: no-repeat;
            background-image: url(//cli-sta.guazistatic.com/c2c_web/global-3.bddc7dbcd1b47bf88946900826c9abf1.png)
        }

        .top-header {
            height: 70px;
            width: 100%;
            background: #fff;
            position: fixed;
            top: -92px;
            z-index: 20;
            box-shadow: 0 1px 2px 0 hsla(0, 0%, 80%, .5);
            transition: all .5s
        }

        .top-header.show {
            top: 0
        }

        .top-header .header .city-curr, .top-header .header .header-phone, .top-header .header .nav-list a, .top-header .header .uc .uc-my {
            color: #181818
        }

        .top-header .header .city-curr i {
            width: 6px;
            height: 3px;
            background: url(//cli-sta.guazistatic.com/c2c_web/down2.d703742c145f11bed5c7dd98b3addfb0.png) no-repeat;
            background-size: 100% 100%
        }

        .top-header .header .active .city-curr i {
            width: 6px;
            height: 3px;
            background: url(//cli-sta.guazistatic.com/c2c_web/down.f650f3c93282f9c05c5bbd5dcf2e754b.png) no-repeat;
            background-size: 100% 100%
        }

        .top-header .header .uc {
            background-position: 6px -212px
        }

        .top-header .header .uc:hover {
            background-position: 6px -240px;
            color: #22ac38
        }

        .top-header .header .uc .uc-my:hover {
            color: #22ac38
        }

        .top-header .header h1 a {
            width: 55px;
            height: 55px;
            margin-top: 7.5px;
            background: url("https://image.guazistatic.com/gz01190927/18/45/b4d6111897d910602908eb9e0a994a6b.png") no-repeat;
            background-size: 100% 100%
        }

        .top-header .city {
            margin: 18px 0 0 16px
        }

        .top-header .nav-list {
            padding-top: 15px
        }

        .top-header .nav-list a {
            padding-bottom: 12px
        }

        .top-header .header-phone {
            margin-top: 26.5px;
            border-right: 1px solid #181818
        }

        .top-header .uc {
            margin-top: 25.5px
        }

        .top-header .nav-list a:hover {
            color: #22ac38
        }</style>
    <style>
        .footer {
            padding: 50px 0 30px;
            background: #2a2c37
        }

        .company-info {
            width: 1190px;
            height: 90px;
            margin: 0 auto;
            color: #b8b8b8;
            padding-bottom: 70px;
            position: relative
        }

        .footer-logo {
            width: 102px;
            height: 102px;
            background-repeat: no-repeat;
            background-image: url("https://image.guazistatic.com/gz01190923/15/39/f3eebb2bedbd15fc6fb8e3226bf35e44.png");
            background-size: 100% 100%;
            float: left;
            margin-left: 40px;
            _margin-left: 20px
        }

        .phone-email {
            float: left;
            width: 378px;
            padding-left: 30px
        }

        .phone-email p {
            line-height: 22px;
            font-size: 14px;
            margin-bottom: 16px
        }

        .phone-email p i {
            padding-right: 18px
        }

        .phone-email p span {
            display: inline-block;
            font-size: 12px
        }

        .ewm-box {
            float: left;
            width: 85px;
            height: 105px;
            margin-top: 4px;
            margin-right: 30px;
            text-align: center;
            display: block
        }

        .bg-old-ewm, .ewm-box img {
            display: block;
            width: 85px;
            height: 85px
        }

        .bg-old-ewm {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/footer-app.5e5c77f77cb804c3d0b18276b53a52ab.png)
        }

        .bg-new-ewm, .bg-old-ewm {
            background-size: 100%;
            background-position: 50%;
            background-repeat: no-repeat
        }

        .bg-new-ewm {
            display: block;
            width: 85px;
            height: 85px;
            background-image: url(//cli-sta.guazistatic.com/c2c_web/n_webfcp.cd5ef287580128347096795a6eb2c81a.png)
        }

        .ewm-box .ewm-tit {
            line-height: 22px;
            font-size: 14px
        }

        .ewm-box .ewm-tit-tip {
            width: 80px;
            height: 16px;
            background: #22ac38;
            font-family: PingFangSC-Regular;
            font-size: 10px;
            color: #fff;
            display: inline-block;
            line-height: 16px
        }

        .company-info .basic-info {
            float: left;
            width: 390px;
            padding-left: 20px;
            background: transparent;
            margin: 0;
            overflow: hidden
        }

        .info-link {
            line-height: 22px;
            font-size: 14px;
            padding-bottom: 8px
        }

        .info-link a {
            color: #b8b8b8;
            margin-right: 5px
        }

        .info-link a:hover {
            color: #b8b8b8;
            cursor: pointer
        }

        .arc-info {
            line-height: 20px;
            font-family: simhei;
            font-size: 12px
        }

        .protect {
            padding-top: 3px;
            height: 28px;
            line-height: 28px
        }

        .protect-icon-xin315 {
            padding-top: 5px
        }

        .protect .police {
            display: inline-block;
            text-decoration: none;
            color: #939393;
            line-height: 28px;
            padding-left: 24px;
            position: relative;
            font-size: 12px
        }

        .protect .icon-315, .protect .icon-xin, .protect .police:before {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon-foot.8db09594385dc9fbd737a66b0ffc26e3.png);
            display: inline-block
        }

        .protect .police:before {
            content: "";
            width: 20px;
            height: 20px;
            background-position: 0 -62px;
            position: absolute;
            left: 0;
            top: 3px
        }

        .protect .icon-xin {
            float: left;
            background-position: 0 0;
            width: 115px;
            height: 31px;
            margin-right: 20px
        }

        .protect .icon-315 {
            float: left;
            background-position: 0 -31px;
            width: 95px;
            height: 31px
        }

        .instructions-guazi-name {
            width: 1190px;
            color: #666;
            font-size: 12px;
            position: absolute;
            left: 0;
            bottom: 0
        }

        .friendly-link, .instructions-guazi-name {
            height: 28px;
            line-height: 28px;
            margin: 0 auto
        }

        .friendly-link {
            width: 1100px;
            padding: 0 0 0 90px;
            position: relative;
            overflow: hidden
        }

        .friendly-active {
            height: auto
        }

        .friendly-link a {
            color: #666;
            line-height: 28px;
            margin-right: 20px;
            display: inline-block;
            font-size: 12px
        }

        .friendly-link a:hover, .link-tit {
            color: #666
        }

        .link-tit {
            position: absolute;
            left: 0;
            top: 0;
            width: 90px;
            height: 28px;
            font-size: 16px
        }

        .open-box {
            top: 10px;
            background-position: -70px -100px
        }

        .close-box, .open-box {
            position: absolute;
            right: 0;
            display: block;
            width: 16px;
            height: 9px;
            font-size: 0;
            line-height: 0;
            cursor: pointer
        }

        .close-box {
            bottom: 10px;
            background-position: -90px -100px
        }

        .friendly-active .open-box, .friendly-link .close-box {
            display: none
        }

        .friendly-active .close-box {
            display: block
        }

        .seo-foot-txt {
            color: #666;
            width: 1070px;
            overflow: hidden;
            display: block
        }</style>
    <style>
        .list-infoBox {
            position: relative;
            float: left;
            width: 290px;
            height: 290px;
            margin-top: 5px;
            margin-left: 5px;
            background: #fff;
            border: 2px solid #f5f5f5
        }

        .list-infoBox-loading {
            width: 290px;
            height: 290px;
            background-color: #dcdcdc
        }

        .info-img img {
            display: block;
            width: 290px;
            height: 194px
        }

        .info-name {
            display: block;
            padding: 12px 10px 8px
        }

        .info-mile {
            padding: 0 10px;
            font-size: 12px;
            color: #999
        }

        .info-name h2 {
            font-size: 16px;
            font-weight: 400;
            color: #000;
            line-height: 1em;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden
        }

        .info-name:hover {
            text-decoration: none
        }

        .info-name:hover h2 {
            color: #e30
        }

        .info-mile em {
            margin: 0 10px;
            color: #ddd
        }

        .info-price {
            padding: 0 10px
        }

        .price-curr {
            margin-right: 5px;
            font-size: 20px;
            color: #f76367
        }

        .price-curr .unit {
            font-size: 14px;
            font-weight: 400;
            display: inline-block;
            padding-left: 2px;
            vertical-align: middle
        }

        .price-down {
            height: 18px;
            margin-right: 9px;
            padding-right: 2px;
            line-height: 18px;
            color: #ff7e00;
            border: 1px solid #ff7e00
        }

        .price-down em {
            margin-right: 2px;
            padding: 0 2px;
            color: #fff;
            background-color: #ff7e00
        }

        .price-through {
            font-size: 14px;
            color: #999;
            text-decoration: line-through
        }

        .icon-collect, .icon-delete {
            position: absolute;
            right: 10px;
            top: 10px;
            z-index: 5;
            width: 30px;
            height: 30px;
            white-space: nowrap;
            text-indent: -100px;
            overflow: hidden;
            background: url(//cli-sta.guazistatic.com/c2c_web/icon-status.98cbc36ac8866216a54c807c8dc0580e.png) no-repeat 0 -80px;
            cursor: pointer
        }

        .icon-collect.active {
            background-position: -35px -80px
        }

        .icon-delete {
            right: 10px;
            background-position: -70px -80px
        }

        .info-off {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 4;
            width: 290px;
            height: 194px;
            background: rgba(0, 0, 0, .5);
            filter: progid:DXImageTransform.Microsoft.gradient(startcolorstr=#7F000000, endcolorstr=#7F000000)
        }

        .icon-off-order, .icon-off-sale, .icon-off-stop {
            position: absolute;
            top: 59px;
            left: 50%;
            display: none;
            width: 90px;
            height: 76px;
            margin-left: -45px;
            white-space: nowrap;
            text-indent: -200px;
            overflow: hidden;
            background: url(//cli-sta.guazistatic.com/c2c_web/icon-status.98cbc36ac8866216a54c807c8dc0580e.png) no-repeat
        }

        .icon-off-sale {
            background-position: -90px 0
        }

        .icon-off-stop {
            background-position: -185px 0
        }

        .icon-off-order.active, .icon-off-sale.active, .icon-off-stop.active {
            display: block
        }

        .icon-psell {
            position: absolute;
            top: 0;
            left: 0;
            width: 24px;
            height: 32px;
            padding: 4px 8px 0;
            font-size: 12px;
            color: #fff;
            line-height: 14px;
            text-align: center;
            background-color: #f39800
        }

        .right-nav {
            position: fixed;
            top: 0;
            right: 0;
            z-index: 100;
            height: 100%
        }

        .fix-right {
            width: 40px;
            height: 100%;
            background: #2a2c37
        }

        .app-bar span, .fix-icon, .fix-icon-list .icon-sell-txt, .fix-icon-subscribe, .history-bar i, .icon-triangle17x17, .wx-bar span, a.toolbar:after {
            background: url(//cli-sta.guazistatic.com/c2c_web/side-bar@2x.3cde37b723751598f4a9f2d8e95a43f7.png) no-repeat;
            background-size: 259px 361px
        }

        .ie8 .app-bar span, .ie8 .fix-icon, .ie8 .fix-icon-list .icon-sell-txt, .ie8 .fix-icon-subscribe, .ie8 .history-bar i, .ie8 .icon-triangle17x17, .ie8 .wx-bar span, .ie8 a.toolbar:after {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/side-bar@1x.e5bf0431479ee455b32113279a889cd5.png);
            background-repeat: no-repeat
        }

        .ie8 .fix-icon-online, .ie8 .fix-icon-online:hover {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/online_server_people@1x.421ddab95ba65b7e3c216f97b0ee785b.png);
            background-repeat: no-repeat
        }

        .fix-icon-app {
            background-position: -55px 7px
        }

        .fix-icon-app:hover {
            background-position: 10px 7px
        }

        .fix-icon-wechat {
            margin-top: 45px;
            background-position: -55px -35px
        }

        .fix-icon-wechat:hover {
            margin-top: 45px;
            background-position: 10px -35px
        }

        .fix-icon-feedback {
            margin-top: 90px;
            background-position: -55px -120px
        }

        .fix-icon-feedback:hover {
            margin-top: 90px;
            background-position: 10px -120px
        }

        .fix-icon-phone {
            margin-top: 135px;
            background-position: -55px -77px
        }

        .fix-icon-phone:hover {
            margin-top: 135px;
            background-position: 10px -77px
        }

        .fix-icon-history {
            margin-top: 180px;
            background-position: -55px -169px
        }

        .fix-icon-history:hover {
            margin-top: 180px;
            background-position: 10px -169px
        }

        .fix-icon-backtop, .fix-icon-backtop:hover {
            margin-top: 225px;
            background-position: -55px -207px
        }

        .fix-icon-backtop:hover {
            background-position: 10px -207px
        }

        .fix-right:hover .wx-bar {
            display: none
        }

        .app-bar, .feedback-bar, .history-bar, .phone-bar {
            display: none;
            border-radius: 5px;
            box-shadow: 0 0 12px 1px rgba(88, 100, 117, .3)
        }

        .app-bar, .feedback-bar, .history-bar, .phone-bar, .wx-bar {
            background-color: #fff;
            -webkit-border-radius: 5px;
            -webkit-box-shadow: 0 0 12px 1px rgba(88, 100, 117, .3);
            position: absolute;
            font-size: 14px;
            color: #495056
        }

        .wx-bar {
            border-radius: 5px;
            border: 1px solid #d8dde6;
            box-shadow: 0 4px 20px 0 rgba(0, 0, 0, .1)
        }

        .wx-bar:before {
            content: "";
            position: absolute;
            left: 5px;
            background: url(//cli-sta.guazistatic.com/c2c_web/gift.c546b2c2300a94e29b784a61cf03ebf3.png);
            background-size: cover;
            height: 50px;
            width: 138px;
            top: -50px
        }

        .wx-bar__close {
            position: absolute;
            width: 32px;
            height: 32px;
            background: url(//cli-sta.guazistatic.com/c2c_web/close.54ae6a39381205bfeff30aacdb894aa6.png);
            background-size: cover;
            right: 0;
            top: 0;
            transform: translate(50%, -50%)
        }

        .wx-bar__close--hide {
            width: 0;
            height: 0
        }

        .phone-bar {
            top: -3px;
            left: -288px;
            padding: 0 50px;
            height: 50px;
            line-height: 50px;
            text-align: center
        }

        .app-bar {
            left: -260px;
            width: 240px;
            height: 209px
        }

        .app-bar, .wx-bar {
            top: -80px;
            text-align: center
        }

        .wx-bar {
            left: -190px;
            width: 150px;
            height: 195px
        }

        .app-bar span, .wx-bar span {
            display: inline-block;
            width: 117px;
            height: 117px;
            background: url("https://image.guazistatic.com/gz01190923/15/32/8a666805a5ead8519654834eb5e22bba.png") no-repeat;
            background-size: 100% 100%;
            margin-top: 25px
        }

        .wx-bar span {
            background: url("https://image1.guazistatic.com/qn201124145950d6f74fe419a38549b74c4227e02be765.png") no-repeat;
            background-size: 100% 100%;
            margin-top: 20px
        }

        .app-bar p, .wx-bar p {
            padding-top: 10px;
            font-size: 14px
        }

        .wx-bar p {
            padding-top: 0
        }

        .feedback-bar {
            top: -3px;
            left: -156px;
            padding: 0 40px;
            height: 55px;
            line-height: 55px;
            text-align: center
        }

        .history-bar {
            top: -375px;
            left: -671px;
            width: 651px;
            height: 600px;
            border-radius: 3px;
            cursor: default;
            background: #f5f5f7
        }

        .history-bar i {
            position: absolute;
            top: 378px;
            right: -10px;
            width: 10px;
            height: 21px;
            background: url(//cli-sta.guazistatic.com/c2c_web/side-icon.d70143f08bc2e54dace967c4409e6f44.png) no-repeat;
            background-position: 0 -350px
        }

        .history-loading, .history-source, .history-source-no {
            display: none
        }

        .fix-icon {
            position: absolute;
            right: 0;
            top: 32%;
            z-index: 110;
            width: 40px;
            height: 40px;
            cursor: pointer
        }

        .fix-icon:hover {
            background-color: #3f4251
        }

        .fix-icon-online, .fix-icon-online:hover {
            display: none;
            height: 50px;
            margin-top: -73px;
            background-position: -136px -308px;
            background-color: transparent
        }

        .list .fix-icon-backtop {
            margin-top: 270px;
            background-position: -55px -203px
        }

        .fix-icon-subscribe {
            display: none;
            margin-top: 230px;
            background-position: -55px -240px
        }

        .list .fix-icon-subscribe {
            background-position: -55px -249px;
            margin-top: 225px
        }

        .fix-icon-subscribe:hover {
            background-position: 10px -240px
        }

        .list .fix-icon-subscribe:hover {
            background-position: 10px -249px
        }

        .fix-icon-list, .fix-icon-list:hover {
            display: none;
            width: 57px;
            height: 47px;
            margin-top: -88px;
            right: -6px;
            background: none
        }

        .fix-icon-list .icon-money {
            background: url(//cli-sta.guazistatic.com/c2c_web/side-icon.d70143f08bc2e54dace967c4409e6f44.png) no-repeat;
            top: -15px;
            z-index: 105;
            background-position: 0 -450px
        }

        .fix-icon-list .icon-money, .fix-icon-list .icon-sell-txt {
            position: absolute;
            left: 2px;
            display: block;
            width: 50px;
            height: 53px
        }

        .fix-icon-list .icon-sell-txt {
            top: 0;
            z-index: 110;
            background-position: -136px 0
        }

        .fix-icon-list:hover {
            background-color: transparent
        }

        .fix-icon-list:hover .icon-money {
            animation: icon-money 1s ease .4s
        }

        @keyframes icon-money {
            0% {
                top: 0;
                transform: rotateY(0deg)
            }
            20% {
                top: -35px;
                transform: rotateY(0deg)
            }
            40% {
                top: -40px;
                transform: rotateY(-120deg)
            }
            60% {
                top: -35px;
                transform: rotateY(-240deg)
            }
            80% {
                top: -40px;
                transform: rotateY(-1turn)
            }
            to {
                top: 0;
                transform: rotateY(-1turn)
            }
        }

        .detail .fix-icon-online, .list .fix-icon-list, .list .fix-icon-subscribe {
            display: block
        }

        .fix-icon-online, .fix-icon-online:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/online_server_people@2x.ccabb3cc0bfa52a02851ce5afbb4796f.png) no-repeat;
            background-size: 50px 53px;
            width: 50px;
            height: 53px
        }

        .fix-icon-app:hover .app-bar, .fix-icon-feedback:hover .feedback-bar, .fix-icon-history .history-bar.active, .fix-icon-phone:hover .phone-bar, .fix-icon-wechat:hover .wx-bar, .history-loading.active, .history-source-no.active, .history-source.active {
            display: block
        }

        .history-tipno {
            font-size: 30px;
            color: #757f89;
            text-align: center;
            line-height: 365px
        }

        .history-title {
            font-size: 20px;
            color: #495056;
            font-weight: 400;
            padding: 29px 0 19px 25px
        }

        .history-scroll {
            position: relative;
            height: 456px;
            padding-left: 20px;
            overflow-y: auto
        }

        .history-btn {
            padding-top: 20px;
            text-align: center
        }

        .history-btn a, .history-btn a:hover {
            display: inline-block;
            font-size: 16px;
            color: #495056;
            text-align: center;
            text-decoration: none;
            border-radius: 2px
        }

        .icon-triangle17x17 {
            background-position: -212px -14px;
            width: 17px;
            height: 17px;
            display: inline-block;
            vertical-align: top;
            margin-left: 5px;
            margin-top: 4px
        }

        .history-btn2 {
            text-align: center
        }

        .history-btn2 a {
            font-size: 16px;
            color: #22ac38
        }

        .history-btn2 a:hover {
            color: #e30;
            text-decoration: none
        }

        .side-bar-line, .side-bar-line:hover {
            background-color: transparent;
            margin-top: 180px;
            height: 2px;
            line-height: 0;
            font-size: 0;
            background-position: 0 -520px
        }

        a.toolbar {
            width: 26px;
            height: 74px;
            background-color: #434857;
            color: #fff;
            position: absolute;
            right: 0;
            top: 45%;
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
            text-align: center;
            line-height: 14px;
            padding-top: 10px;
            display: none
        }

        a.toolbar:hover {
            cursor: pointer;
            text-decoration: none
        }

        a.toolbar:after {
            content: "";
            width: 6px;
            height: 11px;
            display: inline-block;
            position: absolute;
            bottom: 15px;
            left: 10px;
            background-position: -252px -18px
        }

        .toolbar:hover {
            color: #fff
        }

        .w1280 .fix-right {
            display: none
        }

        .click-active .fix-right, .w1280 .toolbar {
            display: block
        }

        .click-active .toolbar {
            right: 40px
        }

        .click-active .toolbar:after {
            background-position: -252px -1px
        }

        .history-source .list-infoBox {
            position: relative;
            float: left;
            width: 285px;
            height: 314px;
            margin: 0 15px 20px 5px;
            background: #fff;
            border: 1px solid #f5f5f7
        }

        .history-source .list-infoBox:hover {
            border: 1px solid #e6e6e6;
            color: #495056;
            text-decoration: none;
            box-shadow: 0 0 5px 2px #e6e6e6
        }

        .history-source .info-img img {
            display: block;
            width: 285px;
            height: 190px
        }

        .history-source .info-name {
            display: block;
            padding: 25px 20px 8px
        }

        .history-source .info-mile {
            padding: 0 20px;
            font-size: 14px;
            color: #a5abb2
        }

        .history-source .info-price {
            padding: 0 10px
        }</style>
    <style>
        .pop-box-feed {
            margin: -275px 0 0 -400px;
            width: 800px;
            height: 550px
        }

        .pop-box-feedsucc {
            margin: -260px 0 0 -400px;
            width: 800px;
            height: 520px
        }

        .feed-content, .feed-content2 {
            display: none
        }

        .feed-content2.active, .feed-content.active {
            display: block;
            padding: 0 66px 0 48px;
            font-family: microsoft yahei;
            font-size: 16px
        }

        .fb-suc-txt {
            padding-top: 125px;
            text-align: center;
            font-size: 20px;
            color: #666;
            line-height: 32px
        }

        .feed-form {
            margin: 27px 0 0;
            overflow: hidden
        }

        .feed-tit {
            font: 24px/70px microsoft yahei;
            color: #495056;
            text-align: center
        }

        .feed-tit2 {
            padding-top: 17px;
            font-size: 18px;
            color: #757f89
        }

        .feed-textarea, .feed-textarea2 {
            position: relative;
            overflow: hidden
        }

        .feed-textarea2 {
            margin-top: 13px
        }

        .feed-textarea2 textarea, .feed-textarea textarea {
            float: left;
            width: 658px;
            height: 118px;
            padding: 6px 10px;
            font-size: 16px;
            font-family: microsoft yahei;
            border: 1px solid #bec6ce;
            border-radius: 3px
        }

        .feed-textarea2 textarea {
            height: 40px;
            line-height: 40px
        }

        .feed-textarea2.active textarea, .feed-textarea.active textarea {
            border: 1px solid #ff7e00
        }

        .feed-textarea2 textarea::-moz-placeholder, .feed-textarea textarea::-moz-placeholder {
            color: #a5abb2
        }

        .feed-textarea2 textarea::-webkit-input-placeholder, .feed-textarea textarea::-webkit-input-placeholder {
            color: #a5abb2
        }

        .feed-textarea2 textarea:-ms-input-placeholder, .feed-textarea textarea:-ms-input-placeholder {
            color: #a5abb2
        }

        .feed-btn {
            display: block;
            width: 410px;
            height: 50px;
            border-radius: 2px;
            background: #22ac38;
            border: none;
            color: #fff;
            font-size: 20px;
            margin: 0 auto
        }

        .feed-btn:hover {
            background: #179500
        }

        .feed-content2 .feed-btn {
            width: 130px;
            margin-top: 166px
        }

        .text-limit {
            position: absolute;
            right: 20px;
            bottom: 10px;
            color: #a5abb2
        }

        .feed-selectlist {
            width: 100%;
            padding-top: 2px;
            padding-bottom: 24px
        }

        .feed-selectlist li {
            float: left;
            width: 136px;
            margin-top: 10px;
            color: #495056;
            cursor: pointer
        }

        .ficon-radio {
            display: inline-block;
            width: 16px;
            height: 16px;
            margin-top: 3px;
            margin-right: 5px;
            vertical-align: top;
            border: 2px solid #d8dde5;
            border-radius: 50%;
            cursor: pointer
        }

        .ficon-radio i {
            float: left;
            width: 10px;
            height: 10px;
            margin: 3px 0 0 3px;
            border-radius: 50%
        }

        .feed-selectlist .active .ficon-radio i {
            background-color: #22ac38
        }

        .feed-error-tip {
            height: 50px;
            line-height: 50px;
            text-align: center;
            font-size: 14px;
            color: #ff7e00
        }</style>
    <style>
        .pop-box {
            position: fixed;
            top: 50%;
            left: 50%;
            z-index: 2201;
            margin: -275px 0 0 -400px;
            width: 800px;
            height: 550px;
            box-sizing: border-box;
            background: #fff;
            border: 1px solid #a8abae;
            box-shadow: 0 1px 4px 0 rgba(0, 0, 0, .2);
            border-radius: 8px;
            -webkit-border-radius: 8px;
            display: none
        }

        .pop-box.active, .pop-box.show {
            display: block
        }

        .pop-close {
            position: absolute;
            top: -8px;
            right: -8px;
            width: 35px;
            height: 35px;
            cursor: pointer;
            background: url(//cli-sta.guazistatic.com/c2c_web/Close.46949fb07ade56e60b08cfa031a79609.png) no-repeat 50%;
            background-size: 100%
        }

        input::-moz-placeholder {
            color: transparent
        }

        input::-webkit-input-placeholder {
            color: transparent
        }

        .pop-mask {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 2000;
            background: #000;
            opacity: .8;
            filter: alpha(opacity=80)
        }

        .pop-mask.active {
            display: block
        }

        .pop-tit {
            padding-left: 60px
        }

        .free-phone, .pop-tit {
            line-height: 130px;
            font-size: 30px;
            color: #495056
        }

        .free-phone {
            text-align: center
        }

        .free-phone em {
            color: #22ac38
        }

        .p-error {
            height: 50px;
            line-height: 50px;
            text-align: center;
            font-size: 14px;
            color: #ff7e00
        }

        .sub-btn {
            display: block;
            width: 410px;
            height: 50px;
            border-radius: 2px;
            background: #22ac38;
            border: none;
            color: #fff;
            font-size: 20px;
            margin: 0 auto;
            font-family: microsoft yahei
        }

        .sub-btn:hover {
            background: #179500
        }

        .pop-submit-sucess {
            text-align: center;
            height: 420px
        }

        .pop-tit-submit-sucess {
            color: #2a9f33;
            font-size: 36px;
            text-align: center;
            line-height: 38px;
            padding-top: 40px;
            padding-bottom: 12px
        }

        .pop-tit-submit-sucess .icon_green_right {
            background: url(//cli-sta.guazistatic.com/c2c_web/icon_green_right.2f0e4e7b4084e18dbb274b241d35da5f.png) no-repeat;
            width: 32px;
            height: 32px;
            display: inline-block;
            vertical-align: middle;
            margin-top: -5px;
            margin-right: 15px
        }

        .pop-tit-small {
            font-size: 14px;
            color: #7c808d;
            line-height: 16px;
            padding-bottom: 38px;
            text-align: center;
            margin: 0 38px;
            border-bottom: 1px solid #e5e5e5;
            margin-bottom: 37px
        }

        .pop-tit-con {
            font-size: 24px;
            color: #222937;
            line-height: 28px;
            margin-bottom: 26px
        }

        .pop-tit-con span {
            color: #f86234
        }

        .pop-con-list {
            text-align: center;
            width: 530px;
            margin: 0 auto;
            padding-bottom: 27px
        }

        .pop-con-list li {
            line-height: 20px;
            font-size: 16px;
            color: #222937;
            width: 50%;
            float: left;
            padding-bottom: 12px
        }

        .pop-con-list li i {
            display: inline-block;
            width: 6px;
            height: 6px;
            background: #28b342;
            border-radius: 3px;
            margin-right: 7px;
            vertical-align: middle
        }

        .pop-con-list li .fc-org {
            color: #f86234
        }

        .pop-con-list li .graytext {
            color: #7c808d;
            font-size: 14px
        }

        .pop-pricedetail {
            width: 600px;
            height: 269px;
            margin-left: -300px;
            margin-top: -135px
        }

        .pop-pricedetail .pop-tit {
            margin: 0 0 6px
        }

        .pop-pricedetail .pricedetail-con {
            padding: 0 34px;
            font-size: 14px;
            color: #495056;
            line-height: 24px
        }

        .pricedetail-con {
            position: relative
        }

        .pricedetail-con a.btn-lookdetail, .pricedetail-con a.btn-lookdetail:hover {
            position: absolute;
            right: 34px;
            bottom: -24px;
            color: #22ac38
        }</style>
    <style>
        .pop-login {
            margin: -215px 0 0 -400px;
            width: 800px;
            height: 450px
        }

        .phone-login {
            padding: 0 182px 35px
        }

        .phone-login li {
            height: 46px;
            padding-bottom: 15px;
            display: flex;
            display: -webkit-flex;
            justify-content: space-between;
            align-items: center
        }

        .phone-login-tit {
            font-size: 14px;
            color: #495056;
            line-height: 14px;
            width: 86px
        }

        .phone-login-input {
            flex: 1;
            width: 305px;
            height: 24px;
            line-height: 20px;
            padding: 10px 15px 10px 30px;
            border: 1px solid #f5f5f7;
            font-size: 14px;
            color: #495056;
            font-family: microsoft yahei;
            background: #f5f5f7;
            border-radius: 4px;
            -webkit-border-radius: 4px
        }

        .phone-login-input.phone-login-code {
            width: 153px
        }

        .get-code {
            width: 120px;
            height: 46px;
            background: #f5f5f7;
            border: none;
            border-radius: 4px;
            -webkit-border-radius: 4px;
            font-size: 16px;
            margin-left: 15px;
            color: #8a8d96;
            font-family: microsoft yahei
        }

        .get-code:hover {
            color: #3cb46d;
            background: #e8f7eb
        }

        .cursor {
            background: #fff;
            border: 1px solid #e0e4e4
        }

        .get-code.getting-code, .get-code.getting-code:hover {
            background: #e6e6e6;
            cursor: default
        }

        .phone-login-input.error {
            border: 1px solid #ff7e00
        }

        .pop-login .free-phone {
            height: 16px;
            line-height: 16px;
            font-size: 16px;
            text-align: center;
            color: #8a8d96;
            margin-bottom: 10px
        }

        .pop-login .free-phone em {
            color: #22ac38
        }

        .agree-text {
            text-align: center;
            color: #8a8d96;
            font-size: 12px;
            line-height: 12px
        }

        .agree-text a {
            color: #22ac38
        }

        .pop-login .p-error {
            height: 40px;
            line-height: 40px;
            text-align: center;
            font-size: 14px;
            color: #ff7e00;
            margin-top: -40px
        }

        .sub-btn, .sub-btn:hover {
            display: block;
            width: 150px;
            height: 55px;
            border: none;
            font-size: 16px;
            margin: 0 auto;
            font-family: microsoft yahei;
            background: #3cb46d;
            border-radius: 4px;
            -webkit-border-radius: 4px;
            color: #fff;
            margin-bottom: 15px
        }

        .sub-btn:hover {
            background: #179500;
            color: #fff;
            text-decoration: none
        }</style>
    <style>
        .crumbs-search {
            height: 54px
        }

        .crumbs {
            float: left;
            line-height: 54px;
            font-size: 14px;
            color: #a5abb2
        }

        .crumbs a {
            color: #495056
        }

        .crumbs a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .search {
            float: right;
            width: 280px;
            height: 34px;
            margin-top: 10px
        }

        .search.active {
            position: relative
        }

        .search-box {
            width: 278px;
            height: 32px;
            border: 1px solid #e6e6e6
        }

        .search.active .search-box {
            border: 1px solid #22ac38
        }

        .search-input {
            float: left;
            width: 220px;
            height: 32px;
            border: none;
            line-height: 32px;
            padding: 0 10px;
            font-size: 14px;
            color: #495056;
            font-family: Microsoft Yahei, arial, "sans-serif"
        }

        .search-btn {
            float: right;
            width: 37px;
            height: 32px;
            background-color: transparent;
            border: none
        }

        .search-btn, .search.active .search-btn {
            background-position: 0 0
        }

        .search-btn:hover, .search.active .search-btn:hover {
            background-position: 0 -32px
        }

        body .gj_sys_autoc_rs {
            height: auto !important;
            width: 278px !important;
            left: -1px !important;
            top: 0 !important;
            padding: 5px 0;
            z-index: 98;
            border: 1px solid #22ac38
        }

        body .gj_sys_autoc_rs ul {
            padding: 0
        }

        body .gj_sys_autoc_rs ul li {
            height: 26px;
            line-height: 26px;
            font-size: 14px;
            text-indent: 10px;
            color: #495056;
            cursor: pointer;
            padding: 0
        }

        body .gj_sys_autoc_rs ul li.gj_sys_autoc_ov {
            background: #22ac38;
            color: #fff
        }

        body .gj_sys_autoc_rs ul li .hot-tip, body .gj_sys_autoc_rs ul li:hover .hot-tip {
            height: 26px;
            line-height: 26px;
            display: block;
            background: #f8f8f8;
            font-size: 13px;
            text-indent: 10px;
            margin: 0 auto;
            cursor: default
        }

        body .gj_sys_autoc_rs ul li span {
            color: #a5abb2
        }</style>
    <style>
        .screen {
            width: 1198px;
            border: 1px solid #e6e6e6;
            border-bottom: none
        }

        .screen dl {
            border-bottom: 1px solid #e6e6e6;
            min-height: 50px;
            position: relative
        }

        .screen dt {
            float: left;
            width: 70px;
            height: 100%;
            position: absolute;
            line-height: 50px;
            font-size: 14px;
            color: #7a838d;
            text-align: center;
            background: #fafafa
        }

        .screen dd {
            float: right;
            width: 1128px
        }

        .dd-top {
            height: 20px;
            padding: 15px 0 15px 6px
        }

        .dd-top .a-box {
            float: left;
            width: 940px;
            height: 20px;
            overflow: hidden
        }

        .dd-top a {
            float: left;
            height: 20px;
            font-size: 14px;
            line-height: 20px;
            padding: 0 6px;
            color: #495056;
            margin: 0 8px
        }

        .dd-top a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .dd-top a.active {
            color: #fff;
            background: #22ac38;
            text-decoration: none
        }

        .dd-btn {
            float: right;
            height: 20px;
            line-height: 20px;
            font-size: 14px;
            padding: 0 7px;
            color: #495056;
            cursor: pointer
        }

        .dd-btn:hover {
            color: #22ac38
        }

        .dd-btn i {
            display: inline-block;
            width: 11px;
            height: 6px;
            margin-left: 4px;
            font-size: 0;
            line-height: 0;
            background-position: -40px 0;
            vertical-align: 2px
        }

        .dd-btn.active i {
            background-position: -40px -10px
        }

        .dd-all {
            width: 1128px;
            border-top: 1px solid #e6e6e6
        }

        .dd-all ul {
            width: 350px;
            padding: 20px 0 0 20px;
            float: left
        }

        .dd-all li {
            overflow: hidden;
            padding-bottom: 20px
        }

        .dd-all label {
            float: left;
            width: 20px;
            height: 24px;
            line-height: 24px;
            color: #22ac38;
            font-size: 14px;
            font-weight: 700
        }

        .dd-all p {
            float: left;
            width: 330px
        }

        .dd-all a {
            float: left;
            height: 24px;
            line-height: 24px;
            margin-right: 15px;
            font-size: 14px;
            color: #495056
        }

        .dd-all a:hover {
            text-decoration: none;
            color: #22ac38
        }

        .dd-car {
            width: 1128px;
            border-top: 1px solid #e6e6e6
        }

        .dd-car ul {
            padding: 20px 0 0 20px
        }

        .dd-car li {
            float: left;
            width: 550px;
            overflow: hidden;
            padding-bottom: 20px
        }

        .dd-car label {
            float: left;
            width: 56px;
            padding-right: 8px;
            text-align: right;
            line-height: 24px;
            font-size: 14px;
            color: #22ac38;
            font-weight: 700
        }

        .dd-car p {
            float: left;
            width: 485px
        }

        .dd-car a {
            float: left;
            height: 24px;
            line-height: 24px;
            margin-right: 15px;
            font-size: 14px;
            color: #495056
        }

        .dd-car a:hover {
            text-decoration: none;
            color: #22ac38
        }

        .screen-price {
            width: 38px;
            border: 1px solid #e6e6e6;
            font-size: 12px;
            margin-top: -1px
        }

        .screen-em, .screen-price {
            float: left;
            height: 20px;
            line-height: 20px;
            padding: 0 5px;
            color: #495056
        }

        .screen-em {
            display: inline-block;
            font-size: 14px
        }

        .price-btn {
            float: left;
            width: 54px;
            height: 22px;
            line-height: 18px;
            font-size: 12px;
            margin-top: -1px;
            margin-left: 5px;
            background: #f6fcf7;
            color: #22ac38;
            border: 1px solid #22ac38
        }

        .dd-more {
            float: left;
            width: 1050px;
            padding: 6px 0 6px 14px
        }

        .dd-more li {
            float: left;
            margin: 5px 12px 5px 0
        }

        .dd-more li.hidden {
            display: none
        }

        .dd-more + span {
            margin-top: 15px
        }

        .dd-more li.active {
            position: relative
        }

        .dd-sel {
            height: 26px;
            line-height: 26px;
            padding: 0 5px;
            font-size: 14px;
            color: #495056;
            width: 78px;
            background: #fff;
            border: 1px solid #e6e6e6;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .dd-sel-disabled {
            color: #aaa;
            cursor: default
        }

        .dd-sel-100 {
            width: 88px
        }

        .dd-sel-110 {
            width: 100px
        }

        li.active .dd-sel {
            border: 1px solid #22ac38
        }

        .dd-sel i {
            float: right;
            width: 11px;
            height: 6px;
            line-height: 0;
            font-size: 0;
            margin-top: 10px;
            background-position: -40px 0
        }

        li.active .dd-sel i {
            background-position: -40px -10px
        }

        .dd-option {
            display: none;
            position: absolute;
            top: 27px;
            left: 0;
            z-index: 21;
            width: 88px;
            height: auto;
            padding: 5px 0;
            background: #fff;
            border: 1px solid #22ac38
        }

        .dd-option-100 {
            width: 98px
        }

        .dd-option-110 {
            width: 110px
        }

        .dd-option a, li.active .dd-option {
            display: block
        }

        .dd-option a {
            padding: 0 0 0 5px;
            height: 26px;
            line-height: 26px;
            color: #495056;
            font-size: 14px
        }

        .dd-option a:hover {
            background: #22ac38;
            color: #fff;
            text-decoration: none
        }

        .dd-option.fixed-width a {
            width: 80px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .dd-color {
            display: none;
            position: absolute;
            top: 26px;
            left: 0;
            z-index: 21;
            width: 188px;
            height: auto;
            padding: 5px 0;
            overflow: hidden;
            background: #fff;
            border: 1px solid #22ac38
        }

        li.active .dd-color {
            display: block
        }

        .dd-color a {
            float: left;
            padding-left: 5px;
            width: 89px;
            line-height: 26px;
            color: #495056;
            font-size: 14px
        }

        .dd-color a:hover {
            background: #22ac38;
            color: #fff;
            text-decoration: none
        }

        .dd-color i {
            float: left;
            width: 10px;
            height: 10px;
            margin: 8px 5px 0 0;
            line-height: 0;
            font-size: 0
        }

        .dd-color i.icon-black {
            background: #000
        }

        .dd-color i.icon-grey {
            background: #c9c7c5
        }

        .dd-color i.icon-grey2 {
            background: #666
        }

        .dd-color i.icon-red {
            background: #cc1c00
        }

        .dd-color i.icon-blue {
            background: #003298
        }

        .dd-color i.icon-orange {
            background: #fd8301
        }

        .dd-color i.icon-green {
            background: #21ab38
        }

        .dd-color i.icon-brown {
            background: #82371d
        }

        .dd-color i.icon-purple {
            background: #7d27bc
        }

        .dd-color i.icon-champagne {
            background: #b39665
        }

        .dd-color i.icon-yellow {
            background: #fed601
        }

        .dd-color i.icon-multicolor {
            background-position: -55px -20px
        }

        .dd-color i.icon-other {
            background-position: -55px -30px
        }

        .dd-color i.icon-white {
            width: 8px;
            height: 8px;
            border: 1px solid #e6e6e6;
            background: #fff
        }

        .screen-result {
            padding: 8px 0;
            height: auto;
            overflow: hidden
        }

        .result-p1, .result-p2, .result-p3 {
            float: left;
            padding: 0 3px;
            height: 30px;
            line-height: 30px;
            font-size: 14px;
            color: #a5abb2
        }

        .result-p1 {
            width: 79px
        }

        .result-p2 a {
            color: #495056;
            margin-left: 10px;
            margin-right: 14px
        }

        .result-p2 a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .result-p3 {
            color: #a5abb2
        }

        .result-li {
            float: left;
            max-width: 850px
        }

        .result-li li {
            float: left;
            margin: 2px 4px 2px 0;
            height: 24px;
            line-height: 24px;
            padding: 0 5px 0 8px;
            border: 1px solid #e6e6e6;
            font-size: 14px;
            cursor: pointer
        }

        .result-li li:hover {
            border-color: #22ac38
        }

        .result-li li a {
            color: #22ac38
        }

        .result-li li a:hover {
            text-decoration: none;
            color: #22ac38
        }

        .result-li i {
            float: right;
            width: 8px;
            height: 8px;
            line-height: 0;
            font-size: 0;
            margin-top: 8px;
            margin-left: 5px;
            background-position: -65px -100px
        }

        .result-li li:hover i {
            background-position: -55px -10px
        }

        .result-li span {
            color: #495056
        }

        .list-filter {
            height: 57px;
            padding-top: 5px;
            margin-bottom: 10px;
            border-bottom: 1px solid #e6e6e6;
            box-sizing: border-box
        }

        .list-tab {
            float: left
        }

        .list-tab a {
            float: left;
            height: 46px;
            line-height: 46px;
            padding: 3px 10px 0;
            font-size: 22px;
            color: #495056
        }

        .list-tab a:hover {
            text-decoration: none
        }

        .list-tab em {
            float: left;
            width: 10px;
            height: 16px;
            border-left: 1px solid #e6e6e6;
            margin-left: 10px;
            margin-top: 18px
        }

        .list-tab a.active {
            border-bottom: 3px solid #22ac38
        }

        .list-tab a.loan {
            position: relative
        }

        .loan i {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon-jian.5ba4eb908a2f0e7b623d6f37f0bd1d33.png);
            background-size: 23px 18px;
            background-repeat: no-repeat;
            position: absolute;
            top: 17px;
            right: -25px;
            display: block;
            width: 23px;
            height: 18px
        }

        .list-sort {
            width: 470px;
            height: 28px;
            margin-top: 12px
        }

        .hot-screen, .list-sort {
            float: right
        }

        .hot-screen.active {
            position: relative
        }

        .hot-sel {
            height: 26px;
            line-height: 26px;
            padding: 0 8px;
            font-size: 14px;
            color: #495056;
            width: 72px;
            border: 1px solid #e6e6e6;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .hot-sel i {
            float: right;
            width: 9px;
            height: 9px;
            line-height: 0;
            font-size: 0;
            margin-top: 8px;
            background-position: -55px 0
        }

        .hot-option, .hot-screen.active .hot-sel {
            border: 1px solid #22ac38
        }

        .hot-option {
            display: none;
            position: absolute;
            z-index: 20;
            top: 27px;
            left: 0;
            width: 88px;
            padding: 5px 0;
            overflow: hidden;
            background: #fff
        }

        .hot-screen.active .hot-option {
            display: block
        }

        .hot-option a {
            display: block;
            height: 26px;
            line-height: 26px;
            padding: 0 5px;
            color: #495056;
            font-size: 14px
        }

        .hot-option a:hover {
            color: #fff;
            background: #22ac38;
            text-decoration: none
        }

        .hot-option i {
            float: left;
            width: 12px;
            height: 12px;
            margin: 7px 5px 0 0;
            line-height: 0;
            font-size: 0;
            background-position: -40px -40px
        }

        .hot-option i.on {
            background-position: -40px -55px
        }

        .sort-a {
            float: right;
            width: 72px;
            height: 18px;
            margin-top: 5px;
            line-height: 18px;
            font-size: 14px;
            text-align: center;
            color: #495056;
            cursor: pointer;
            border-left: 1px solid #e6e6e6
        }

        .sort-a.active, .sort-a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .sort-a i {
            display: inline-block;
            width: 7px;
            height: 9px;
            margin-left: 5px;
            background-position: -65px -110px
        }

        .sort-a i.green-top {
            background-position: -65px -120px
        }

        .sort-a i.green-bottom {
            background-position: -65px -130px
        }

        .list-sort .sort-a:last-child {
            border: none
        }</style>
    <style>
        .carlist {
            width: 1220px;
            margin-left: -10px;
            margin-bottom: 20px
        }

        .carlist li {
            float: left;
            margin-bottom: 10px
        }

        .carlist li a {
            display: block;
            width: 287px;
            height: 287px;
            padding: 9px 8px;
            border: 1px solid transparent;
            position: relative
        }

        .carlist img {
            width: 285px;
            height: 190px;
            border: 1px solid #e9e9e9
        }

        .carlist li a:hover {
            border: 1px solid #e6e6e6;
            color: #495056;
            text-decoration: none;
            box-shadow: 0 0 5px 2px #e6e6e6
        }

        .carlist li a.car-a .t {
            font-size: 17px;
            color: #495056;
            font-weight: 400;
            padding: 1px 0 6px 4px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .carlist li a.car-a .t-i {
            color: #a5abb2;
            font-size: 14px;
            padding-left: 4px;
            padding-bottom: 2px
        }

        .carlist li a.car-a .t-i .icon-pad {
            display: inline-block;
            font-size: 12px;
            width: 14px;
            text-align: center;
            vertical-align: top;
            line-height: 20px
        }

        .carlist li .t-price {
            font-size: 20px;
            color: #f95523;
            padding-left: 4px
        }

        .t-price {
            height: 30px;
            overflow: hidden
        }

        .t-price p {
            float: left;
            line-height: 30px
        }

        .t-price em, .t-price span {
            font-size: 14px
        }

        .t-price em {
            float: left;
            margin-left: 10px;
            margin-top: 7px;
            color: #a5abb2
        }

        .t-price em.line-through {
            text-decoration: line-through
        }

        .t-price i {
            float: right;
            width: 46px;
            height: 21px;
            line-height: 21px;
            text-align: center;
            font-size: 12px;
            margin: 5px 0 0 5px
        }

        .t-price i.i-orange {
            color: #ff9650;
            background: #ffeeda
        }

        .t-price i.i-green {
            color: #3fc56e;
            background: #e8f6ed
        }

        .t-price i.i-red {
            color: #f88368;
            background: #ffeae5
        }

        .t-price i.i-blue {
            color: #d7a844;
            background: #fcf2d5
        }

        .icon-new, .icon-sale {
            position: absolute;
            display: block;
            width: 60px;
            height: 55px;
            text-align: center;
            color: #fff;
            top: 5px;
            left: 11px;
            font-size: 12px;
            line-height: 18px;
            padding: 8px 0 10px
        }

        .icon-sale {
            height: 40px;
            line-height: 17px;
            padding: 7px 0 10px
        }

        .icon-new {
            background-position: -36px -100px;
            line-height: 48px;
            padding: 0
        }

        .icon-sale {
            background-position: -100px -100px
        }

        .icon-sale span {
            font-size: 14px
        }

        .transfer-city {
            position: absolute;
            right: 9px;
            top: 178px;
            display: inline-block;
            height: 22px;
            line-height: 22px;
            padding: 0 8px;
            background: #4b4c4b;
            background: rgba(0, 0, 0, .5);
            font-size: 14px;
            color: #fff
        }

        .loading {
            height: 36px;
            line-height: 36px;
            padding: 10px 0 20px;
            font-size: 14px;
            color: #a5abb2;
            text-align: center;
            background: url(//cli-sta.guazistatic.com/c2c_web/loading.3e26b40fa76d3d7cd02322520d6f55f3.gif) no-repeat top
        }

        .pageLink {
            margin: 0 0 30px;
            clear: both;
            text-align: center
        }

        .pageLink li {
            display: inline;
            margin: 0 0 0 5px
        }

        .pageLink li a {
            background: #fafafa;
            border: 1px solid #e6e6e6;
            width: 36px;
            height: 36px;
            line-height: 36px;
            font-size: 14px;
            color: #495056;
            text-align: center;
            vertical-align: top;
            display: inline-block;
            font-weight: 400
        }

        .pageLink li a:hover {
            background: #22ac38;
            border-color: #22ac38;
            color: #fff;
            text-decoration: none
        }

        .pageLink li.link-on a {
            border: 1px solid #fff;
            background: #fff;
            color: #22ac38
        }

        .pageLink li a span {
            background: none;
            border: none;
            display: inline-block
        }

        .pageLink li a.next, .pageLink li a.prev {
            width: 83px
        }

        .pageLink li a.next em {
            margin-left: 6px
        }

        .pageLink li a.next em, .pageLink li a.prev em {
            font-family: simsun;
            font-size: 15px;
            font-weight: 700
        }

        .pageLink li a.prev em {
            margin-right: 6px
        }

        .pageLink li.point a, .pageLink li.point a:hover {
            border: none;
            background: none;
            color: #495056
        }</style>
    <style>
        .ranklist {
            padding-top: 5px
        }

        .ranklist2 {
            padding: 0 0 10px
        }

        .ranklist-tit {
            height: 50px;
            line-height: 50px;
            font-size: 22px;
            color: #495056;
            border-bottom: 1px solid #e6e6e6
        }

        .ranklist-tit span {
            float: right;
            line-height: 50px;
            font-size: 14px;
            cursor: pointer
        }

        .ranklist-tit span:hover {
            color: #22ac38
        }

        .ranklist ul {
            margin-right: -17px;
            padding: 20px 0 5px;
            height: 140px
        }

        .ranklist li {
            width: 287px;
            height: 140px;
            float: left;
            margin-right: 17px
        }

        .ranklist a {
            display: block;
            width: 285px;
            height: 138px;
            border: 1px solid #e6e6e6;
            position: relative
        }

        .ranklist a:hover {
            text-decoration: none;
            box-shadow: 0 0 5px 2px #e6e6e6
        }

        .ranklist img {
            float: left;
            display: block;
            width: 150px;
            height: 100px;
            margin: 19px 0 0 4px
        }

        .rank-car {
            float: right;
            width: 126px;
            height: 138px;
            background: #fafafa;
            border-left: 1px solid #e6e6e6
        }

        .rank-car h2, .rank-car p, a:hover .rank-car p {
            text-align: center;
            color: #495056
        }

        .rank-car .p1 {
            line-height: 28px;
            font-size: 18px;
            font-weight: 400;
            padding: 30px 5px 0;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .rank-car .p2 {
            line-height: 22px;
            font-size: 12px
        }

        .rank-car .p3 {
            font-size: 12px;
            line-height: 34px
        }

        .rank-car .p3 span, a:hover .rank-car .p3 span {
            font-size: 18px;
            color: #f95523
        }

        .rank-num {
            position: absolute;
            top: 0;
            left: 10px;
            width: 30px;
            height: 36px;
            text-align: center;
            font-size: 26px;
            font-weight: 700;
            font-family: Aparajita;
            color: #fff;
            line-height: 36px;
            background-position: -65px -20px
        }

        .rank-num-2 {
            background-position: -65px -60px
        }

        .rele-car {
            height: 50px;
            border-bottom: 1px solid #e6e6e6;
            box-sizing: border-box
        }

        .rele-car2 {
            margin-bottom: 10px
        }

        .rele-tit {
            float: left;
            height: 42px;
            line-height: 42px;
            font-size: 22px;
            color: #495056;
            padding: 0 5px;
            border-bottom: 4px solid #22ac38;
            padding-top: 4px
        }

        .rele-txt {
            float: left;
            margin-left: 20px;
            height: 50px;
            line-height: 60px;
            color: #a5abb2
        }

        .cms-link, .rele-txt {
            font-size: 14px;
            overflow: hidden
        }

        .cms-link {
            float: right;
            height: 30px;
            line-height: 40px;
            margin: 10px 0;
            color: #495056
        }

        .cms-link:hover {
            color: #22ac38;
            text-decoration: none
        }

        .cms-link span {
            font-family: simsun;
            margin-left: 5px;
            vertical-align: -1px
        }</style>
    <style>
        .subscribe {
            width: 850px;
            padding-top: 20px;
            border: 2px solid #e6e6e6;
            margin: 20px auto 40px
        }

        .sub-p1 {
            line-height: 46px;
            font-size: 24px;
            color: #495056
        }

        .sub-p1, .sub-p2 {
            text-align: center
        }

        .sub-p2 {
            line-height: 28px;
            font-size: 14px;
            padding-bottom: 30px;
            color: #a5abb2
        }

        .sub-box {
            width: 700px;
            margin-left: 35px
        }

        .sub-box > li {
            height: 42px;
            padding-bottom: 12px
        }

        .li-tit {
            height: 42px;
            line-height: 42px;
            width: 118px;
            padding-right: 20px;
            text-align: right;
            font-size: 18px;
            color: #495056
        }

        .conselect, .li-tit {
            float: left
        }

        .inputype {
            width: 158px;
            height: 20px;
            line-height: 20px;
            padding: 10px 38px 10px 14px;
            border: 1px solid #bec6ce;
            border-radius: 2px;
            font-family: Microsoft Yahei, arial, "sans-serif";
            font-size: 16px;
            color: #495056;
            cursor: pointer;
            background: url(//cli-sta.guazistatic.com/c2c_web/icon-sel.fca306f33055972fb8685b0b811bbad9.png) no-repeat right 0
        }

        .inputype-508 {
            width: 508px
        }

        .inputype.disabled {
            background-color: #f8f8f8;
            color: #aaa
        }

        .conselect.active .inputype {
            background-position: right -40px;
            border: 1px solid #22ac38;
            border-radius: 2px 2px 0 0
        }

        .conselect-up.active .inputype {
            border-radius: 0 0 2px 2px
        }

        .conselect.error .inputype, .odo-box.error .odo-input {
            border: 1px solid #ff7e00
        }

        .p-r {
            display: none
        }

        .active .p-r {
            display: block;
            position: relative
        }

        .down-box {
            position: absolute;
            top: -1px;
            left: 0;
            border: 1px solid #22ac38;
            background: #fff;
            border-radius: 0 0 2px 2px
        }

        .comselect-up .down-box {
            border-radius: 2px 2px 0 0
        }

        .up-box-368 {
            top: -368px
        }

        .up-box-223 {
            top: -223px
        }

        .up-box-311 {
            top: -311px
        }

        .up-box-257 {
            top: -257px
        }

        .up-box-159 {
            top: -159px
        }

        .brand-box {
            padding: 7px;
            overflow: auto;
            width: 196px;
            height: 355px
        }

        .brand-box.ios .all-brand, .brand-box.ios .s-tt {
            width: 96%
        }

        .s-tt {
            width: 100%;
            height: 24px;
            line-height: 24px;
            background: #f8f8f8;
            font-size: 14px;
            color: #a5abb2;
            text-indent: 7px;
            margin-bottom: 8px
        }

        .s-tt a, .s-tt a:hover {
            color: #a5abb2;
            text-decoration: none
        }

        .hot-car li {
            float: left;
            height: 24px;
            padding: 0 7px;
            line-height: 24px;
            color: #495056;
            font-size: 14px;
            margin-bottom: 8px;
            cursor: pointer
        }

        .all-brand li:hover, .com-ul .com-li:hover, .hot-car li:hover {
            background: #22ac38;
            color: #fff
        }

        .all-brand li {
            height: 24px;
            line-height: 24px;
            color: #495056;
            font-size: 14px;
            margin-bottom: 8px;
            text-indent: 7px;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .letter-sel {
            position: absolute;
            top: 0;
            left: 177px;
            padding: 9px 0 8px;
            width: 18px;
            background: #fff
        }

        .letter-sel li {
            width: 18px;
            height: 16px;
            line-height: 16px;
            margin-bottom: 0;
            text-align: center
        }

        .letter-sel li a {
            display: block;
            font-size: 12px;
            color: #a5abb2;
            cursor: pointer
        }

        .letter-sel li a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .com-ul {
            padding: 10px 7px;
            overflow: auto;
            width: 196px;
            max-height: 248px
        }

        .com-ul .com-li {
            height: 24px;
            line-height: 24px;
            color: #495056;
            font-size: 14px;
            margin-bottom: 8px;
            text-indent: 7px;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        .com-ul2 .com-li {
            width: 95px;
            float: left
        }

        .com-ul2 .sp-li {
            float: left;
            width: 100%;
            height: 22px;
            padding: 7px 0 10px
        }

        .sub-input {
            width: 30px;
            height: 20px;
            font-size: 12px;
            padding: 0 5px;
            border: 1px solid #e6e6e6
        }

        .sp-li i, .sub-input {
            float: left;
            color: #495056
        }

        .sp-li i {
            line-height: 22px;
            margin: 0 10px
        }

        .sp-li label {
            float: left;
            font-size: 14px;
            color: #495056;
            line-height: 22px;
            margin-left: 5px
        }

        .sp-li button {
            float: right;
            width: 52px;
            height: 22px;
            line-height: 20px;
            font-size: 14px;
            font-family: Microsoft Yahei, arial, "sans-serif";
            color: #fff;
            background: #22ac38;
            border: none;
            border-radius: 2px
        }

        .open-more {
            width: 200px;
            height: 54px;
            margin: 0 auto;
            padding-bottom: 12px;
            text-align: center;
            line-height: 54px;
            font-size: 14px;
            color: #a5abb2;
            cursor: pointer
        }

        .open-more i {
            display: inline-block;
            width: 16px;
            height: 9px;
            margin-left: 5px;
            background: url(//cli-sta.guazistatic.com/c2c_web/icon-sel.fca306f33055972fb8685b0b811bbad9.png) no-repeat -49px -16px
        }

        .open-more.active i {
            background-position: -49px -56px
        }

        .open-city {
            width: 520px;
            height: 315px;
            padding: 0 25px 10px 15px;
            overflow: auto
        }

        .open-city dl {
            overflow: hidden;
            border-bottom: 1px dashed #e6e6e6
        }

        .open-city dt {
            float: left;
            font-size: 14px;
            line-height: 34px;
            width: 45px
        }

        .open-city dt a, .open-city dt a:hover {
            color: #a5abb2;
            text-decoration: none
        }

        .open-city dd {
            float: left;
            width: 455px;
            color: #495056;
            font-size: 14px
        }

        .open-city dd p {
            float: left;
            padding: 0 10px;
            line-height: 24px;
            margin: 5px 0;
            cursor: pointer
        }

        .open-city dd p:hover {
            background: #22ac38;
            color: #fff
        }

        .city-letter-sel {
            left: 520px;
            top: 18px;
            padding: 0
        }

        .subscribed {
            text-align: center;
            font-size: 14px;
            color: #ff7e00;
            line-height: 30px;
            margin-top: -30px
        }

        .active + .sub-box + .subscribed {
            margin-top: -7px
        }

        .one-key-sub {
            display: block;
            width: 412px;
            height: 50px;
            background: #22ac38;
            border: none;
            color: #fff;
            font-size: 20px;
            margin: 0 auto 20px;
            font-family: Microsoft Yahei, arial, "sans-serif"
        }

        .one-key-sub:hover {
            background: #179500
        }

        .sub-rlt {
            font-size: 14px;
            color: #a5abb2;
            line-height: 34px;
            padding-bottom: 10px;
            text-align: center
        }

        .subscribe .result-li {
            float: none;
            width: 700px;
            margin: 0 auto 40px;
            text-align: center
        }

        .subscribe .result-li li {
            float: none;
            display: inline-block
        }</style>
    <style>
        .fix-screen {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 15;
            width: 100%;
            height: 48px;
            border-bottom: 1px solid #e6e6e6;
            background: #f8f8f8
        }

        .fix-screen-2 {
            top: 49px
        }

        .fix-con {
            width: 1200px;
            height: 28px;
            padding: 10px 0;
            margin: 0 auto
        }

        .fix-con li {
            float: left
        }

        .con-tit {
            width: 50px;
            height: 28px;
            line-height: 28px;
            font-size: 14px;
            color: #7a838d
        }

        .con-sel {
            margin-right: 15px
        }

        .con-sel.active {
            position: relative
        }

        .con-sel .dd-all, .con-sel .dd-car {
            display: none;
            position: absolute;
            top: 27px;
            z-index: 21;
            left: -50px;
            width: 1198px;
            background: #fff;
            border: 1px solid #22ac38
        }

        .con-sel .dd-car {
            width: 588px
        }

        .con-sel.active .dd-all, .con-sel.active .dd-car, .con-sel.active .hot-option {
            display: block
        }

        .con-sel.active .dd-option {
            z-index: 20
        }

        .con-sel .dd-all ul {
            width: 375px
        }

        .con-sel .dd-car li {
            width: 568px;
            float: none
        }

        .white-line2 {
            position: absolute;
            top: 27px;
            left: 1px;
            z-index: 30;
            display: none;
            width: 88px;
            height: 1px;
            background: #fff;
            line-height: 0;
            font-size: 0
        }

        .con-sel.active .white-line2 {
            display: block
        }

        .fix-con .dd-btn {
            margin-top: 4px
        }

        .fix-con .reset-li {
            float: right;
            line-height: 28px
        }

        .fix-con .reset-li a {
            font-size: 14px;
            color: #495056
        }

        .fix-con .reset-li a:hover {
            color: #22ac38;
            text-decoration: none
        }

        .fix-screen-2 .dd-more {
            width: 1200px;
            height: 28px;
            padding: 5px 0 0;
            margin: 0 auto;
            float: none
        }

        .fix-screen-2 .dd-more li {
            margin-right: 10px
        }

        .fix-screen-2 .dd-more li.last-child {
            margin-right: 0
        }</style>
    <style>
        .pop-1 {
            margin: -215px 0 0 -400px;
            width: 800px;
            height: 430px
        }

        .pop-1 .pop-tit {
            font-size: 24px;
            color: #495056;
            line-height: 46px;
            text-align: center;
            padding: 15px 0 0
        }

        .pop-tit2 {
            font-size: 14px;
            color: #a5abb2;
            line-height: 26px;
            text-align: center;
            padding-bottom: 24px
        }

        .pop-1 .phone-login {
            padding-bottom: 0
        }

        .pop-success {
            height: 520px;
            margin-top: -260px
        }

        .pop-success .pop-tit {
            font-weight: 700;
            padding-top: 26px;
            height: 50px;
            line-height: 50px;
            padding-bottom: 0
        }

        .app-list i, .icon-success {
            background: url(//cli-sta.guazistatic.com/c2c_web/icon-detail.3f29e84299556197e522c67272cb3041.png) no-repeat
        }

        .icon-success {
            display: inline-block;
            width: 50px;
            height: 50px;
            margin-right: 10px;
            vertical-align: middle;
            background-position: -343px -350px
        }

        .success-tip-collect {
            height: 67px;
            padding-top: 24px;
            text-align: center
        }

        .success-tip-submit {
            height: 81px;
            padding-top: 10px;
            line-height: 26px;
            text-align: center
        }

        .success-main {
            float: left;
            width: 336px;
            height: 347px;
            padding: 0 220px 0 108px;
            background: url(//cli-sta.guazistatic.com/c2c_web/subscribe.da3c336a353a6da149156034399651ac.png) no-repeat 443px bottom;
            position: absolute;
            bottom: 0
        }

        .success-main h3 {
            font-size: 18px;
            font-weight: 700;
            color: #22ac38;
            text-align: center
        }

        .app-list {
            padding-top: 8px
        }

        .app-list li {
            float: left;
            padding-top: 9px;
            padding-left: 20px
        }

        .app-list .active {
            color: #22ac38
        }

        .app-list i {
            display: inline-block;
            width: 19px;
            height: 19px;
            margin-top: 1px;
            margin-right: 10px;
            vertical-align: top;
            background-position: -393px -350px
        }

        .app-load-img {
            display: block;
            width: 158px;
            height: 158px;
            margin: 27px auto 0;
            border: 1px solid #dadada;
            background: url(//cli-sta.guazistatic.com/c2c_web/pop-icon-app.765207f27909ff529f79ca3bb194183d.jpg) no-repeat
        }

        .app-load-text {
            margin-top: 4px;
            font-size: 12px;
            color: #a5abb2;
            text-align: center
        }

        .pop-2 {
            margin: -210px 0 0 -400px;
            height: 420px
        }

        .sub-error {
            height: 50px;
            padding-top: 30px;
            text-align: center;
            font-size: 24px;
            color: #495056;
            line-height: 50px
        }

        .sub-error span {
            display: inline-block;
            width: 50px;
            height: 50px;
            vertical-align: middle;
            margin-right: 20px;
            background-position: 0 -190px
        }

        .sub-error-tip {
            font-size: 14px;
            color: #495056;
            line-height: 54px;
            text-align: center
        }

        .pop-2 .app-load-img {
            margin-top: 44px
        }

        .sub-error-2 {
            padding-top: 90px
        }

        .mod-sub {
            width: 410px;
            height: 50px;
            cursor: pointer;
            background: #22ac38;
            color: #fff;
            line-height: 50px;
            text-align: center;
            font-size: 20px;
            margin: 90px auto 0
        }

        .pop-sub {
            margin: -225px 0 0 -400px;
            height: 450px
        }

        .pop-sub-2 {
            margin: -300px 0 0 -400px;
            height: 600px
        }

        .pop-sub .sub-p1 {
            padding-top: 10px
        }

        .pop-sub .sub-box {
            margin-left: 0
        }

        .pop-sub-2 .subscribed {
            margin-top: -7px
        }

        .pop-sub-2 .sub-p2 {
            padding-bottom: 20px
        }</style>
    <style>
        .list-wrap {
            width: 1200px;
            margin: 0 auto
        }

        .con-sel > p i, .dd-btn i, .dd-color i.icon-multicolor, .dd-color i.icon-other, .dd-color i.white, .dd-sel i, .hot-option i, .hot-sel i, .icon-new, .icon-sale, .rank-num, .result-li i, .search-btn, .sort-a i, .sub-error span {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon.cccdd6106c22fa2cc2fbd5f5c65a1f27.png);
            background-repeat: no-repeat
        }

        .icon-new, .icon-sale {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/icon_@1x_s.fb16a94d9aafffcb573139cb98bd4964.png)
        }

        @media only screen and (-o-min-device-pixel-ratio: 3/2), only screen and (-webkit-min-device-pixel-ratio: 1.5), only screen and (min--moz-device-pixel-ratio: 1.5), only screen and (min-device-pixel-ratio: 1.5) {
            .retina .icon-new, .retina .icon-sale {
                background-image: url(//cli-sta.guazistatic.com/c2c_web/icon_@2x_s.5dfd8e0395d1a3188c98507b746b6df4.png);
                background-size: 451px 300px
            }
        }

        .list .footer {
            margin-top: 30px
        }

        .list .autocomplete .autocomplete-dropdown {
            top: 32px;
            left: -1px
        }

        .list .autocomplete .autocomplete-dropdown.open li .hot-tip {
            color: #a5abb2;
            display: block;
            cursor: default;
            background: #f8f8f8
        }

        .list .search {
            z-index: 1
        }

        .list .icon-new, .list .icon-sale {
            left: 20px
        }

        .top-banner-app {
            background: url(//cli-sta.guazistatic.com/c2c_web/listhengfu.a9a66368b8d6341993954ec8c4f76628.png) no-repeat;
            background-size: 100%;
            background-position: 50%;
            width: 1200px;
            height: 120px;
            margin: 0 auto
        }</style>
    <style>
        .autocomplete {
            position: relative
        }

        .autocomplete .autocomplete-dropdown {
            display: none;
            position: absolute;
            left: 0;
            margin: 0;
            padding: 5px 0;
            z-index: 9998;
            width: 100%;
            height: auto;
            background-color: #fff;
            border: 1px solid #22ac38;
            box-shadow: 2px 2px 3px #eee;
            color: #000;
            overflow: auto;
            _overflow-x: hidden;
            text-align: left
        }

        .autocomplete .autocomplete-dropdown.open {
            display: block
        }

        .autocomplete .autocomplete-dropdown ul {
            list-style: none outside none;
            padding: 0;
            margin: 0;
            border: 0
        }

        .autocomplete .autocomplete-dropdown ul li {
            list-style: none outside none;
            color: #495056;
            padding: 0;
            border: 0;
            cursor: pointer;
            font-size: 14px;
            line-height: 26px;
            text-indent: 10px;
            height: 26px;
            overflow: hidden;
            float: none
        }

        .autocomplete .autocomplete-dropdown ul li.active {
            background: #22ac38;
            color: #fff
        }</style>
    <style>
        .lpn_masked {
            position: static
        }

        .lpn_inline {
            position: static !important
        }

        .lpn_place_proxy {
            border: 1px dotted red;
            display: none;
            margin-bottom: 10px
        }

        .lpn_hd_move .hd {
            cursor: move
        }

        .lpn_fixed {
            position: fixed !important
        }

        .lpn_mask {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            margin: 0;
            padding: 0;
            background-color: #000;
            opacity: .4;
            filter: alpha(opacity=40);
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(opacity=40)"
        }

        .lpn_panel {
            left: -3000px;
            top: -3000px;
            visibility: visible;
            position: absolute
        }

        .lpn_panel form {
            margin: 0;
            padding: 0
        }

        .lpn_panel select {
            _visibility: inherit
        }

        .lpn_canvas {
            *zoom: 1;
            *position: relative;
            padding: 0;
            margin: 0;
            overflow: auto;
            width: 100%
        }

        .lpn_canvas iframe {
            vertical-align: middle;
        + vertical-align: top
        }

        .lpn_tmp_canvas {
            float: left;
            overflow: visible;
            width: auto;
            left: -10000px
        }

        .lpn_iframe_bg {
            position: absolute;
            border: 0;
            padding: 0;
            margin: 0;
            display: "block"
        }

        .lpn_wrapper {
            visibility: inherit;
            left: 0;
            top: 0
        }

        .lpn_panel .ft, .lpn_panel .hd, .lpn_wrapper {
            position: relative;
            *zoom: 1
        }

        .lpn_panel .hd {
            overflow: hidden;
            white-space: nowrap;
            font-size: 12px;
            font-weight: 700
        }

        .lpn_panel .ft {
            font-size: 12px;
            position: relative;
            zoom: 1
        }

        .lpn_panel .ft:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden
        }

        .lpn_ctrl_group {
            position: absolute;
            overflow: hidden;
            top: 3px;
            right: 5px;
            width: 500px
        }

        .lpn_ctrl_group a {
            display: block;
            float: right;
            text-decoration: none;
            text-align: center;
            font-size: 12px
        }

        .lpn_underlay {
            position: absolute;
            margin: 3px -3px -3px;
            background-color: #000;
            opacity: .2;
            *filter: alpha(opacity=20);
            filter: alpha(opacity=20)
        }

        .lpn_resize_br {
            float: right;
            height: 9px;
            width: 9px;
            margin: 0;
            font-size: 1px;
            cursor: se-resize;
            zoom: 1;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -380px
        }

        .lpn_button_group {
            display: block;
            text-align: right;
            padding: 5px 20px 10px 0
        }

        .lpn_button_group button {
            margin: 0 6px;
            font-size: 12px
        }

        .lpn_load {
            position: absolute;
            height: 32px;
            width: 32px;
            top: 50%;
            left: 50%;
            margin: -16px 0 0 -16px;
            background: url(//cli-sta.guazistatic.com/c2c_web/loading.7e99e1159a3686f6aa4f90043c554483.gif) no-repeat
        }

        .lpn_icon {
            padding: 0;
            margin: 0;
            border: 0
        }

        .lpn_panel_alert .lpn_icon, .lpn_panel_confirm .lpn_icon {
            width: 32px;
            height: 32px;
            position: absolute;
            left: 30px;
            top: 40px
        }

        .lpn_panel_alert .lpn_alert {
            background: url(//cli-sta.guazistatic.com/c2c_web/alert.4b41a9849d85f662ef7c4598e0b78dd1.gif) no-repeat
        }

        .lpn_panel_alert .lpn_success {
            background: url(//cli-sta.guazistatic.com/c2c_web/success.6d1bfafeb8bd35303dfdd4e75c32ba03.png) no-repeat
        }

        .lpn_panel_confirm .lpn_confirm {
            background: url(//cli-sta.guazistatic.com/c2c_web/confirm.244c1c9db9003f21c332e3007ee7874c.gif) no-repeat
        }

        .lpn_panel_loading .lpn_icon {
            background: url(//cli-sta.guazistatic.com/c2c_web/loading_h.c33734a1bf58bec328ffa27872e96ae1.gif) no-repeat;
            width: 208px;
            height: 13px;
            position: absolute;
            left: 45px;
            bottom: 20px
        }

        .lpn_panel_alert .lpn_canvas, .lpn_panel_confirm .lpn_canvas, .lpn_panel_loading .lpn_canvas {
            background-color: #f2f2f2 !important
        }

        .lpn_panel_alert .bd, .lpn_panel_confirm .bd {
            padding: 20px 25px 25px 80px !important;
            font-size: 12px
        }

        .lpn_panel_loading .bd {
            padding: 15px 50px 35px 45px !important;
            font-size: 12px
        }

        .lpn_panel_tooltip .lpn_wrapper {
            border: 1px solid #f90
        }

        .lpn_panel_tooltip .lpn_canvas {
            background-color: #ffc !important
        }

        .lpn_panel_tooltip .bd {
            padding: 5px;
            font-size: 12px
        }

        .lpn_panel_tooltip_el {
            border-bottom: 1px dotted #666;
            color: #666;
            cursor: help
        }

        .lpn_panel_default.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_default .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_default .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_default .lpn_wrapper {
            border: 1px solid gray
        }

        .lpn_panel_default .hd {
            margin: 0;
            line-height: 100%;
            border-bottom: 1px solid #ccc;
            padding: 6px 10px 5px;
            color: #000;
            background: #e9f2ff;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) repeat-x 0 -200px
        }

        .lpn_panel_default .ft {
            margin: 0;
            padding: 0;
            border-top: 1px solid #ccc;
            background-color: #f2f2f2
        }

        .lpn_panel_default .lpn_ctrl_group a {
            color: #00f
        }

        .lpn_ctrl_group a:active, .lpn_panel_default .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_default .lpn_close {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -300px
        }

        .lpn_panel_default a.lpn_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -300px
        }

        .lpn_panel_default .lpn_minimiz_open {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -340px
        }

        .lpn_panel_default a.lpn_minimiz_open:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -340px
        }

        .lpn_panel_default .lpn_minimiz_close {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -360px
        }

        .lpn_panel_default a.lpn_minimiz_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -360px
        }

        .lpn_panel_default .lpn_refresh {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -320px
        }

        .lpn_panel_default a.lpn_refresh:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -320px
        }

        .lpn_panel_1.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_1 .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_1 .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_1 .lpn_wrapper {
            border: 5px solid #6694e3
        }

        .lpn_panel_1 .hd {
            margin: 0;
            line-height: 100%;
            border-bottom: 1px solid #ccc;
            font-size: 14px;
            padding: 7px 10px 6px;
            background: #e9f2ff
        }

        .lpn_panel_1 .ft {
            margin: 0;
            padding: 0;
            border-top: 1px solid #ccc;
            background-color: #f2f2f2
        }

        .lpn_panel_1 .lpn_ctrl_group a {
            color: #00f;
            top: 4px;
            right: 4px
        }

        .lpn_ctrl_group a:active, .lpn_panel_1 .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_1 .lpn_close {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -300px
        }

        .lpn_panel_1 a.lpn_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -300px
        }

        .lpn_panel_1 .lpn_minimiz_open {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -340px
        }

        .lpn_panel_1 a.lpn_minimiz_open:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -340px
        }

        .lpn_panel_1 .lpn_minimiz_close {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -360px
        }

        .lpn_panel_1 a.lpn_minimiz_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -360px
        }

        .lpn_panel_1 .lpn_refresh {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -320px
        }

        .lpn_panel_1 a.lpn_refresh:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -320px
        }

        .lpn_panel_2.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_2 .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_2 .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_2 .lpn_wrapper {
            border-top: 0;
            border-left: 7px solid #e9f2ff;
            border-right: 7px solid #e9f2ff;
            border-bottom: 0
        }

        .lpn_panel_2 .hd {
            margin: 0;
            line-height: 100%;
            font-size: 14px;
            padding: 10px 10px 8px;
            background: #e9f2ff
        }

        .lpn_panel_2 .ft {
            margin: 0 -7px 0 0;
            padding: 0;
            background-color: #e9f2ff
        }

        .lpn_panel_2 .lpn_ctrl_group {
            top: 7px;
            right: 0
        }

        .lpn_panel_2 .lpn_ctrl_group a {
            color: #00f;
            top: 4px;
            right: 4px
        }

        .lpn_ctrl_group a:active, .lpn_panel_2 .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_2 .lpn_close {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -300px
        }

        .lpn_panel_2 a.lpn_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -300px
        }

        .lpn_panel_2 .lpn_minimiz_open {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -340px
        }

        .lpn_panel_2 a.lpn_minimiz_open:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -340px
        }

        .lpn_panel_2 .lpn_minimiz_close {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -360px
        }

        .lpn_panel_2 a.lpn_minimiz_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -360px
        }

        .lpn_panel_2 .lpn_refresh {
            width: 18px;
            height: 18px;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -320px
        }

        .lpn_panel_2 a.lpn_refresh:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -320px
        }

        .lpn_panel_2 .lpn_underlay {
            margin: -7px;
            background-color: #6694e3;
            opacity: .8;
            *filter: alpha(opacity=80);
            filter: alpha(opacity=80)
        }

        .lpn_panel_text.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_text .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_text .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_text .hd {
            margin: 0;
            line-height: 100%;
            font-size: 14px;
            padding: 10px;
            background: #f1f1f1
        }

        .lpn_panel_text .ft {
            background-color: #fff;
            margin: 0;
            padding: 0
        }

        .lpn_panel_text .lpn_close, .lpn_panel_text .lpn_minimiz_close, .lpn_panel_text .lpn_minimiz_open, .lpn_panel_text .lpn_refresh, .lpn_panel_text a.lpn_close:hover, .lpn_panel_text a.lpn_minimiz_close:hover, .lpn_panel_text a.lpn_minimiz_open:hover, .lpn_panel_text a.lpn_refresh:hover {
            width: auto;
            text-decoration: underline;
            background-image: none
        }

        .lpn_panel_text .lpn_underlay {
            margin: -5px;
            background-color: #000;
            opacity: .4;
            *filter: alpha(opacity=40);
            filter: alpha(opacity=40)
        }

        .lpn_panel_text .lpn_ctrl_group {
            top: 7px
        }

        .lpn_panel_text .lpn_ctrl_group a, .lpn_panel_text .lpn_ctrl_group a:hover, .lpn_panel_text .lpn_ctrl_group a:visited {
            text-decoration: none;
            overflow: hidden;
            color: #00f;
            top: 4px;
            right: 4px;
            display: block;
            width: 20px;
            height: 20px;
            background: url(//cli-sta.guazistatic.com/c2c_web/p-c-icon.e5b6b531a6004b309d7442793691eb10.png) no-repeat 0 0;
            text-indent: 40px;
            font-size: 0
        }

        .lpn_panel_text .lpn_ctrl_group a:hover {
            background: #eb3800 url(//cli-sta.guazistatic.com/c2c_web/p-c-icon.e5b6b531a6004b309d7442793691eb10.png) no-repeat 0 -20px
        }

        .lpn_panel_3.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_3 .hd {
            margin: 0;
            line-height: 100%;
            border-bottom: 1px solid #ccc;
            padding: 6px 10px 5px;
            color: #000;
            background: #e9f2ff;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) repeat-x 0 -200px
        }

        .lpn_panel_3 .ft {
            margin: 0;
            padding: 0;
            height: 0;
            line-height: 0;
            zoom: 1;
            overflow: hidden
        }

        .lpn_panel_3 .lpn_ctrl_group a {
            color: #00f
        }

        .lpn_ctrl_group a:active, .lpn_panel_3 .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_3 .lpn_close {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -300px
        }

        .lpn_panel_3 a.lpn_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -300px
        }

        .lpn_panel_3 .lpn_minimiz_open {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -340px
        }

        .lpn_panel_3 a.lpn_minimiz_open:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -340px
        }

        .lpn_panel_3 .lpn_minimiz_close {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -360px
        }

        .lpn_panel_3 a.lpn_minimiz_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -360px
        }

        .lpn_panel_3 .lpn_refresh {
            width: 18px;
            height: 18px;
            line-height: 100%;
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat 0 -320px
        }

        .lpn_panel_3 a.lpn_refresh:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/sprite.ae3f06954f7530846e7525e2c1590a21.gif) no-repeat -20px -320px
        }

        .lpn_panel_4.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_4 .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_4 .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_4 .lpn_wrapper {
            border-top: 0;
            border-left: 7px solid #e6f5d2;
            border-right: 7px solid #e6f5d2;
            border-bottom: 0
        }

        .lpn_panel_4 .hd {
            margin: 0;
            line-height: 100%;
            font-size: 14px;
            padding: 10px 10px 8px;
            background: #e6f5d2
        }

        .lpn_panel_4 .ft {
            background-color: #e6f5d2;
            margin: 0 -7px 0 0;
            padding: 0
        }

        .lpn_panel_4 .lpn_ctrl_group {
            top: 7px;
            right: 0
        }

        .lpn_panel_4 .lpn_ctrl_group a {
            color: #00f;
            top: 4px;
            right: 4px
        }

        .lpn_ctrl_group a:active, .lpn_panel_4 .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_4 .lpn_close, .lpn_panel_4 .lpn_minimiz_close, .lpn_panel_4 .lpn_minimiz_open, .lpn_panel_4 .lpn_refresh, .lpn_panel_4 a.lpn_close:hover, .lpn_panel_4 a.lpn_minimiz_close:hover, .lpn_panel_4 a.lpn_minimiz_open:hover, .lpn_panel_4 a.lpn_refresh:hover {
            width: auto;
            text-decoration: underline;
            background-image: none
        }

        .lpn_panel_4 .lpn_underlay {
            margin: -7px;
            background-color: #6da721;
            opacity: .8;
            *filter: alpha(opacity=80);
            filter: alpha(opacity=80);
            border-radius: 6px
        }

        .lpn_panel_tuan .lpn_bnt {
            text-align: center;
            margin: 10px auto
        }

        .lpn_panel_tuan .lpn_content {
            text-align: center;
            margin: 20px auto
        }

        .lpn_panel_tuan .lpn_ctrl_group .lpn_close, .lpn_panel_tuan .lpn_ctrl_group .lpn_close:hover {
            background: url(//cli-sta.guazistatic.com/c2c_web/close.2cb8f389037d54fb0a0ba28f9b249ff9.gif) no-repeat 0 0;
            width: 18px;
            height: 18px;
            display: inline-block;
            text-decoration: none
        }

        .lpn_panel_tuan .lpn_button_group {
            background-color: #fff;
            text-align: center;
            padding: 0 0 20px
        }

        .lpn_panel_tuan .lpn_button_group button {
            background: url(//cli-sta.guazistatic.com/c2c_web/lnp-buttonbg.b7cb50ee592bd9f655d35218a224e58c.gif) no-repeat;
            width: 64px;
            height: 29px;
            overflow: hidden;
            cursor: pointer;
            border: 0;
            font-weight: 700;
            padding-bottom: 3px;
            *padding-bottom: 0
        }

        .lpn_panel_tuan .lpn_button_group .lpn_submit {
            background-position: -81px 0;
            color: #fff
        }

        .lpn_panel_tuan .lpn_f_mr {
            margin: 40px 0 10px;
            display: block
        }

        .lpn_panel_tuan.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_tuan .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_tuan .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_tuan .lpn_wrapper {
            border-top: 0;
            border-left: 7px solid #e6f5d2;
            border-right: 7px solid #e6f5d2;
            border-bottom: 0
        }

        .lpn_panel_tuan .hd {
            margin: 0;
            line-height: 100%;
            font-size: 14px;
            padding: 10px 10px 8px;
            background: #e6f5d2;
            border: 0
        }

        .lpn_panel_tuan .ft {
            background-color: #e6f5d2;
            margin: 0;
            padding: 0;
            border-top: 0
        }

        .lpn_panel_tuan .lpn_ctrl_group {
            top: 7px;
            right: 0
        }

        .lpn_panel_tuan .lpn_ctrl_group a {
            color: #00f;
            top: 4px;
            right: 4px
        }

        .lpn_ctrl_group a:active, .lpn_panel_tuan .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_tuan .lpn_close, .lpn_panel_tuan .lpn_minimiz_close, .lpn_panel_tuan .lpn_minimiz_open, .lpn_panel_tuan .lpn_refresh, .lpn_panel_tuan a.lpn_close:hover, .lpn_panel_tuan a.lpn_minimiz_close:hover, .lpn_panel_tuan a.lpn_minimiz_open:hover, .lpn_panel_tuan a.lpn_refresh:hover {
            width: auto;
            background-image: none
        }

        .lpn_panel_tuan .lpn_underlay {
            margin: -7px;
            background-color: #6da721;
            opacity: .8;
            *filter: alpha(opacity=80);
            filter: alpha(opacity=80);
            border-radius: 6px
        }

        .lpn_panel_jiaoyou_new.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_jiaoyou_new .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_jiaoyou_new .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_jiaoyou_new .hd {
            display: none
        }

        .lpn_panel_jiaoyou_new .lpn_ctrl_group {
            overflow: visible
        }

        .lpn_panel_jiaoyou_new .lpn_close {
            background: url(//cli-sta.guazistatic.com/c2c_web/reg-icon.e2384c53dca7fd9c2765e135ac9924d5.gif) no-repeat 0 -104px;
            display: block;
            width: 25px;
            height: 25px;
            position: absolute;
            right: -15px;
            top: -15px
        }

        .lpn_panel_jiaoyou_new .lpn_minimiz_close, .lpn_panel_jiaoyou_new .lpn_minimiz_open, .lpn_panel_jiaoyou_new .lpn_refresh, .lpn_panel_jiaoyou_new a.lpn_minimiz_close:hover, .lpn_panel_jiaoyou_new a.lpn_minimiz_open:hover, .lpn_panel_jiaoyou_new a.lpn_refresh:hover {
            width: auto;
            text-decoration: underline;
            background-image: none
        }

        .lpn_panel_jiaoyou_new .lpn_underlay {
            margin: -7px;
            background-color: #fff;
            opacity: .9;
            *filter: alpha(opacity=90);
            filter: alpha(opacity=90);
            border-radius: 6px
        }

        .lpn_panel_jiaoyou.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_jiaoyou .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_jiaoyou .lpn_canvas .bd {
            padding: 6px
        }

        .lpn_panel_jiaoyou .lpn_wrapper {
            border-top: 0;
            border-left: 7px solid #e9f2ff;
            border-right: 7px solid #e9f2ff;
            border-bottom: 0
        }

        .lpn_panel_jiaoyou .hd {
            margin: 0;
            line-height: 100%;
            font-size: 14px;
            padding: 10px 10px 8px;
            background: #e9f2ff
        }

        .lpn_panel_jiaoyou .ft {
            background-color: #e9f2ff;
            margin: 0 -7px 0 0;
            padding: 0
        }

        .lpn_panel_jiaoyou .lpn_ctrl_group {
            top: 7px;
            right: 0
        }

        .lpn_panel_jiaoyou .lpn_ctrl_group a {
            color: #00f;
            top: 4px;
            right: 4px
        }

        .lpn_ctrl_group a:active, .lpn_panel_jiaoyou .lpn_ctrl_group a:hover {
            color: red
        }

        .lpn_panel_jiaoyou .lpn_close, .lpn_panel_jiaoyou .lpn_minimiz_close, .lpn_panel_jiaoyou .lpn_minimiz_open, .lpn_panel_jiaoyou .lpn_refresh, .lpn_panel_jiaoyou a.lpn_close:hover, .lpn_panel_jiaoyou a.lpn_minimiz_close:hover, .lpn_panel_jiaoyou a.lpn_minimiz_open:hover, .lpn_panel_jiaoyou a.lpn_refresh:hover {
            width: auto;
            text-decoration: underline;
            background-image: none
        }

        .lpn_panel_jiaoyou .lpn_underlay {
            margin: -7px;
            background-color: #6694e3;
            opacity: .8;
            *filter: alpha(opacity=80);
            filter: alpha(opacity=80);
            border-radius: 6px
        }

        .lpn_panel_reward.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_reward .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_reward .lpn_canvas .bd {
            padding: 6px;
            border-radius: 0 0 0;
            opacity: 1
        }

        .lpn_panel_reward .hd {
            display: none
        }

        .lpn_panel_reward .lpn_ctrl_group {
            overflow: visible
        }

        .lpn_panel_reward .lpn_close {
            background: url(//cli-sta.guazistatic.com/c2c_web/close_icon.aff60d8e4b78f4c3e09cd0da21e113cc.gif) no-repeat;
            display: block;
            width: 12px;
            height: 12px;
            position: absolute;
            right: 4px;
            top: 4px
        }

        .lpn_panel_reward .lpn_minimiz_close, .lpn_panel_reward .lpn_minimiz_open, .lpn_panel_reward .lpn_refresh, .lpn_panel_reward a.lpn_minimiz_close:hover, .lpn_panel_reward a.lpn_minimiz_open:hover, .lpn_panel_reward a.lpn_refresh:hover {
            width: auto;
            text-decoration: underline;
            background-image: none
        }

        .lpn_panel_reward .lpn_underlay {
            margin: -7px;
            background-color: #fff;
            opacity: 1;
            *filter: alpha(opacity=100);
            filter: alpha(opacity=100)
        }

        .lpn_panel_reward_guide.lpn_panel_module {
            margin-bottom: 10px
        }

        .lpn_panel_reward_guide .lpn_canvas {
            background-color: #fff
        }

        .lpn_panel_reward_guide .lpn_canvas .bd {
            padding: 0;
            border-radius: 0 0 0;
            opacity: 1
        }

        .lpn_panel_reward_guide .hd {
            display: none
        }

        .lpn_panel_reward_guide .lpn_ctrl_group {
            overflow: visible
        }

        .lpn_panel_reward_guide .lpn_close {
            background: url(//cli-sta.guazistatic.com/c2c_web/close_icon.aff60d8e4b78f4c3e09cd0da21e113cc.gif) no-repeat;
            display: block;
            width: 12px;
            height: 12px;
            position: absolute;
            right: 4px;
            top: 4px
        }

        .lpn_panel_reward_guide .lpn_minimiz_close, .lpn_panel_reward_guide .lpn_minimiz_open, .lpn_panel_reward_guide .lpn_refresh, .lpn_panel_reward_guide a.lpn_minimiz_close:hover, .lpn_panel_reward_guide a.lpn_minimiz_open:hover, .lpn_panel_reward_guide a.lpn_refresh:hover {
            width: auto;
            text-decoration: underline;
            background-image: none
        }

        .lpn_panel_reward_guide .lpn_underlay {
            background: none !important;
            opacity: 1;
            *filter: alpha(opacity=100);
            filter: alpha(opacity=100);
            margin: 0
        }

        .fb {
            font-weight: 700
        }

        .pop-store .lpn_underlay {
            border-radius: 0;
            background-color: #ff9600;
            opacity: 1;
            filter: alpha(opacity=100)
        }

        .pop-store .hd {
            background-image: url(//cli-sta.guazistatic.com/c2c_web/pop_bg.a5e854a9e1a9e0a9875b81b33788232b.png);
            color: #036;
            *background-position: 0 1px
        }</style>
</head>
<script src="${pageContext.request.contextPath}/js/portal/protal.js"/>
<!-- 加载js/css-->
<body class="list">
<!-- 春节放假公告 s -->
<!-- 春节放假公告 e -->
<!-- 头部 -->
<input type="hidden" id="skipKindNew" value="0">
<!--<input type="hidden" id="firstSubLogin" value="0">-->
<input type="hidden" id="clueData" data-puid="" data-city-id="13">

<!-- 春节放假公告 s -->
<!-- 春节放假公告 e -->
<!-- 头部吸顶菜单 s -->
<div id="jstop" class="j-header header-2 ">
    <div class="header">
        <div class="city">
            <!-- 鼠标悬停 .city添加class名active -->
            <p class="city-curr">
                上海<i></i>
            </p>
        </div>
        <div class="uc js-uc js-uc-new" data-gzlog="tracking_type=click&amp;eventid=1015123400000003">
            <a href="javascript:" class="uc-my" id="js-login-new">登录</a>
            <div class="uc-app" style="display:none">
                <a href="javascript:;" class="js-logout js-loginElem4"
                   data-gzlog="tracking_type=click&amp;eventid=1015123400000007">退出</a>
                <i></i>
            </div>
        </div>
        <div class="header-phone">
            <!--电话判断，当页面处于汽车金融则显示汽车金融电话  -->
            热线电话 400-000-0000
        </div>
    </div>
</div>
<!-- 头部吸顶菜单 e -->

<!-- 登录弹层  s -->
<!-- 登录弹框  s -->
<!-- 使用时class加show -->
<div class="pop-box pop-login" id="login1">
    <form action="https://www.guazi.com/passport/login" method="post" onsubmit="return window.web_sso_login_check()"
          target="guazi_login">
        <div class="pop-close" id="closeLogin1"></div>
        <p class="pop-tit js-logintitle">哈哈共享汽车租赁</p>
        <ul class="phone-login">
            <li>
                <p class="phone-login-tit">手机号码</p>
                <input name="phone" class="phone-login-input js-phoneNum1" placeholder="">
            </li>
            <li>
                <p class="phone-login-tit">&emsp;验证码</p>
                <input name="code" class="phone-login-input phone-login-code js-code1" placeholder="">
                <button class="get-code">获取验证码</button>
            </li>
        </ul>
        <p class="p-error" id="loginError1"></p>
        <button data-track-phone="#login1 .js-phoneNum1" class="sub-btn  js-checkcode" type="submit">登录</button>
        <p class="free-phone">免费咨询400-000-0000</p>
        <p class="agree-text">登录即视为同意<a
                href="https://image.guazistatic.com/gz01190926/17/21/21c7f57e0f6b77e4b7dd3b608e44d04f.pdf"
                data-gzlog="tracking_type=click&amp;eventid=92392518" target="_blank">《用户使用协议》</a>及<a
                href="https://image1.guazistatic.com/qn201030102530dbb0915e8dd42688d8191b3a5f60b3e2.pdf"
                data-gzlog="tracking_type=click&amp;eventid=92392518" target="_blank">《隐私权条款》</a></p>

        <input type="hidden" name="source" value="2">
        <input type="hidden" name="staticPage" value="https://www.guazi.com/ssoJump.php">
        <input type="hidden" name="callBack" value="parent.web_login_callback">
    </form>
</div>
<iframe name="guazi_login" style="display: none;"></iframe>
<!-- 使用时class加active -->
<div class="pop-mask "></div>
<script>
    $('#js-login-new').click(function () {
        $('#login1').addClass('show');
        $('.pop-mask').addClass('active');
    })

    $('#closeLogin1').click(function () {
        $('#login1').removeClass('show');
        $('.pop-mask').removeClass('active');
    });
</script>
<!-- 登录弹层  e -->
<!-- 登录弹框  e -->

<!-- 列表页内容区域 -->
<div class="list-wrap js-post">
    <!-- 面包屑，搜索框 -->
    <!-- 面包屑 -->
    <div class="crumbs-search" id="bread">
        <!-- input在focus状态下，最外层div添加class名active -->
        <div class="search js-search">
            <div class="search-box suggestion_widget" data-default-count="9">
                <input type="text" class="search-input js_search_input_index" placeholder="搜索您想要的车"
                       data-role="keywordInput" name="keyword" autocomplete="off" data-domain="sh" id="keyword">
                <button class="search-btn" data-gzlog="tracking_type=click&amp;eventid=0020070000000022"
                        type="button" id="searchBtn" onclick="searchBtnClick()"></button>
                <input type="hidden" value="sh" name="hiddenCity">
            </div>
        </div>
    </div>
    <!-- 头部筛选框 -->
    <!-- 车源筛选1 -->
    <div class="screen">
        <!-- 品牌 -->
        <dl class="clearfix">
            <dt>品牌</dt>
            <dd>
                <div class="dd-top">
                    <span class="a-box" id="branceBox">
                        <!-- 不限 -->
                        <a class="active" href="javascript:" onclick="clickBrance(this)">不限</a>
                        <a href="javascript:" onclick="clickBrance(this)">大众</a>
                        <a href="javascript:" onclick="clickBrance(this)">本田</a>
                        <a href="javascript:" onclick="clickBrance(this)">别克</a>
                        <a href="javascript:" onclick="clickBrance(this)">丰田</a>
                        <a href="javascript:" onclick="clickBrance(this)">福特</a>
                        <a href="javascript:" onclick="clickBrance(this)">日产</a>
                        <a href="javascript:" onclick="clickBrance(this)">宝马</a>
                        <a href="javascript:" onclick="clickBrance(this)">奔驰</a>
                        <a href="javascript:" onclick="clickBrance(this)">现代</a>
                        <a href="javascript:" onclick="clickBrance(this)">奥迪</a>
                        <a href="javascript:" onclick="clickBrance(this)">雪佛兰</a>
                        <a href="javascript:" onclick="clickBrance(this)">吉利</a>
                        <a href="javascript:" onclick="clickBrance(this)">哈弗</a>
                        <a href="javascript:" onclick="clickBrance(this)">马自达</a>
                        <a href="javascript:" onclick="clickBrance(this)">起亚</a>
                    </span>
                </div>
            </dd>
        </dl>
        <!-- 价格 -->
        <dl class="clearfix">
            <dt>押金价格</dt>
            <dd>
                <div class="dd-top" id="priceBox">
                    <a href="javascript:" onclick="clickPrice(this)" class="active">不限</a>
                    <a href="javascript:" onclick="clickPrice(this)">0-1000</a>
                    <a href="javascript:" onclick="clickPrice(this)">1000-2000</a>
                    <a href="javascript:" onclick="clickPrice(this)">2000-3000</a>
                    <a href="javascript:" onclick="clickPrice(this)">3000-4000</a>
                </div>
            </dd>
        </dl>
        <!-- 更多 -->
        <dl class="clearfix js-more">
            <dt>更多</dt>
            <dd>
                <!-- 第一个li是默认大小，第二个是加长版，第三个是颜色下拉 -->
                <ul class="dd-more " id="more">
                    <!-- 变速箱 -->
                    <li class="js-hover" onmouseover="palyerOption(this)" onmouseout="displayOption(this)">
                        <p class="dd-sel"><i></i>
                            变速箱 </p>
                        <div class="dd-option">
                            <a href="javascript:void(0);" onclick="gearSelect(this)">不限</a>
                            <a href="javascript:void(0);" onclick="gearSelect(this)">手动</a>
                            <a href="javascript:void(0);" onclick="gearSelect(this)">自动</a>
                        </div>
                    </li>
                    <!-- 排量 -->
                    <li class="js-hover" onmouseover="palyerOption(this)" onmouseout="displayOption(this)">
                        <p class="dd-sel"><i></i>
                            排量 </p>
                        <div class="dd-option">
                            <a onclick="displacementSelect(this)">不限</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">0.8</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">1.0</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">1.2</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">1.4</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">1.6</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">1.8</a>
                            <a href="javascript:void(0);" onclick="displacementSelect(this)">2.0</a>
                        </div>
                    </li>
                    <!-- 座位数 -->
                    <li class="js-hover" onmouseover="palyerOption(this)" onmouseout="displayOption(this)">
                        <p class="dd-sel"><i></i>
                            座位数 </p>
                        <div class="dd-option">
                            <a onclick="seatsSelect(this)">不限</a>
                            <a onclick="seatsSelect(this)">2座</a>
                            <a onclick="seatsSelect(this)">4座</a>
                            <a onclick="seatsSelect(this)">5座</a>
                            <a onclick="seatsSelect(this)">6座</a>
                            <a onclick="seatsSelect(this)">7座</a>
                        </div>
                    </li>
                    <!-- 燃油类型 -->
                    <li class="js-hover" onmouseover="palyerOption(this)" onmouseout="displayOption(this)">
                        <p class="dd-sel"><i></i>
                            燃油类型 </p>
                        <div class="dd-option">
                            <a onclick="fuelTypeSelect(this)">不限</a>
                            <a onclick="fuelTypeSelect(this)">汽油</a>
                            <a onclick="fuelTypeSelect(this)">柴油</a>
                            <a onclick="fuelTypeSelect(this)">电动</a>
                            <a onclick="fuelTypeSelect(this)">油电混合</a>
                            <a onclick="fuelTypeSelect(this)">其他</a>
                        </div>
                    </li>
                    <!-- 颜色 -->
                    <li class="js-hover" onmouseover="palyerOption(this)" onmouseout="displayOption(this)">
                        <p class="dd-sel"><i></i>
                            颜色 </p>
                        <div class="dd-color">
                            <a href="javascript:void(0);" onclick="colorSelect(this)">不限</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">黑色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">白色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">银灰色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">深灰色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">红色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">橙色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">绿色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">蓝色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">咖啡色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">紫色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">黄色</a>
                            <a href="javascript:void(0);" onclick="colorSelect(this)">其它</a>
                        </div>
                    </li>
                    <!-- 车牌所在地 -->
                  <%--  <li class="js-hover" onmouseover="palyerOption(this)" onmouseout="displayOption(this)">
                        <p class="dd-sel dd-sel-100"><i></i>
                            车牌所在地 </p>
                        <div class="dd-option dd-option-100">
                            <a href="javascript:void(0);" onclick="regionSelect(this)">不限</a>
                            <a href="javascript:void(0);" onclick="regionSelect(this)">本地</a>
                            <a href="javascript:void(0);" onclick="regionSelect(this)">外地</a>
                        </div>
                    </li>--%>
                </ul>
            </dd>
        </dl>

    </div>

    <!-- 车源筛选2 -->
    <h2 style="display: none;">上海二手车交易市场</h2>
    <h2 style="display: none;">上海二手车报价</h2>
    <div class="list-filter">
        <div class="list-sort">
            <a rel="nofollow" class="sort-a " data-gzlog="tracking_type=click&amp;eventid=92071710&amp;sort=price"
               href="javascript:void(0);">价格
                <i class=""></i>
            </a>
            <a class="sort-a " data-gzlog="tracking_type=click&amp;eventid=92042037&amp;sort=new"
               href="javascript:void(0);">最新发布</a>

            <a class="sort-a active" data-gzlog="tracking_type=click&amp;eventid=92022666&amp;sort=default"
               href="javascript:void(0);">默认排序</a>
        </div>
    </div>
    <!-- 车源展示 -->
    <!-- 车源列表 -->
    <ul class="carlist clearfix js-top" id="carListBox" style="width: 1220px;height: 634px">
        <li style="width:100%;height:100%;text-align: center">
            <h3>抱歉没有符合条件的车辆</h3>
        </li>
    </ul>
    <!-- 分页展示 -->
    <div class="pageBox">
        <ul class="pageLink clearfix" id="pageBox">
            <li><a href="javascript:void(0);" class="prev"><span>上一页</span><em>&gt;</em></a></li>
            <li><a href="javascript:void(0);"><span>1</span></a></li>
            <li><a href="javascript:void(0);"><span>2</span></a></li>
            <li><a class="link-on"><span>3</span></a></li>
            <li><a href="javascript:void(0);"><span>4</span></a></li>
            <li><a href="javascript:void(0);"><span>5</span></a></li>
            <li><a href="javascript:void(0);"><span>6</span></a></li>
            <li class="point"><a><span>...</span></a></li>
            <li><a href="javascript:void(0);"><span>50</span></a></li>
            <li><a href="javascript:void(0);" class="next"><span>下一页</span><em>&gt;</em></a></li>
        </ul>
    </div>
</div>

<!-- 尾部 -->
<div class="footer">
    <!--加载footer 信息部分 -->
    <div class="company-info clearfix">
        <div class="instructions-guazi-name">瓜子®/瓜子二手车®等带有®标记的内容均是车好多旧机动车经纪（北京）有限公司的注册商标。</div>
        <div class="footer-logo"></div>

        <div class="phone-email">
            <p>
                咨询电话：<i>400-000-0000</i><span>（周一至周日 8:00-21:00）</span>
                <br> 服务监督热线：
                <i>400-066-8780</i><span>（周一至周日 9:00-18:00）</span>
            </p>
            <p>互联网违法或不良信息举报联系方式：
                <br> 邮箱：
                <i>jubao@guazi.com</i>&nbsp;&nbsp;电话：<i>010-89191670</i>
            </p>
        </div>


        <div class="basic-info">
            <div class="info-link">
                <a rel="nofollow" href="https://www.guazi.com/sh/aboutus/" target="_blank">关于瓜子</a>
                <a rel="nofollow" href="https://www.guazi.com/sh/aboutusGroup/" target="_blank">集团介绍</a>
                <a rel="nofollow" href="https://job.guazi.com" target="_blank">加入我们</a>
                <a rel="nofollow" href="https://www.guazi.com/sh/contact/" target="_blank">联系我们</a>
                <a rel="nofollow" href="https://www.guazi.com/sh/intro/" target="_blank">服务保障</a>
                <a rel="nofollow"
                   href="https://image1.guazistatic.com/qn201030102530dbb0915e8dd42688d8191b3a5f60b3e2.pdf"
                   target="_blank">隐私声明</a>
                <a rel="nofollow"
                   href="https://image.guazistatic.com/gz01190926/17/21/21c7f57e0f6b77e4b7dd3b608e44d04f.pdf"
                   target="_blank">服务条款</a>
                <a rel="nofollow"
                   href="https://image1.guazistatic.com/qn200508160345ba369b606d82c8bbaa612d0c7e98b96b.jpg"
                   target="_blank">营业执照</a>
                <a rel="nofollow" href="https://www.guazi.com/sh/intro/terms" target="_blank">环评公示</a>
            </div>
            <p class="arc-info">Copyright 2021 www.guazi.com All Rights Reserved</p>
            <!--        <p class="arc-info">京ICP备15053955号  ICP证151071号 </p>-->
            <a class="arc-info" rel="nofollow" target="_blank" href="https://beian.miit.gov.cn/" style="color: #939393">京ICP备15053955号-1
                ICP证151071号 </a>
            <div class="protect clearfix">
                <a class="police" rel="nofollow" target="_blank"
                   href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502037713">京公网安备11010502037713号</a>
            </div>
        </div>
    </div>

    <!--公司信息-->
    <p style="text-align:center;line-height:20px;font-size:12px;color:#666; padding-top:20px;">
    </p></div>


<input type="hidden" class="hide_gich" value="">
<div style="display:none;" class="js-check-post-code" data-str="c21de4f2fd8fc7e987fbd9a4fa9cb975"
     data-time="1610543050"></div>
<input type="text" name="js-waf-seo-referer" value="" style="display:none;"><input type="hidden" data-role="dataSource"
                                                                                   class="dataSourceButton"
                                                                                   data-source="[]">


</body>

</html>
