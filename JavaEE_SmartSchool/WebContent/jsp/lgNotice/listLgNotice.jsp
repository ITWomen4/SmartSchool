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
			<td align="left">
			      <a href="lgNotice_goAddLgNotice.action">添加</a>
			</td>
			<td align="right">
				<form action="lgNotice_search" method="post">
					<input type="text" name="noticeName"placeholder="请输入通知标题" required maxLength="20">
					<input type="submit" class="button"value="查询"> 
				</form>
			</td>
		</tr>
	</table>
	<table border="0" width="100%"  aligin="center">
		<tbody>
			<s:iterator value="list" var="e">
 
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
						href="lgNotice_goEdit.action?noticeId=<s:property value="#e.noticeId"/>">
							&nbsp;修改
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
		<br/>
	<table border="0" cellspacing="0" cellpadding="0" width="100%"  aligin="center">
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
					<a href="lgNotice_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="lgNotice_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
               </s:if> 
               <s:if test="currPage != totalPage">
					<a href="lgNotice_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    <a href="lgNotice_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]<s:property value="totalPage"/></a>&nbsp;&nbsp;
               </s:if> 
            </span>
            </td>
		</tr>
	</table>
</div>
</body>
</html>