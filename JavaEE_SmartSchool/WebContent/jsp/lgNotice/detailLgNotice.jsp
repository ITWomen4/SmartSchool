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
<title>后勤通知详情</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/960.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/lgNotice.css" />
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
									<li class="current"><a href="lgNotice_findAll.action">后勤通知</a></li>
									<li><a href="lgNotice_goAddLgNotice.action">发布后勤通知</a></li>
									<li><a href="#">返回主页</a></li>
									<li><a href="lgNotice_findAll.action">返回列表</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>

				<!-- Content -->
				<section id="content">
					<div class="container">
							<div class="lgTable">
								<div width="60%">
									<center><h3>《<s:property value="%{model.noticeName}"/>》</h3></center>
									<span class="lgBold">具体内容：</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span><s:property value="%{model.content}"/></span><br><br><br><br>
									
									<span style="float:right;" class="lgBold">发布者：<s:property value="%{model.uploaderName}"/></span><br><br>
									<span style="float:right;" class="lgBold">发布时间：<s:date format="yyyy-MM-dd" name="%{model.uploadTime}" /></span><br><br>
								</div>
						</div>
					</div>
			</section>
		</div>
	</div>
</div>
</body>
</html>