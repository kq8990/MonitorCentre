<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

	<!--
	    ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->

<title>河口采油厂视频监控平台后台管理系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- The styles -->
<link id="bs-css"
	href="${pageContext.request.contextPath}/css/bootstrap-cerulean.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/charisma-app.css">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.css'>
<link rel='stylesheet' media='print'
	href='${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.print.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/bower_components/chosen/chosen.min.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/bower_components/colorbox/example3/colorbox.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/bower_components/responsive-tables/responsive-tables.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/jquery.noty.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/noty_theme_default.css'>
<link rel='stylesheet' 
	href='${pageContext.request.contextPath}/css/elfinder.min.css'>
<link rel='stylesheet' 
	href='${pageContext.request.contextPath}/css/elfinder.theme.css'>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/jquery.iphone.toggle.css'>
<link rel='stylesheet' 
	href='${pageContext.request.contextPath}/css/uploadify.css'>
<link rel='stylesheet' 
	href='${pageContext.request.contextPath}/css/animate.min.css'>

<!-- jQuery -->
<script src="bower_components/jquery/jquery.min.js"></script>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/js/html5.js"></script>
<![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>

	<s:include value="header.jsp"></s:include>

	<div class="ch-container">
		<div class="row">
			<div class="col-sm-2 col-lg-2">
				<s:include value="sidebar.jsp">
				</s:include>
			</div>

			<div id="content" class="col-lg-10 col-sm-10">
				<h3 class="center">河口采油厂视频监控平台后台管理系统</h3>
			</div>
		</div>

		<s:include value="footer.jsp"></s:include>
	</div>

	<!-- external javascript -->

	<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>

	<!-- calender plugin -->
	<script src='${pageContext.request.contextPath}/bower_components/moment/min/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='${pageContext.request.contextPath}/js/jquery.dataTables.min.js'></script>

	<!-- select or dropdown enhancer -->
	<script src="${pageContext.request.contextPath}/bower_components/chosen/chosen.jquery.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="${pageContext.request.contextPath}/bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- notification plugin -->
	<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>
	<!-- library for making tables responsive -->
	<script src="${pageContext.request.contextPath}/bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<script src="${pageContext.request.contextPath}/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
	<!-- star rating plugin -->
	<script src="${pageContext.request.contextPath}/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="${pageContext.request.contextPath}/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="${pageContext.request.contextPath}/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="${pageContext.request.contextPath}/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="${pageContext.request.contextPath}/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="${pageContext.request.contextPath}/js/charisma.js"></script>
</body>
</html>
