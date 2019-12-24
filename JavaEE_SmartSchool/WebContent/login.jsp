<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
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
<s:form action="user_login" method="post" namespace="/" >
	<p class="headline">请登录</p>
	<p class="astyle">用户名：</p>
		<input type="text" name="user_id" value="" placeholder="请输入用户名" required autofocus />
	<p class="astyle">密 码：</p>
		<input type="password" name="password" value="" placeholder="请输入密码" required maxLength="16" /> 
	<!-- 显示错误信息 -->
	<h3 style="color:red;" align="center"><s:actionerror/></h3>
	<input type="submit" value="登录" style="cursor: pointer;" />
</s:form>
	 <s:form action="lgNotice_findAll" method="get" namespace="/"> 
	     <input type="submit" value="测试查询所有后勤通知"  class="btn btn-primary btn-block btn-large" />
	 </s:form>
	 <s:form action="files_findAll" method="get" namespace="/"> 
	     <input type="submit" value="测试查询所有教务文件"  class="btn btn-primary btn-block btn-large" />
	 </s:form>
	 <s:form action="sourceFiles_findAllSource" method="get" namespace="/"> 
	     <input type="submit" value="测试查询所有公共资料"  class="btn btn-primary btn-block btn-large" />
	 </s:form>
	
</div>
</div>
</body>
</html>
