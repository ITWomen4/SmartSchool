<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=en>
<head>
<meta charset=UTF-8>
<title>人事考勤</title>
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css" media="screen" />
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet" type="text/css">
</head>

<body>
	<div id="page">
		<header> <img
			src="${pageContext.request.contextPath }/images/logo.png" width="303"
			height="82" alt="logo" /> <br />
		<img
			src="${pageContext.request.contextPath }/images/bg_banner_grey.gif"
			width="980" height="5" alt="logo_banner" /> </header>

		<div id="content">
			<div id="left">
				<table border="0" width="900px">
					<tr>
						<td align="center" style="font-size: 24px; color: #666">欢迎您：<s:property
								value="#session.existUser.username" /></td>
					</tr>
					<tr>
						<td align="right"><img alt=""
							src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573983990130&di=dbbaaa1c5b8355ba9a5bca99b245ffaf&imgtype=0&src=http%3A%2F%2Fwww.kokojia.com%2FPublic%2Fimages%2Fupload%2Farticle%2F2017-03%2F58b94964a064f.jpg">
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div style="clear: both;">&nbsp;</div>
		<img src="${pageContext.request.contextPath }/images/bg_banner_grey.gif" width="980" height="5" alt="logo_banner" />
	</div>
</body>
</html>
