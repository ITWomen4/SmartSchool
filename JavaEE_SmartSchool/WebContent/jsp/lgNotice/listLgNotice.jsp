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
<title>Insert title here</title>
</head>
<body>
	<table border="0" width="900px">
		<thead>
			<tr>
				<th>发布者</th>
				<th>通知名</th>
				<th>内容</th>
				<th>发布时间</th>
				<th>编辑</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="e">
<!-- 				<tr>
					<td align="center"><s:property value="#e.uploaderName" /></td>
					<td align="center"><s:property value="#e.noticeName" /></td>
					<td align="center"><s:property value="#e.content" /></td>
					<td align="center"><s:date format="yyyy-MM-dd"
							name="#e.uploadTime" /></td>
					<td align="center"><a
						href="lgNotice_findById.action?noticeId=<s:property value="#e.noticeId"/>">
							<img src="${pageContext.request.contextPath }/images/编辑.png" />
					</a></td>
					<td align="center"><a
						href="lgNotice_delete.action?noticeId=<s:property value="#e.noticeId"/>">
							<img src="${pageContext.request.contextPath }/images/trash.gif" />
					</a></td>
				</tr>
 -->
				<tr>
					<td align="center" valign="middle" width="10px" nowrap>
						<span class="part3_5"> <img src="${pageContext.request.contextPath }/images/321_19.gif" align="absmiddle"></span>
					</td>
					<td valign="middle" align="left"><s:property	value="#e.noticeName"/></td>
					<td valign="middle" align="right" class="part3_7" width="1%" nowrap><s:date format="yyyy-MM-dd" name="#e.uploadTime" /></td>
				</tr>
				<tr>
					<td colspan="4" height="1"
						style="background-image: url(${pageContext.request.contextPath }/images/321_27.gif)"></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>

</body>
</html>