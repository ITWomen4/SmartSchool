<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>教务通知文件</title>
</head>
<body>
	<div class="authorbox">
		<h2>上传文件:</h2>
		<s:form action="files_upload" method='post'
			enctype="multipart/form-data">
			<s:textfield name="title" label="文件标题" />
			<br />
			<s:file name="pic" label="选择文件" />
			<br />
			<s:submit value="上传" />
		</s:form>
	</div>
</body>
</html>