<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
	href='${pageContext.request.contextPath}/bower_components/datatables-1.10.7/media/css/jquery.dataTables.css'>
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
					<s:param name="active" value="'camera'" />
				</s:include>
			</div>

			<div id="content" class="col-lg-10 col-sm-10">
				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-header well" data-original-title="">
								<h2>
									<i class="glyphicon glyphicon-facetime-video"></i>镜头列表
								</h2>
								<div class="pull-right">
									<button class="btn btn-inverse btn-default btn-xs"
										type="button" data-toggle="modal"
										data-target="#modal_camera_save">
										<i class="glyphicon glyphicon-edit icon-white"></i> 添加镜头
									</button>
								</div>
							</div>
							<div class="box-content">
								<table id="table_camera" class="display">
									<thead>
										<tr>
											<th>IP地址</th>
											<th>通道号</th>
											<th>通道名称</th>
											<th>归属</th>
											<th>水平零位</th>
											<th>俯仰零位</th>
											<th>纬度</th>
											<th>经度</th>
											<th>角度回传</th>
											<th>变倍</th>
											<th>调焦</th>
											<th>云台移动</th>
											<th>光源</th>
											<th>访问方式</th>
											<th>温差</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody id="camera_tbody">
										<c:forEach var="camera" items="${cameraList }">
											<tr id="camera_tr_${camera.id }">
												<td>${camera.ipAddress }</td>
												<td>${camera.channelNumber }</td>
												<td>${camera.name }</td>
												<td>第${camera.belongs % 10}矿，第 <fmt:formatNumber
														type='number'
														value='${(camera.belongs - camera.belongs % 10) / 10}'
														maxFractionDigits="0" /> 队
												</td>
												<td>${camera.hzAngle }</td>
												<td>${camera.vzAngle }</td>
												<td>${camera.latitude }</td>
												<td>${camera.longitude }</td>
												<td>${camera.angleReturn }</td>
												<td id="${camera.zoom}"><c:choose>
														<c:when test="${camera.zoom == 0}">不可变</c:when>
														<c:when test="${camera.zoom == 1}">连续变倍</c:when>
														<c:when test="${camera.zoom == 2}">两级变倍</c:when>
													</c:choose></td>
												<td id="${camera.focusing}"><c:choose>
														<c:when test="${camera.focusing == 0}">不可调焦</c:when>
														<c:when test="${camera.focusing == 1}">可调焦</c:when>
													</c:choose></td>
												<td id="${camera.moving}"><c:choose>
														<c:when test="${camera.moving == 0}">固定云台</c:when>
														<c:when test="${camera.moving == 1}">可移动云台</c:when>
													</c:choose></td>
												<td id="${camera.lightSource}"><c:choose>
														<c:when test="${camera.lightSource == 1}">红外</c:when>
														<c:when test="${camera.lightSource == 2}">白光</c:when>
													</c:choose></td>
												<td id="${camera.accessMode}"><c:choose>
														<c:when test="${camera.accessMode == 0}">老方法播放</c:when>
														<c:when test="${camera.accessMode == 1}">VLC播放</c:when>
														<c:when test="${camera.accessMode == 2}">无法播放</c:when>
													</c:choose></td>
												<td id="${camera.temperatureDifference}"><c:choose>
														<c:when test="${camera.temperatureDifference == 0}">黑热</c:when>
														<c:when test="${camera.temperatureDifference == 1}">白热</c:when>
													</c:choose></td>

												<td class="center"><a class="btn btn-info btn-xs"
													href="javascript:void(0)"
													onclick="editCameraForm(${camera.id })"> <i
														class="glyphicon glyphicon-edit icon-white"></i> 编辑
												</a> <a class="btn btn-danger btn-xs" href="javascript:void(0)"
													onclick="deleteCamera(${camera.id })"> <i
														class="glyphicon glyphicon-trash icon-white"></i> 删除
												</a></td>
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

		<div class="modal fade" id="modal_camera_update" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h3>镜头信息修改</h3>
					</div>
					<form class="form-horizontal" id="form_camera_update" method="post">
						<div class="modal-body">
							<div class="form-group hide">
								<label class="col-sm-2 control-label">Camera ID</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.id" id="camera_id"
										type="number" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">IP地址</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.ipAddress"
										id="ipAddress" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">通道号</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.channelNumber"
										id="channelNumber" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">通道名称</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.name" id="camera.name"
										type="text">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">归属</label>
								<div class="col-sm-10">
									<div class="input-group">
										<div class="input-group-addon">第</div>
										<input type="number" class="form-control" id="number_mine"
											placeholder="数字">
										<div class="input-group-addon">矿</div>
										<div class="input-group-addon">第</div>
										<input type="number" class="form-control" id="number_team"
											placeholder="数字">
										<div class="input-group-addon">队</div>
									</div>
									<input class="form-control hide" name="camera.belongs"
										id="belongs" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">水平零位</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.hzAngle"
										id="hZeroAngle" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">俯仰零位</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.vzAngle"
										id="vZeroAngle" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">纬度</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.latitude"
										id="latitude" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">经度</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.longitude"
										id="longitude" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">角度回转</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.angleReturn"
										id="angleReturn" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">变倍</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.zoom" id="zoom">
										<option value="0">不可变</option>
										<option value="1">连续变倍</option>
										<option value="2">两级变倍</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">调焦</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.focusing"
										id="focusing">
										<option value="0">不可调焦</option>
										<option value="1">可调焦</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">云台移动</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.moving" id="moving">
										<option value="0">固定云台</option>
										<option value="1">可移动云台</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">光源</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.lightSource"
										id="lightSource">
										<option value="1">红外</option>
										<option value="2">白光</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">访问方式</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.accessMode"
										id="accessMode">
										<option value="0">老方法播放</option>
										<option value="1">VLC播放</option>
										<option value="2">无法播放</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">温差</label>
								<div class="col-sm-10">
									<select class="form-control"
										name="camera.temperatureDifference" id="temperatureDifference">
										<option value="0">黑热</option>
										<option value="1">白热</option>
									</select>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<a href="#" class="btn btn-default" data-dismiss="modal">关闭</a> <a
								href="javascript:void(0)" class="btn btn-primary"
								onclick="updateCamera()">保存修改</a>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="modal fade" id="modal_camera_save" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h3>添加镜头信息</h3>
					</div>
					<form class="form-horizontal" id="form_camera_save" method="post">
						<div class="modal-body">
							<div class="form-group">
								<label class="col-sm-2 control-label">IP地址</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.ipAddress"
										id="ipAddress" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">通道号</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.channelNumber"
										id="channelNumber" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">通道名称</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.name" id="camera.name"
										type="text">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">归属</label>
								<div class="col-sm-10">
									<div class="input-group">
										<div class="input-group-addon">第</div>
										<input type="number" class="form-control" id="number_mine"
											placeholder="数字">
										<div class="input-group-addon">矿</div>
										<div class="input-group-addon">第</div>
										<input type="number" class="form-control" id="number_team"
											placeholder="数字">
										<div class="input-group-addon">队</div>
									</div>
									<input class="form-control hide" name="camera.belongs"
										id="belongs" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">水平零位</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.hzAngle"
										id="hZeroAngle" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">俯仰零位</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.vzAngle"
										id="vZeroAngle" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">纬度</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.latitude"
										id="latitude" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">经度</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.longitude"
										id="longitude" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">角度回转</label>
								<div class="col-sm-10">
									<input class="form-control" name="camera.angleReturn"
										id="angleReturn" type="text" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">变倍</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.zoom" id="zoom">
										<option value="0">不可变</option>
										<option value="1">连续变倍</option>
										<option value="2">两级变倍</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">调焦</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.focusing"
										id="focusing">
										<option value="0">不可调焦</option>
										<option value="1">可调焦</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">云台移动</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.moving" id="moving">
										<option value="0">固定云台</option>
										<option value="1">可移动云台</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">光源</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.lightSource"
										id="lightSource">
										<option value="1">红外</option>
										<option value="2">白光</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">访问方式</label>
								<div class="col-sm-10">
									<select class="form-control" name="camera.accessMode"
										id="accessMode">
										<option value="0">老方法播放</option>
										<option value="1">VLC播放</option>
										<option value="2">无法播放</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">温差</label>
								<div class="col-sm-10">
									<select class="form-control"
										name="camera.temperatureDifference" id="temperatureDifference">
										<option value="0">黑热</option>
										<option value="1">白热</option>
									</select>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<a href="#" class="btn btn-default" data-dismiss="modal">关闭</a> <a
								href="javascript:void(0)" class="btn btn-primary"
								onclick="saveCamera()">增加镜头</a>
						</div>
					</form>
				</div>
			</div>
		</div>

		<s:include value="footer.jsp"></s:include>
	</div>

	<!-- external javascript -->

	<script
		src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>

	<!-- calender plugin -->
	<script
		src='${pageContext.request.contextPath}/bower_components/moment/min/moment.min.js'></script>
	<script
		src='${pageContext.request.contextPath}/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script
		src='${pageContext.request.contextPath}/bower_components/datatables-1.10.7/media/js/jquery.dataTables.js'></script>

	<!-- select or dropdown enhancer -->
	<script
		src="${pageContext.request.contextPath}/bower_components/chosen/chosen.jquery.min.js"></script>
	<!-- plugin for gallery image view -->
	<script
		src="${pageContext.request.contextPath}/bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- notification plugin -->
	<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>
	<!-- library for making tables responsive -->
	<script
		src="${pageContext.request.contextPath}/bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<script
		src="${pageContext.request.contextPath}/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
	<!-- star rating plugin -->
	<script src="${pageContext.request.contextPath}/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="${pageContext.request.contextPath}/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="${pageContext.request.contextPath}/js/charisma.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#table_camera').dataTable({
				"language" : {
					"url" : "bower_components/datatables-1.10.7/Chinese.json"
				}
			});
		});

		function editCameraForm(id) {
			$('#modal_camera_update')
					.modal('show')
					.on(
							'shown.bs.modal',
							function() {
								$("#camera_id").val(id);

								$("#form_camera_update input[type='text']")
										.each(
												function(index) {
													$(this)
															.val(
																	$(
																			"#camera_tbody #camera_tr_"
																					+ id
																					+ " td:eq("
																					+ index
																					+ ")")
																			.text());
												});

								$("#form_camera_update select")
										.each(
												function(index) {
													$(this)
															.val(
																	$(
																			"#camera_tbody #camera_tr_"
																					+ id
																					+ " td:eq("
																					+ (index + 9)
																					+ ")")
																			.attr(
																					"id"));
												});
							}).on('hidden.bs.modal', '.modal', function() {
						$(this).removeData('modal');
					});
		}

		function saveCamera() {
			var number_mine = $("#form_camera_save #number_mine").val();
			var number_team = $("#form_camera_save #number_team").val();
			var number = number_team + number_mine;
			$("#form_camera_save #belongs").val(number);

			var input_check = false;
			$("#form_camera_save input[type='text']").each(function() {
				if ($(this).val().length >= 1) {
					input_check = true;
				} else {
					input_check = false;
				}
			});

			if (input_check) {
				var params = $("#form_camera_save").serialize();
				$
						.ajax({
							url : "camera_save",
							type : "POST",
							data : params,
							async : false,
							contentType : "application/x-www-form-urlencoded; charset=utf-8",
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
				$('#modal_camera_update').modal('hide').on('hidden.bs.modal',
						'.modal', function() {
							$(this).removeData('modal');
						});
				;
			} else {
				alert("输入不能为空！");
			}
		}

		function deleteCamera(id) {
			$.ajax({
				url : "camera_delete",
				type : "POST",
				data : {
					cid : id
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

		function updateCamera() {
			var number_mine = $("#form_camera_update #number_mine").val();
			var number_team = $("#form_camera_update #number_team").val();
			var number = number_team + number_mine;
			$("#form_camera_update #belongs").val(number);

			var input_check = false;
			$("#form_camera_update input[type='text']").each(function() {
				if ($(this).val().length >= 1) {
					input_check = true;
				} else {
					input_check = false;
				}
			});

			if (input_check) {
				var params = $("#form_camera_update").serialize();
				$
						.ajax({
							url : "camera_update",
							type : "POST",
							data : params,
							async : false,
							contentType : "application/x-www-form-urlencoded; charset=utf-8",
							success : function(data) {
								var check = eval("(" + data + ")");
								if (check.result == 1) {
									alert("保存成功");
									window.location = "camera_setting";
									$('#modal_camera_update').modal('hide').on(
											'hidden.bs.modal', '.modal',
											function() {
												$(this).removeData('modal');
											});
									;
								} else {
									alert("保存失败，输入有误");
								}
							}
						});
			} else {
				alert("输入不能为空！");
			}
		}
	</script>
</body>
</html>