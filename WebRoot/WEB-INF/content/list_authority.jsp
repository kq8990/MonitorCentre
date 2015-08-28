<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<title>摄像机配置</title>

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
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
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
					<s:param name="active" value="'camera'"/>
				</s:include>
			</div>

			<div id="content" class="col-lg-10 col-sm-10">
				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-header well" data-original-title="">
								<h2>
									<i class="glyphicon glyphicon-facetime-video"></i>用户组
								</h2>
								<div class="pull-right">
									<a class="btn btn-default btn-xs" href="javascript:void(0)" onclick="addNewTr()"> 
									    <i class="glyphicon glyphicon-edit icon-white"></i>
									    添加用户组
									</a>
								</div>
							</div>
							<div class="box-content">
								<table class="table" id="table_authority">
								    <thead>
								        <tr>
								            <th>用户组</th>
								            <th>云台转动控制</th>
								            <th>摄像机参数设置</th>
								            <th>预置点调用</th>
								            <th>视频查看</th>
								            <th>自动巡逻执行</th>
								            <th>智能视频监控</th>
								            <th>操作</th>
								        </tr>
								    </thead>
								    <tbody id="tbody_authority">
								        <c:forEach var="authority" items="${authorityList }">
								            <tr id="tr_authority_${authority.id }">
								                <td>${authority.description }</td>
								                <td><input id="checkbox_0" type="checkbox" 
								                        <c:if test="${authority.ptzDirectControl == 1}">checked="checked"</c:if>>
								                </td>
								                <td><input id="checkbox_1" type="checkbox"
								                        <c:if test="${authority.ptzCameraParameter  == 1}">checked="checked"</c:if>>
								                </td>
								                <td><input id="checkbox_2" type="checkbox"
								                        <c:if test="${authority.ptzPresetUse  == 1}">checked="checked"</c:if>>
								                </td>
								                <td><input id="checkbox_3" type="checkbox"
								                        <c:if test="${authority.viewVideo  == 1}">checked="checked"</c:if>>
								                </td>
								                <td><input id="checkbox_4" type="checkbox"
								                        <c:if test="${authority.autoPatrol  == 1}">checked="checked"</c:if>>
								                </td>
								                <td><input id="checkbox_5" type="checkbox"
								                        <c:if test="${authority.videoMonitor  == 1}">checked="checked"</c:if>>
								                </td>
								                <td class="center">
								                    <a class="btn btn-info btn-xs" href="javascript:void(0)" onclick="updateAuthority(${authority.id})"> 
								                        <i class="glyphicon glyphicon-edit icon-white"></i>
								                        保存编辑
								                    </a>
								                    <a class="btn btn-danger btn-xs" href="javascript:void(0)" onclick="deleteAuthority(${authority.id })"> 
								                        <i class="glyphicon glyphicon-trash icon-white"></i>
								                        删除
								                    </a>
								                </td>
								            </tr>
								        </c:forEach>
								    </tbody>
								</table>
							</div>
							<form class="" id="form_authority_update">
								<input name="authority.id" id="authority_id" type="text">
								<input name="authority.description" id="authority_description" type="text">
							    <input name="authority.ptzDirectControl" type="number">
							    <input name="authority.ptzCameraParameter" type="number">
							    <input name="authority.ptzPresetUse" type="number">
							    <input name="authority.viewVideo" type="number">
							    <input name="authority.autoPatrol" type="number">
							    <input name="authority.videoMonitor" type="number">
							</form>
						</div>
					</div>
				</div>
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

	<script type="text/javascript">
		function addAuthority(){
			$("#authority_id").val(null);
			$("#authority_description").val($("#input_authority_description").val());
			$("#form_authority_update input[type='number']").each(function(index) {
			    $(this).val($("#tr_authority_0 #checkbox_" + index).is(":checked") ? 1 : 0);
			});
			
			var params = $("#form_authority_update").serialize();
			$.ajax({
				url : "authority_save",
				type : "POST",
				data : params,
				async : false,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success : function(data) {
					var check = eval("(" + data + ")");
					if (check.result == 1) {
						alert("保存成功");
						window.location = "authority_setting";
					} else {
						alert("保存失败，输入有误");
					}
				}
			});
		}

		function deleteAuthority(id) {
			$.ajax({
				url : "authority_delete",
				type : "POST",
				data : {
					aid : id
				},
				async : false,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success : function(data) {
					var check = eval("(" + data + ")");
					if (check.result == 1) {
						alert("删除成功");
						window.location = "authority_setting";
					} else {
						alert("删除失败");
					}
				}
			});
		}

		function updateAuthority(id) {
			$("#authority_id").val(id);
			$("#authority_description").val($("#tbody_authority #tr_authority_" + id + " td:eq(0)").text());
			
		    $("#form_authority_update input[type='number']").each(function(index) {
		        $(this).val($("#tr_authority_" + id + " #checkbox_" + index).is(":checked") ? 1 : 0);
		    });
			
			var params = $("#form_authority_update").serialize();
			$.ajax({
				url : "authority_update",
				type : "POST",
				data : params,
				async : false,
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				success : function(data) {
					var check = eval("(" + data + ")");
					if (check.result == 1) {
						alert("保存成功");
						window.location = "authority_setting";
					} else {
						alert("保存失败，输入有误");
					}
				}
			});
		}

		function addNewTr(){
			var row = "<tr id='tr_authority_0'><td><input id='input_authority_description' type='text'></td><td><input id='checkbox_0' type='checkbox'></td><td><input id='checkbox_1' type='checkbox'></td><td><input id='checkbox_2' type='checkbox'></td><td><input id='checkbox_3' type='checkbox'></td><td><input id='checkbox_4' type='checkbox'></td><td><input id='checkbox_5' type='checkbox'></td><td><a class='btn btn-warning btn-xs' href='javascript:void(0)' onclick='addAuthority()'><i class='glyphicon glyphicon-edit icon-white'></i> 添　　加</a></td></tr>";

			$("#tr_authority_1").before(row);
		}
	</script>
</body>
</html>