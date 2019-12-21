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
<title>后勤通知</title>
<link href="${pageContext.request.contextPath }/css/lgNotice.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="lgTable">
	<table border="0" width="100%">
		<tr>
			<td></td>
			<td align="center" style="font-size: 24px; color: #666">后勤通知</td>
		</tr>
		<tr>
			<td align="right">
					<a href="javascript:history.go(-1)">退回 </a>
			</td>
		</tr>
	</table>
	<table border="0" width="100%"  aligin="center">
		<tbody>
			<s:iterator value="%{#session.list}" var="e">
				<tr>
					<td align="center" valign="middle" width="10px" nowrap><span> <img
							src="${pageContext.request.contextPath }/images/321_19.gif"
							align="absmiddle"></span>&nbsp;</td>
					<td valign="middle" align="left"><s:property
							value="#e.noticeName" /></td>
					<td valign="middle" align="center" width="1%" nowrap><s:date
							format="yyyy-MM-dd" name="#e.uploadTime" /></td>
					<td valign="middle" align="center" width="1%" nowrap><a
						href="lgNotice_detail.action?noticeId=<s:property value="#e.noticeId"/>">
							&nbsp;详情
					</a></td>
					<td valign="middle" align="center" width="1%" nowrap><a
						href="lgNotice_delete.action?noticeId=<s:property value="#e.noticeId"/>">
							&nbsp;删除
					</a></td>
				</tr>
				<!-- 横线： -->
				<tr>
					<td colspan="5" height="1"
						style="background-image: url(${pageContext.request.contextPath }/images/321_27.gif)"></td>
				</tr>

			</s:iterator>
		</tbody>
	</table>
</div>
</body>
</html>