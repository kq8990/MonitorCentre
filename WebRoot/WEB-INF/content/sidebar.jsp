<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- left menu starts -->
        <div class="sidebar-nav">
            <div class="nav-canvas">
                <div class="nav-sm nav nav-stacked">
                </div>
                <ul class="nav nav-pills nav-stacked main-menu">
                    <li class="nav-header">主菜单</li>
                    <li <c:if test="${param.active == 'video' }">class="active"</c:if>>
                        <a class="ajax-link" href="video_control">
                            <i class="glyphicon glyphicon-film"></i>
                            <span> 视频控制</span>
                        </a>
                    </li>                        
                    <li <c:if test="${param.active == 'camera' }">class="active"</c:if>>
                        <a class="ajax-link" href="camera_setting">
                            <i class="glyphicon glyphicon-facetime-video"></i>
                            <span> 摄像机配置</span>
                        </a>
                    </li>
                    <li <c:if test="${param.active == 'user' }">class="active"</c:if>>
                        <a class="ajax-link" href="user_setting">
                            <i class="glyphicon glyphicon-user"></i>
                            <span> 用户管理</span>
                        </a>
                    </li>
                    <li <c:if test="${param.active == 'authority' }">class="active"</c:if>>
                        <a class="ajax-link" href="authority_setting">
                            <i class="glyphicon glyphicon-wrench"></i>
                            <span> 权限管理</span>
                        </a>
                    </li>
                    <li <c:if test="${param.active == 'query_log' }">class="active"</c:if>>
                        <a class="ajax-link" href="UserlogQuery">
                            <i class="glyphicon glyphicon-user"></i>
                            <span> 用户操作记录查询</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
	<!-- left menu ends -->