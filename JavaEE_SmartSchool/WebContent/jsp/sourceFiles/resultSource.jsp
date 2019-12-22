<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>公共资料</title>
</head>
<body>
	<div style="width:60%;margin-left:20%;">
		<table border="0" width="100%">
			<tr>
				<td></td>
				<td align="center" style="font-size: 24px; color: #666">公共资料查询结果</td>
			</tr>
			<tr>
				<td align="right">
						<a href="javascript:history.go(-1)">退回 </a>
				</td>
			</tr>
		</table>

		<table cellspacing="0" border="1"  aligin="center" width="100%"> 
		<thead>
			<tr>
				<th>标题</th>
				<th>文件格式</th>
				<th>发布者</th>
				<th>发布时间</th>
				<th>下载</th>
				<th>删除</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="%{#session.list}" var="e">
				<tr>
					<td align="center"><s:property value="#e.fileName" /></td>
					<td align="center"><s:property value="#e.fileFormat" /></td>
					<td align="center"><s:property value="#e.uploaderName" /></td>
					<td align="center"><s:date format="yyyy-MM-dd" name="#e.uploadTime" /></td>
					<td align="center">
					    <a href="sourceFiles_findById.action?fileId=<s:property value="#e.fileId"/>">
					       <img src="${pageContext.request.contextPath }/images/download.png" />
					    </a>
					</td>
					<td align="center">
					    <a href="sourceFiles_delete.action?fileId=<s:property value="#e.fileId"/>">
					    	<img src="${pageContext.request.contextPath }/images/delete.png" />
					    </a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	</div>
</body>
</html>