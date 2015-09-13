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

<meta name="viewport" content="width=device-width, initial-scale=1">

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
    <script src="${pageContext.request.contextPath}/bower_components/bootstrap-tour/build/js/html5shiv.js"></script>
<![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>

	<s:include value="header.jsp"></s:include>

	<div class="ch-container">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-lg-2">
				<s:include value="sidebar.jsp">
					<s:param name="active" value="'video'"/>
				</s:include>
			</div>

			<div id="content" class="col-xs-10 col-sm-10 col-lg-10 ">
                <!-- content starts -->
                <div class="row">
                    <div class="col-xs-12 col-md-12 hide">
                        <div class="box-inner">
                            <div class="box-header well" data-original-title="">
                                <h2><i class="glyphicon glyphicon-th"></i>登录信息</h2>

                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                                            class="glyphicon glyphicon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                            class="glyphicon glyphicon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round btn-default"><i
                                            class="glyphicon glyphicon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>地址</label>
                                        <input type="text" class="form-control input-sm" id="DeviceIP" value="172.7.76.85">
                                    </div>
                                    <div class="form-group">
                                        <label>端口</label>
                                        <input type="text" class="form-control input-sm" id="DevicePort" value="8000">
                                    </div>
                                    <div class="form-group">
                                        <label>帐号</label>
                                        <input type="text" class="form-control input-sm" id="DeviceUsername" value="admin">
                                    </div>
                                    <div class="form-group">
                                        <label>密码</label>
                                        <input type="text" class="form-control input-sm" id="DevicePasswd" value="12345">
                                    </div>
                                    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('LoginDev')">注册</button>
                                    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('LogoutDev')">注销</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p></p>
                <div class="row">
                    <div class="col-xs-8 col-md-8" id="BodyRight">
						<div class="row" id="OCXBody">
                            <div class="col-xs-12 col-md-12" id="NetPlayOCX1">
                                <div class="panel panel-default">
                                    <div class="panel-body" id="panel_body_play">
                                        <object classid="CLSID:CAFCF48D-8E34-4490-8154-026191D73924" codebase="${pageContext.request.contextPath}/codebase/NetVideoActiveX23.cab#version=2,3,23,6" standby="Waiting..." id="HIKOBJECT1" width="100%" height="512px" name="HIKOBJECT1"></object>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="box-inner">
                            <div class="box-header well" id="OperatLogTitle" data-original-title="">
                                <h2><i class="glyphicon glyphicon-th"></i>日志（运行结果）</h2>

                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                                            class="glyphicon glyphicon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                            class="glyphicon glyphicon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round btn-default"><i
                                            class="glyphicon glyphicon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <div id="OperatLogBody" align="left"></div>
                            </div>
                        </div>
					</div>
					
					<div class="col-xs-4 col-md-4">
                        <div class="box-inner">
                            <div class="box-header well" data-original-title="">
                                <h2><i class="glyphicon glyphicon-th"></i>视频参数</h2>

                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                                            class="glyphicon glyphicon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                            class="glyphicon glyphicon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round btn-default"><i
                                            class="glyphicon glyphicon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                            	<div class="form-inline">
                            	    <div class="form-group">
                            	        <label>监控结点</label>
                            	        <select class="form-control input-sm" name="CameraList" id="CameraList">
                            	            <c:forEach var="camera" items="${camreaList }">
                            	            	<option value="${camera.ipAddress }">${camera.name }(${camera.ipAddress })</option>
                            	            </c:forEach>
                            	        </select>
                            	    </div>
                            	    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('LoginDev')">注册</button>
                                    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('LogoutDev')">注销</button>                            	  
                            	</div>
                            	<p></p>
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>设备名称</label>
                                        <input type="text" class="form-control input-sm" name="DeviceName" id="DeviceName" readonly>
                                    </div>
                                    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('getDevName')">获取</button>
                                </div>
                                <p></p>
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>通道列表</label>
                                        <select class="form-control input-sm" name="ChannelList" id="ChannelList">
                                            <!-- <option value="0">Camera 01</option>
                                                <option value="1">Camera 02</option>-->
                                        </select>
                                    </div>
                                    <button class="btn btn-default btn-sm" onClick="ButtonPress('getDevChan')" >获取</button>
                                </div>
                                <p></p>
                                <p>
                                    <button class="btn btn-default btn-sm" onClick="ButtonPress('Preview:start')">开始预览</button>
                                    <button class="btn btn-default btn-sm" onClick="ButtonPress('Preview:stop')">停止预览</button>
                                </p>
                            </div>
                        </div>
						<p></p>
                        <div class="box-inner">
                            <div class="box-header well" data-original-title="">
                                <h2><i class="glyphicon glyphicon-th"></i>云台控制</h2>

                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                                            class="glyphicon glyphicon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                            class="glyphicon glyphicon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round btn-default"><i
                                            class="glyphicon glyphicon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6">
                                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" style="width=100%" onClick="ButtonPress('PTZ:leftup')">左上</button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" style="width=100%" onClick="ButtonPress('PTZ:up')"> 上 </button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" style="width=100%" onClick="ButtonPress('PTZ:rightup')">右上</button>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('PTZ:left')">左</button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('PTZ:stop')">停止</button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('PTZ:right')">右</button>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('PTZ:leftdown')">左下</button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('PTZ:down')">下</button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('PTZ:rightdown')">右下</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6">
                                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('zoom:in')">
                                                    <i class="glyphicon glyphicon-arrow-up"></i>
                                                </button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('focus:in')">
                                                    <i class="glyphicon glyphicon-arrow-up"></i>
                                                </button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('iris:in')">
                                                    <i class="glyphicon glyphicon-arrow-up"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                            <div class="btn-group" role="group">
                                                <p class="center">焦距</p>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <p class="center">焦点</p>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <p class="center">光圈</p>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('zoom:out')">
                                                    <i class="glyphicon glyphicon-arrow-down"></i>
                                                </button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('focus:out')">
                                                    <i class="glyphicon glyphicon-arrow-down"></i>
                                                </button>
                                            </div>
                                            <div class="btn-group" role="group">
                                                <button class="btn btn-default btn-sm" onClick="ButtonPress('iris:out')">
                                                    <i class="glyphicon glyphicon-arrow-down"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p></p>
                                <div class="row">
                                    <div class="form-inline">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group">
                                                <label>预置点：</label>
                                                <select class="form-control input-sm" name="Preset" id="Preset">
                                                	<c:forEach var="item" varStatus="status" begin="1" end="60">
                                                		<option value="${status.index }">${status.index }</option>
                                                	</c:forEach>
                                                </select>
                                            </div>
                                            <p></p>
                                            <div class="form-group">
                                                <label>预置点说明：</label>
                                                <input type="text" class="form-control input-sm" id = "presetExplain">
                                            </div>
                                            <p></p>
                                            <div class="form-group">
                                            	<button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('setPreset')">设置</button>
                                            	<button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('goPreset')">调用</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<p></p>
                        <div class="box-inner">
                            <div class="box-header well" data-original-title="">
                                <h2><i class="glyphicon glyphicon-th"></i>图像参数</h2>

                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                                            class="glyphicon glyphicon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                            class="glyphicon glyphicon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round btn-default"><i
                                            class="glyphicon glyphicon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>亮&nbsp;&nbsp;&nbsp;&nbsp;度</label>
                                        <select class="form-control input-sm" name="PicLight" id="PicLight">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <div class="form-group">
                                        <label>对比度</label>
                                        <select class="form-control input-sm" name="PicContrast" id="PicContrast">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('getImagePar')">获取</button>
                                </div>

                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>色&nbsp;&nbsp;&nbsp;&nbsp;调</label>
                                        <select class="form-control input-sm" name="PicTonal" id="PicTonal">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <div class="form-group">
                                        <label>饱和度</label>
                                        <select class="form-control input-sm" name="PicSaturation" id="PicSaturation">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-default btn-sm" onClick="ButtonPress('setImagePar')">设置</button>
                                </div>
                            </div>
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
	//全局变量定义
	var m_iNowChanNo = -1; //当前通道号
	var m_iLoginUserId = -1; //注册设备用户ID
	var m_iChannelNum = -1; //模拟通道总数
	var m_bDVRControl = null; //OCX控件对象
	var m_iProtocolType = 0; //协议类型，0 – TCP， 1 - UDP
	var m_iStreamType = 0; //码流类型，0 表示主码流， 1 表示子码流
	var m_iPlay = 0; //当前是否正在预览
	var m_iRecord = 0; //当前是否正在录像
	var m_iTalk = 0; //当前是否正在对讲 
	var m_iVoice = 0; //当前是否打开声音
	var m_iAutoPTZ = 0; //当前云台是否正在自转
	var m_iPTZSpeed = 4; //云台速度

	window.onload = function() {
		var myDate = new Date();
		var iYear = myDate.getFullYear();
		if ((iYear < 1971) || (iYear > 2037)) {
			alert("为了正常使用本软件，请将系统日期年限设置在1971-2037范围内！");
			//parent.location.href = "../login.php";
		}
		if (document.getElementById("HIKOBJECT1").object == null) {
			alert("请先下载控件并注册！");
			m_bDVRControl = null;
		} else {
			m_bDVRControl = document.getElementById("HIKOBJECT1");
		}

		var width = document.getElementById("panel_body_play").offsetWidth;
		var height = width * 3 / 4;
		document.getElementById("HIKOBJECT1").height = "512px";

	}

	function ButtonPress(sKey) {
		try {
			switch (sKey) {
			case "LoginDev": {
				// var szDevIp = document.getElementById("DeviceIP").value;
				var szDevIp = document.getElementById("CameraList").value;
				var szDevPort = document.getElementById("DevicePort").value;
				var szDevUser = document.getElementById("DeviceUsername").value;
				var szDevPwd = document.getElementById("DevicePasswd").value;
				m_iLoginUserId = m_bDVRControl.Login(szDevIp, szDevPort, szDevUser, szDevPwd);
				if (m_iLoginUserId == -1) {
					LogMessage("注册失败！");
				} else {
					LogMessage("注册成功！");
					var params = "preset.ipAddress=" + szDevIp;
					$.ajax({
						url : "preset_list",
						type : "POST",
						data : params,
						async : false,
						contentType: "application/x-www-form-urlencoded; charset=utf-8",
						success : function(data) {
							var check = eval("(" + data + ")");
							var preset_explain = check.preset_explain;
							if (check.result == 1) {
								$("#Preset").change(function(){
									$("#presetExplain").val(preset_explain['preset_' + ($(this).val() - 1)]);
								});
								$("#presetExplain").val(preset_explain['preset_0']);
								LogMessage("获取预置点说明成功！");
							} else {
								LogMessage("获取预置点说明失败！");
							}
						}
					});
				}
				break;
			}
			case "LogoutDev": {
				if (m_bDVRControl.Logout()) {
					LogMessage("注销成功！");
				} else {
					LogMessage("注销失败！");
				}
				break;
			}
			case "getDevName": {
				var szDecName = m_bDVRControl.GetServerName();
				//szDecName = szDecName.replace(/\s/g,"&nbsp;"); 
				if (szDecName == "") {
					LogMessage("获取名称失败！");
					szDecName = "Embedded Net DVR";
				} else {
					LogMessage("获取名称成功！");
				}
				document.getElementById("DeviceName").value = szDecName;
				break;
			}
			case "getDevChan": {
				szServerInfo = m_bDVRControl.GetServerInfo();
				var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
				xmlDoc.async = "false";
				xmlDoc.loadXML(szServerInfo);
				m_iChannelNum = parseInt(xmlDoc.documentElement.childNodes[0].childNodes[0].nodeValue);
				//m_szDeviceType = xmlDoc.documentElement.childNodes[1].childNodes[0].nodeValue;
				//m_iChannelNum = parseInt(iChannelNum);
				if (m_iChannelNum < 1) {
					LogMessage("获取通道失败！");
				} else {
					LogMessage("获取通道成功！");
					document.getElementById("ChannelList").length = 0; //先清空下拉列表
					for (var i = 0; i < m_iChannelNum; i++) {
						var szChannelName = m_bDVRControl.GetChannelName(i);
						if (szChannelName == "") {
							szChannelName = "通道" + (i + 1);
						}
						document.getElementById("ChannelList").options
								.add(new Option(szChannelName, i));
					}
				}
				break;
			}
			case "Preview:start": {
				m_iNowChanNo = parseInt(document.getElementById("ChannelList").value);
				if (m_iNowChanNo > -1) {
					if (m_iPlay == 1) {
						m_bDVRControl.StopRealPlay();
					}

					var bRet = m_bDVRControl.StartRealPlay(m_iNowChanNo,
							m_iProtocolType, m_iStreamType);
					if (bRet) {
						LogMessage("预览通道" + (m_iNowChanNo + 1) + "成功！");
						m_iPlay = 1;
					} else {
						LogMessage("预览通道" + (m_iNowChanNo + 1) + "失败！");
					}
				} else {
					LogMessage("请选择通道号！");
				}
				break;
			}
			case "Preview:stop": {

				if (m_bDVRControl.StopRealPlay()) {
					LogMessage("停止预览成功！");
					m_iPlay = 0;
				} else {
					LogMessage("停止预览失败！");
				}
				break;
			}
			case "CatPic:bmp": {
				if (m_iPlay == 1) {
					if (m_bDVRControl.BMPCapturePicture("C:/OCXBMPCaptureFiles", 1)) {
						LogMessage("抓BMP图成功！");
					} else {
						LogMessage("抓BMP图失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "CatPic:jpeg": {
				if (m_iPlay == 1) {
					if (m_bDVRControl.JPEGCapturePicture((m_iNowChanNo + 1), 2,
							0, "C:/OCXJPEGCaptureFiles", 1)) {
						LogMessage("抓JPEG图成功！");
					} else {
						LogMessage("抓JPEG图失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "Record:start": {
				if (m_iPlay == 1) {
					if (m_iRecord == 0) {
						if (m_bDVRControl.StartRecord("C:/OCXRecordFiles")) {
							LogMessage("开始录像成功！");
							m_iRecord = 1;
						} else {
							LogMessage("开始录像失败！");
						}
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "Record:stop": {
				if (m_iRecord == 1) {
					if (m_bDVRControl.StopRecord(1)) {
						LogMessage("停止录像成功！");
						m_iRecord = 0;
					} else {
						LogMessage("停止录像失败！");
					}
				}
				break;
			}
			case "talk:start": {
				if (m_iLoginUserId > -1) {
					if (m_iTalk == 0) {
						if (m_bDVRControl.StartTalk(1)) {
							LogMessage("开始对讲成功！");
							m_iTalk = 1;
						} else {
							var dRet = m_bDVRControl.GetLastError();
							LogMessage("开始对讲失败！错误号：" + dRet);
						}
					}
				} else {
					LogMessage("请注册设备！");
				}
				break;
			}
			case "talk:stop": {
				if (m_iTalk == 1) {
					if (m_bDVRControl.StopTalk()) {
						LogMessage("停止对讲成功！");
						m_iTalk = 0;
					} else {
						LogMessage("停止对讲失败！");
					}
				}
				break;
			}
			case "voice:start": {
				if (m_iPlay == 1) {
					if (m_iVoice == 0) {
						if (m_bDVRControl.OpenSound(1)) {
							LogMessage("打开声音成功！");
							m_iVoice = 1;
						} else {
							LogMessage("打开声音失败！");
						}
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "voice:stop": {
				if (m_iVoice == 1) {
					if (m_bDVRControl.CloseSound(1)) {
						LogMessage("关闭声音成功！");
						m_iVoice = 0;
					} else {
						LogMessage("关闭声音失败！");
					}
				}
				break;
			}
			case "PTZ:stop": {
				if (m_iPlay == 1) {
					if (m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed)) {
						LogMessage("停止PTZ成功！");
						m_iAutoPTZ = 0;
					} else {
						LogMessage("停止PTZ失败！");
					}
				}
				break;
			}
			case "PTZ:leftup": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(13, m_iPTZSpeed)) {
						LogMessage("PTZ左上成功！");
					} else {
						LogMessage("PTZ左上失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:rightup": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(14, m_iPTZSpeed)) {
						LogMessage("PTZ右上成功！");
					} else {
						LogMessage("PTZ右上失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:up": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(0, m_iPTZSpeed)) {
						LogMessage("PTZ上成功！");
					} else {
						LogMessage("PTZ上失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:left": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(2, m_iPTZSpeed)) {
						LogMessage("PTZ向左成功！");
					} else {
						LogMessage("PTZ向左失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:right": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(3, m_iPTZSpeed)) {
						LogMessage("PTZ向右成功！");
					} else {
						LogMessage("PTZ向右失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:rightdown": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(16, m_iPTZSpeed)) {
						LogMessage("PTZ右下成功！");
					} else {
						LogMessage("PTZ右下失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:leftdown": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(15, m_iPTZSpeed)) {
						LogMessage("PTZ左下成功！");
					} else {
						LogMessage("PTZ左下失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:down": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(1, m_iPTZSpeed)) {
						LogMessage("PTZ向下成功！");
					} else {
						LogMessage("PTZ向下失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "PTZ:auto": {
				if (m_iPlay == 1) {
					if (m_bDVRControl.PTZCtrlStart(10, m_iPTZSpeed)) {
						LogMessage("PTZ自转成功！");
						m_iAutoPTZ = 1;
					} else {
						LogMessage("PTZ自转失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "zoom:in": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(4, m_iPTZSpeed)) {
						LogMessage("焦距拉近成功！");
					} else {
						LogMessage("焦距拉近失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "zoom:out": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(5, m_iPTZSpeed)) {
						LogMessage("焦距拉远成功！");
					} else {
						LogMessage("焦距拉远失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "focus:in": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(6, m_iPTZSpeed)) {
						LogMessage("聚焦拉近成功！");
					} else {
						LogMessage("聚焦拉近失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "focus:out": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(7, m_iPTZSpeed)) {
						LogMessage("聚焦拉远成功！");
					} else {
						LogMessage("聚焦拉远失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "iris:in": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(8, m_iPTZSpeed)) {
						LogMessage("光圈大成功！");
					} else {
						LogMessage("光圈大失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "iris:out": {
				if (m_iPlay == 1) {
					if (m_iAutoPTZ == 1) {
						m_bDVRControl.PTZCtrlStop(10, m_iPTZSpeed);
						m_iAutoPTZ = 0;
					}
					if (m_bDVRControl.PTZCtrlStart(9, m_iPTZSpeed)) {
						LogMessage("光圈小成功！");
					} else {
						LogMessage("光圈小失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "getImagePar": {
				if (m_iPlay == 1) {
					var szXmlInfo = m_bDVRControl.GetVideoEffect();
					if (szXmlInfo != "") {
						var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
						xmlDoc.async = "false";
						xmlDoc.loadXML(szXmlInfo);
						document.getElementById("PicLight").value = xmlDoc.documentElement.childNodes[0].childNodes[0].nodeValue;
						document.getElementById("PicContrast").value = xmlDoc.documentElement.childNodes[1].childNodes[0].nodeValue;
						document.getElementById("PicSaturation").value = xmlDoc.documentElement.childNodes[2].childNodes[0].nodeValue;
						document.getElementById("PicTonal").value = xmlDoc.documentElement.childNodes[3].childNodes[0].nodeValue;
						LogMessage("获取图像参数成功！");
					} else {
						LogMessage("获取图像参数失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "setImagePar": {
				if (m_iPlay == 1) {
					var iL = parseInt(document.getElementById("PicLight").value);
					var iC = parseInt(document.getElementById("PicContrast").value);
					var iS = parseInt(document.getElementById("PicSaturation").value);
					var iT = parseInt(document.getElementById("PicTonal").value);
					var bRet = m_bDVRControl.SetVideoEffect(iL, iC, iS, iT);
					if (bRet) {
						LogMessage("设置图像参数成功！");
					} else {
						LogMessage("设置图像参数失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "setPreset": {
				m_iPlay = 1;
				if (m_iPlay == 1) {
					var iPreset = parseInt(document.getElementById("Preset").value);
					var bRet = m_bDVRControl.PTZCtrlSetPreset(iPreset);
					if (bRet == 1) {
						var szDevIp = document.getElementById("CameraList").value;
						var presetExplain = document.getElementById("presetExplain").value;
						var params = "preset.index=" + (iPreset - 1) + "&preset.ipAddress=" + szDevIp + "&preset.explain=" + presetExplain + "&preset.status=1";
						$.ajax({
							url : "preset_update",
							type : "POST",
							data : params,
							async : false,
							contentType: "application/x-www-form-urlencoded; charset=utf-8",
							success : function(data) {
								var check = eval("(" + data + ")");
								if (check.result == 1) {
									var preset_explain = check.preset_explain;
									$("#Preset").change(function(){
										$("#presetExplain").val(preset_explain['preset_' + ($(this).val() - 1)]);
									});
									$("#presetExplain").val(preset_explain['preset_' + $("#Preset").get(0).selectedIndex]);
									LogMessage("设置预置点成功！");
								} else {
									if (check.fieldErrors != null){
										LogMessage("设置预置点失败！" + check.fieldErrors.error[0]);
									} else{
										LogMessage("设置预置点失败！");
									}									
								}
							}
						});
					} else {
						LogMessage("设置预置点失败！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			case "goPreset": {
				if (m_iPlay == 1) {
					var iPreset = parseInt(document.getElementById("Preset").value);
					var bRet = m_bDVRControl.PTZCtrlGotoPreset(iPreset);
					if (bRet) {
						LogMessage("调用预置点成功！");
					} else {
						LogMessage("调用预置点成功！");
					}
				} else {
					LogMessage("请先预览！");
				}
				break;
			}
			default: {
				//Record:start   setPreset
				break;
			}
			} //switch  
		} catch (err) {
			alert(err);
		}
	}

	/*************************************************
	  Function:     LogMessage
	  Description:  写执行结果日志
	  Input:        msg:日志
	  Output:       无
	  Return:       无
	 *************************************************/
	function LogMessage(msg) {
		//获取日期与时间
		var myDate = new Date();
		var szNowTime = myDate.toLocaleString();

		document.getElementById("OperatLogBody").innerHTML = szNowTime
				+ " --> " + msg + "<br>"
				+ document.getElementById("OperatLogBody").innerHTML;
	}
</script>
</body>
</html>