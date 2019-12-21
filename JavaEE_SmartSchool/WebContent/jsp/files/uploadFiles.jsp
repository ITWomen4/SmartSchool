<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>教务通知文件</title>
</head>
<body>
	<div class="authorbox">
		<h2>上传文件:</h2>
		<form action="files_upload" method="post" enctype="multipart/form-data">
			文件名称:<input name="fileName"
				style="BACKGROUND-COLOR: #E8F2DF; width: 350px; height: 25px"
				required> <br> <br> <br> 
				 文件路径: <input type="file" name="file"
				style="BACKGROUND-COLOR: #E8F2DF; width: 350px;" required /><br>
			<br>
			 <br>
			 <input type="hidden" value="1" name="status" /> <input
				type="submit" value="发布文件" />
		</form>
	</div>
</body>
</html>