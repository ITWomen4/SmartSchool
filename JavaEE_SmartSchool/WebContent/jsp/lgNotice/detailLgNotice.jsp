<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>通知详情</title>
</head>
<body>
	<table border="0" width="600px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">通知详情</td>
		</tr>
		<tr>

			<td align="right">
				<a href="javascript:history.go(-1)">返回 </a>
		    </td>
		</tr>
	</table>
	<div width="40%" style="margin-left:30%;">
		<p><s:property value="%{model.noticeName}"/></p>
		<p>具体内容：<s:property value="%{model.content}"/></p>
		<p>发布者：<s:property value="%{model.uploaderName}"/></p>
		<p>发布时间：<s:date format="yyyy-MM-dd" name="%{model.uploadTime}" /></p>
	</div>
</body>
</html>