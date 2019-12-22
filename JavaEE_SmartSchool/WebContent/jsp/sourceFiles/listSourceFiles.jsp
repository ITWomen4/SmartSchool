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
	<div style="width:60%;margin-left:20%;">
		<table border="0" width="100%">
			<tr>
				<td></td>
				<td align="center" style="font-size: 24px; color: #666">公共资料列表</td>
			</tr>
			<tr>
				<td align="left">
					<a href="sourceFiles_goUploadSource.action">上传</a>
				</td>
				<td align="right">
					<form action="sourceFiles_searchSource" method="post">
						<input type="text" name="fileName"placeholder="请输入通知标题" required maxLength="20">
						<input type="submit" class="button"value="查询"> 
					</form>
				</td>
			</tr>
		</table>
		<table cellspacing="0" border="1" width="100%" > 
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
					    <a href="sourceFiles_findById.action?fileId=<s:property value="#e.fileId"/>">
					       <img src="${pageContext.request.contextPath }/images/download.png" />
					    </a>
					</td>
					<td align="center">
					    <a href="sourceFiles_deleteSource.action?fileId=<s:property value="#e.fileId"/>">
					    	<img src="${pageContext.request.contextPath }/images/delete.png" />
					    </a>
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
					<a href="sourceFiles_findAllSource.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="sourceFiles_findAllSource.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
               </s:if> 
               <s:if test="currPage != totalPage">
					<a href="sourceFiles_findAllSource.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    <a href="sourceFiles_findAllSource.action?currPage=<s:property value="totalPage"/>">[尾页]<s:property value="totalPage"/></a>&nbsp;&nbsp;
               </s:if> 
            </span>
            </td>
		</tr>
	</table>
	</div>
</body>
</html>