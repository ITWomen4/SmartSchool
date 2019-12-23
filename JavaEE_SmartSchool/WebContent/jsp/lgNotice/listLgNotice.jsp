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
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/smart.png" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/960.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/lgNotice.css" />
<title>后勤通知</title>
</head>
<body>
<div class="body-wrapper">
		<div class="controller">
			<div class="controller2">
				<!-- Header -->
				<header id="header">
					<div class="container">
						<div class="column">
							<div >
								<a href="${pageContext.request.contextPath }/index.jsp"><img src="${pageContext.request.contextPath }/images/logoSmart.png" alt="MyPassion" class="logoImg"/></a>
							</div>

							<div class="search">
								<form action="lgNotice_search" method="post">
									<input type="text" name="noticeName" placeholder="请输入通知标题"
										required maxLength="20" class="ft" /> 
									<input type="submit" value="" class="fs">
								</form>
							</div>
							<nav id="nav">
								<ul class="sf-menu">
									<li class="current"><a href="lgNotice_findAll.action">后勤通知</a></li>
									<li><a href="lgNotice_goAddLgNotice.action">发布后勤通知</a></li>
									<li><a href="${pageContext.request.contextPath }/index.jsp">返回主页</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>

				<!-- Content -->
				<section id="content">
					<div class="container">
						<div class="lgTable">
							<table border="0" width="100%"  aligin="center">
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
										<td colspan="6" height="1"
											style="background-image: url(${pageContext.request.contextPath }/images/321_27.gif)"></td>
									</tr>
							</s:iterator>
							</table>
							<div class="pageBottom">
									<span> 第<s:property value="currPage" />/<s:property value="totalPage" />页</span> &nbsp;&nbsp; 
									<span> 总记录数：<s:property value="totalCount" />&nbsp;&nbsp;每页显示:<s:property value="pageSize" /></span>&nbsp;&nbsp; 
									<span>
											<s:if test="currPage != 1">
												<a href="lgNotice_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                   								<a href="lgNotice_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
              								</s:if>
                							<s:if test="currPage != totalPage">
												<a href="lgNotice_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    							<a href="lgNotice_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]&nbsp;&nbsp;<s:property value="totalPage" /></a>
               								</s:if>
									</span>
									<br><br>
							</div>
						</div>

					</div>
					<!-- /Main Content -->
				</section>
			</div>
		</div>
	</div>
</body>
</html>