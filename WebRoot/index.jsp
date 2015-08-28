<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>隐藏的首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
-->

<%response.sendRedirect("home_page"); %>

</head>

<body>
	This is my JSP page.
	<br>
<%-- 	<s:fielderror/>

	<s:form action="processLogin" validate="true">
		<s:textfield name="user.name" label="用户名" />
		<s:textfield name="user.password" label="密码" />
		<tr>
			<td colspan="2"><s:submit value="登录" theme="simple" />
				<s:reset theme="simple" value="重填" /></td>
		</tr>
	</s:form> --%>
</body>
</html>
