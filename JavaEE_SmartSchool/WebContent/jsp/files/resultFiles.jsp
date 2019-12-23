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
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/smart.png" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/960.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css" />
<title>教务通知文件查询结果</title>
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
								<a href="#"><img src="${pageContext.request.contextPath }/images/logoSmart.png" alt="MyPassion" class="logoImg"/></a>
							</div>

							<div class="search">
								<form action="files_search" method="post">
									<!--  <input type="text" name="fileName" placeholder="查找."
										required maxLength="20" class="ft" /> 
									<input type="submit" value="" class="fs">
									-->
								</form>
							</div>
							<nav id="nav">
								<ul class="sf-menu">
									<li class="current"><a href="files_findAll.action">教务通知文件</a></li>
									<li><a href="files_goUpload.action">上传文件</a></li>
									<li><a href="#">返回主页</a></li>
									<li><a href="files_findAll.action">返回列表</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>

				<!-- Content -->
				<section id="content">
					<div class="container">
						<!-- 如果查询结果不为空则显示列表 -->
						<s:if test="#session.list.isEmpty()==false">
							<div class="breadcrumbs column"></div>
							<div class="column">
								<table>
									<tr class="thStyle">
										<th>标题</th>
										<th>文件格式</th>
										<th>发布者</th>
										<th>发布时间</th>
										<th>下载</th>
										<th>删除</th>
									</tr>
									<s:iterator value="%{#session.list}" var="e">
										<tr>
											<td align="center"><s:property value="#e.fileName" /></td>
											<td align="center"><s:property value="#e.fileFormat" /></td>
											<td align="center"><s:property value="#e.uploaderName" /></td>
											<td align="center"><s:date format="yyyy-MM-dd"
													name="#e.uploadTime" /></td>
											<td align="center"><a
												href="files_findById.action?fileId=<s:property value="#e.fileId"/>">
													<img
													src="${pageContext.request.contextPath }/images/download.png" />
											</a></td>
											<td align="center"><a
												href="files_delete.action?fileId=<s:property value="#e.fileId"/>">
													<img
													src="${pageContext.request.contextPath }/images/delete.png" />
											</a></td>
										</tr>
									</s:iterator>
								</table>
							</div>
						</s:if>
					</div>
					<!-- 如果查询结果为空则显示提示信息 -->
					<s:if test="#session.list.isEmpty()==true">
						<div class="notFound">
							<span>暂无数据</span>
						</div>
					</s:if>
				</section>
			</div>
		</div>
	</div>
</body>
</html>