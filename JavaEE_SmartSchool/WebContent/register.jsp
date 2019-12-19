<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css"/>
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript" src="js/ie6Fixpng.js"></script>
<![endif]-->
<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="sideright">
<div class="index">
<s:form action="user_save" method="post" namespace="/">
	<p class="headline">请注册</p>
	<p class="astyle">用户名：</p>
		<input type="text" name="username" value="" placeholder="请输入用户名" required autofocus />
	<p class="astyle">密 码：</p>
		<input type="password" name="password" value="" placeholder="请输入密码" required maxLength="16" /> 
	<!-- 显示错误信息 -->
	<h3 style="color:red;" align="center"><s:actionerror/></h3>
	<input type="submit" value="注册" style="cursor: pointer;" />
</s:form>
<s:form action="user_input" method="get"> <input type="submit" value="返回登录" class="btn btn-primary btn-block btn-large"></s:form>

</div>
</div>
</body>
</html>
