<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

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
<title>发布后勤通知</title>
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
								<a href="${pageContext.request.contextPath }/index.jsp"><img src="${pageContext.request.contextPath }/images/logo.png" alt="MyPassion" class="logoImg2"/></a>
							</div>
						</div>
						<div class="column">
							<div class="search">
								<form action="lgNotice_search" method="post">
									<input type="text" name="noticeName" placeholder="请输入通知标题"
										required maxLength="20" class="ft" /> 
									<input type="submit" value="" class="fs">
								</form>
							</div>
							<nav id="nav">
								<ul class="sf-menu">
									<li><a href="lgNotice_findAll.action">后勤通知</a></li>
									<li class="current"><a href="lgNotice_goAddLgNotice.action">发布后勤通知</a></li>
									<li><a href="${pageContext.request.contextPath }/index.jsp">返回主页</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>

				<!-- Content -->
				<section id="content">
					<div class="upload">
						<h3>发布后勤通知</h3>
						<form action="lgNotice_save" method='post'>
							<label style="font-size:16px;">通知标题：</label>
							<input type="text" name="noticeName"  style="BACKGROUND-COLOR: #E8F2DF; width: 344px; height: 25px" required maxLength="100"/> 
							<br> <br>
							<label style="font-size:16px;">具体内容：</label>
						    <!--<input type="textfield" name="content" style="BACKGROUND-COLOR: #E8F2DF; width: 330px;" required /> -->
							<textarea name="content" cols="50" rows="3" style="BACKGROUND-COLOR: #E8F2DF; width: 340px;" required maxLength="255"></textarea>
							<br> <br>
							<!-- <s:submit value="上传" class="uploadBtn"/> -->
							<input type="submit" value="上传" class="uploadBtn" style="margin-right:3px;">
						</form>
					</div>
					<!-- /Main Content -->
				</section>
			</div>
		</div>

</div>
		<s:if test="#session.existUser==null or #session.existUser.role==0">
					<form action="user_outlog" method="get" name="myform"></form>
					<script type="text/javascript">
						document.myform.submit();
					</script>
	</s:if>
</body>
</html>