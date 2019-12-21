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
<title>教务通知文件</title>
</head>
<body>
	<div class="authorbox">
		<h2>文件列表:</h2>
		<a href="files_goUpload.action">上传</a>

		<table cellspacing="0" border="1" width="60%" style="margin-left:20%;"> 
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
			<s:iterator value="list" var="e">
				<tr>
					<td align="center"><s:property value="#e.fileName" /></td>
					<td align="center"><s:property value="#e.fileFormat" /></td>
					<td align="center"><s:property value="#e.uploaderName" /></td>
					<td align="center"><s:date format="yyyy-MM-dd" name="#e.uploadTime" /></td>
					<td align="center">
					    <a href="files_findById.action?fileId=<s:property value="#e.fileId"/>">
					       <img src="${pageContext.request.contextPath }/images/编辑.png" />
					    </a>
					</td>
					<td align="center">
					    <a href="files_delete.action?fileId=<s:property value="#e.fileId"/>">删除</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br/>
		<table border="0" cellspacing="0" cellpadding="0" width="900px">
		<tr>
			<td align="right">
			<span>
			     第<s:property value="currPage" />/<s:property value="totalPage" />页
			</span>
			&nbsp;&nbsp; 
			<span>
			    总记录数：<s:property value="totalCount" />&nbsp;&nbsp;
			    每页显示:<s:property value="pageSize" /></span>&nbsp;&nbsp; 
			<span>
			   <s:if test="currPage != 1">
					<a href="employee_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="employee_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
               </s:if> 
               <s:if test="currPage != totalPage">
					<a href="employee_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    <a href="employee_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]<s:property value="totalPage"/></a>&nbsp;&nbsp;
               </s:if> 
            </span>
            </td>
		</tr>
	</table>
	</div>
</body>
</html>