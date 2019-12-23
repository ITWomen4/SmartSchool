<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<title>公共资料上传</title>
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
								<form action="sourceFiles_searchSource" method="post">
									<input type="text" name="fileName" placeholder="查找."
										required maxLength="20" class="ft" /> 
									<input type="submit" value="" class="fs">
								</form>
							</div>
							<nav id="nav">
								<ul class="sf-menu">
									<li><a href="sourceFiles_findAllSource.action">公共资料</a></li>
									<li class="current"><a href="sourceFiles_goUploadSource.action">上传资料</a></li>
									<li><a href="${pageContext.request.contextPath }/index.jsp">返回主页</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>

				<!-- Content -->
				<section id="content">
					<div class="upload">
						<h3>上传公共资料</h3>
						<form action="sourceFiles_uploadSource" method='post' enctype="multipart/form-data">
							<label style="font-size:16px;">标题：</label>
							<input type="text" name="title"  style="BACKGROUND-COLOR: #E8F2DF; width: 375px; height: 25px" required maxLength="100"/> 
							<br> <br>
							<label style="font-size:16px;">请选择文件：</label>
						    <input type="file" name="pic" style="BACKGROUND-COLOR: #E8F2DF; width: 330px;" required /> 
							<br> <br>
							<!-- <s:submit value="上传" class="uploadBtn"/> -->
							<input type="submit" value="上传" class="uploadBtn">
							<br> <br>
						</form>
					</div>
					<!-- /Main Content -->
				</section>
			</div>
		</div>
	</div>
</body>
</html>