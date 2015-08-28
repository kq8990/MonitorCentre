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

<title>用户配置</title>

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
									<i class="glyphicon glyphicon-facetime-video"></i>用户列表
								</h2>
								<div class="box-icon">
									<button class="btn btn-setting btn-round btn-default" type="button" 
										data-toggle="modal" data-target="#modal_user_save">
										<i class="glyphicon glyphicon-cog"></i>
										添加用户
									</button>
								</div>
							</div>
							<div class="box-content">
								<table id="camera_table"
									class="table table-striped table-bordered bootstrap-datatable datatable responsive">
									<thead>
										<tr>
											<th>用户名</th>
											<th>密码</th>
											<th>用户组</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody id="tbody_user">
										<c:forEach var="user" items="${userList }">
											<tr id="tr_user_${user.id }">
												<td>${user.name }</td>
												<td>${user.password }</td>
												<td id="${user.authority.id }"><c:choose>
														<c:when test="${user.authority.id == 1 }">管理员</c:when>
														<c:when test="${user.authority.id == 2 }">普通用户</c:when>
													</c:choose>
												</td>
												<td class="center">
													<a class="btn btn-info btn-sm" href="javascript:void(0)" onclick="editUserForm(${user.id })"> 
														<i class="glyphicon glyphicon-edit icon-white"></i>
														编辑
													</a>
													<c:if test="${user.name != username}">
														<a class="btn btn-danger btn-sm" href="javascript:void(0)" onclick="deleteUser(${user.id })"> 
															<i class="glyphicon glyphicon-trash icon-white"></i>
															删除
														</a>
													</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="modal_user_update" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h3>用户信息修改</h3>
					</div>
					<form class="form-horizontal" id="form_user_update" method="post">
						<div class="modal-body">
							<div class="form-group hide">
								<label class="col-sm-2 control-label">User ID</label>
								<div class="col-sm-10">
									<input class="form-control" name="user.id" id="user_id" type="number" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-10">
									<input class="form-control" name="user.name" id="user_name" type="text" title="assign">
								</div>
							</div>						
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input class="form-control" name="user.password" id="user_password" type="password" title="assign">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">确认密码</label>
								<div class="col-sm-10">
									<input class="form-control" name="user_password_confirm" id="user_password_confirm" type="password">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">用户组</label>
								<div class="col-sm-10">
									<select class="form-control" name="user.authority.id" id="user_authority_id">
										<option value="1">管理员</option>
										<option value="2">普通用户</option>
									</select>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<a href="#" class="btn btn-default" data-dismiss="modal">关闭</a>
							<a href="javascript:void(0)" class="btn btn-primary" onclick="updateUser()">保存修改</a>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="modal fade" id="modal_user_save" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h3>添加用户信息</h3>
					</div>
					<form class="form-horizontal" id="form_user_save" method="post">
						<div class="modal-body">
							<div class="form-group hide">
								<label class="col-sm-2 control-label">User ID</label>
								<div class="col-sm-10">
									<input class="form-control" name="user.id" id="user_id" type="number" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-10">
									<input class="form-control" name="user.name" id="user_name" type="text" title="assign">
								</div>
							</div>						
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input class="form-control" name="user.password" id="user_password" type="password" title="assign">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">确认密码</label>
								<div class="col-sm-10">
									<input class="form-control" name="user_password_confirm" id="user_password_confirm" type="password">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">用户组</label>
								<div class="col-sm-10">
									<select class="form-control" name="user.authority.id" id="user_authority_id">
										<option value="1">管理员</option>
										<option value="2">普通用户</option>
									</select>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<a href="#" class="btn btn-default" data-dismiss="modal">关闭</a>
							<a href="javascript:void(0)" class="btn btn-primary" onclick="saveUser()">保存修改</a>
						</div>
					</form>
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

		function editUserForm(id) {
			$('#modal_user_update').modal('show').on('shown.bs.modal',function() {
				$("#form_user_update #user_id").val(id);

				$("#form_user_update input[title='assign']").each(function(index) {
					$(this).val($("#tbody_user #tr_user_" + id + " td:eq("	+ index + ")").text());
				});

				$("#form_user_update #user_password_confirm").val($("#tbody_user #tr_user_" + id + " td:eq(1)").text());

				$("#form_user_update #user_authority_id").val($("#tbody_user #tr_user_" + id + " td:eq(2)").attr("id"));

			}).on('hidden.bs.modal', '.modal', function() {
				$(this).removeData('modal');
			});
		}

		function updateUser() {
			var input_check = false;
			$("#form_user_update input[title='assign']").each(function() {
				if($(this).val().length >= 1){
					input_check = true;
				}else{
					input_check = false;
				}
			});
			if(input_check){
				var params = $("#form_user_update").serialize();
				alert(params);
				$.ajax({
					url : "user_update",
					type : "POST",
					data : params,
					async : false,
					contentType: "application/x-www-form-urlencoded; charset=utf-8",
					success : function(data) {
						var check = eval("(" + data + ")");
						if (check.result == 1) {
							alert("保存成功");
							window.location = "user_setting";
						} else {
							alert("保存失败，输入有误");
						}
					}
				});
				$('#modal_user_update').modal('hide').on('hidden.bs.modal', '.modal', function() {
					$(this).removeData('modal');
				});;
			}else{
				alert("输入不能为空！");
			}
		}

		function saveUser() {
			var input_check = false;
			$("#form_user_save input[title='assign']").each(function() {
				if($(this).val().length >= 1){
					input_check = true;
				}else{
					input_check = false;
				}
			});
			if(input_check){
				var params = $("#form_user_save").serialize();
				$.ajax({
					url : "user_save",
					type : "POST",
					data : params,
					async : false,
					contentType: "application/x-www-form-urlencoded; charset=utf-8",
					success : function(data) {
						var check = eval("(" + data + ")");
						if (check.result == 1) {
							alert("保存成功");
							window.location = "camera_setting";
						} else {
							alert("保存失败，输入有误");
						}
					}
				});
				$('#modal_user_update').modal('hide').on('hidden.bs.modal', '.modal', function() {
					$(this).removeData('modal');
				});;
			}else{
				alert("输入不能为空！");
			}
		}

		function deleteUser(id) {
			$.ajax({
				url : "user_delete",
				type : "POST",
				data : {
					uid: id
				},
				async : false,
				success : function(data) {
					var check = eval("(" + data + ")");
					if (check.result == 1) {
						alert("删除成功");
						window.location = "camera_setting";
					} else {
						alert("删除失败");
					}
				}
			});		
		}
	</script>
</body>
</html>