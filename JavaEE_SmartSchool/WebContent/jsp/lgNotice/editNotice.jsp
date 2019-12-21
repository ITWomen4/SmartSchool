<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<table border="0" width="600px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">后勤通知信息修改</td>
		</tr>
		<tr>
			<td align="right">
			    <a href="javascript:document.getElementById('saveForm').submit()">保存</a>
				&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)">退回 </a>
		    </td>
		</tr>
	</table>
	<br/>
	<br/>
	<!-- action对应一个action标签，id对应提交时的对应关系 -->
	<s:form id="saveForm" action="lgNotice_edit" method="post" namespace="/" theme="simple">
		<s:hidden name="noticeId" value="%{model.noticeId}"></s:hidden>
		<s:hidden name="uploaderName" value="%{model.uploaderName}"></s:hidden>
		<s:hidden name="uploadTime" value="%{model.uploadTime}"></s:hidden>
		<table style="font-size: :16px">
			<tr>
				<td align="right">标题：</td>
				<td><s:textfield value="%{model.noticeName}" name="noticeName" /></td>
			</tr>
			<tr>
				<td align="right">具体内容：</td>
				<td><s:textfield value="%{model.content}" name="content" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html> 