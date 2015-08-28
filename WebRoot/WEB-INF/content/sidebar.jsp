<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- left menu starts -->
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="accordion">
                            <a href="#">
                                <i class="glyphicon glyphicon-plus"></i>
                                <span>客户端</span></a>
                            <ul class="nav nav-pills nav-stacked">
                            </ul>
                        </li>
                        <li class="accordion">
                            <a href="#">
                                <i class="glyphicon glyphicon-plus"></i>
                                <span>总控端</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">服务器</a></li>
                                <li <c:if test="${param.active == 'camera' }">class="active"</c:if>><a href="camera_setting">视频设备</a></li>
                                <li><a href="#">矩阵设备</a></li>
                                <li><a href="#">串口设备</a></li>
                                <li><a href="#">报警管理</a></li>
                                <li><a href="#">报警手机管理</a></li>
                                <li><a href="#">消防管理</a></li>
                                <li><a href="#">解码管理</a></li>
                                <li><a href="#">用户管理</a></li>
                                <li><a href="#">系统管理</a></li>
                                <li><a href="#">记录查询</a></li>
                                <li><a href="#">状态信息</a></li>
                                <li><a href="#">PI服务器</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
	<!--/span-->
	<!-- left menu ends -->

	<!-- external javascript -->
