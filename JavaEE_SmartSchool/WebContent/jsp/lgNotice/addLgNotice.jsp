<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<% %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>发布通知</title>
</head>
<body>
	<table border="0" width="600px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">发布通知</td>
		</tr>
		<tr>
			<td align="right">
			    <a href="javascript:document.getElementById('saveForm').submit()">发布</a>
				&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)">退回 </a>
		   </td>
		</tr>
	</table>
	<br/>
	<br/>
	<s:form id="saveForm" action="lgNotice_save" method="post" namespace="/" theme="simple">
		<table style="font-size:16px">
			<tr>
				<td align="right">通知标题：</td>
				<td><s:textfield name="noticeName" /></td>
			</tr>
			<tr>
				<td align="right">内容：</td>
				<td><s:textfield name="content" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>