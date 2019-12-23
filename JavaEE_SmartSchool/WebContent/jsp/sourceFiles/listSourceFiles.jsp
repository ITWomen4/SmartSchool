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
<title>教务通知文件</title>
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
									<input type="text" name="fileName" placeholder="请输入资料标题"
										required maxLength="20" class="ft" /> 
									<input type="submit" value="" class="fs">
								</form>
							</div>
							<nav id="nav">
								<ul class="sf-menu">
									<li class="current"><a href="sourceFiles_findAllSource.action">公共资料</a></li>
									<li><a href="sourceFiles_goUploadSource.action">上传资料</a></li>
									<li><a href="${pageContext.request.contextPath }/index.jsp">返回主页</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</header>

				<!-- Content -->
				<section id="content">
					<div class="container">
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
								<s:iterator value="list" var="e">
									<tr>
										<td align="center"><s:property value="#e.fileName" /></td>
										<td align="center"><s:property value="#e.fileFormat" /></td>
										<td align="center"><s:property value="#e.uploaderName" /></td>
										<td align="center"><s:date format="yyyy-MM-dd"
												name="#e.uploadTime" /></td>
										<td align="center"><a
											href="sourceFiles_findById.action?fileId=<s:property value="#e.fileId"/>">
												<img
												src="${pageContext.request.contextPath }/images/download.png" />
										</a></td>
										<td align="center"><a
											href="sourceFiles_deleteSource.action?fileId=<s:property value="#e.fileId"/>">
												<img
												src="${pageContext.request.contextPath }/images/delete.png" />
										</a></td>
									</tr>
								</s:iterator>
							</table>
							<div class="pageBottom">
									<span> 第<s:property value="currPage" />/<s:property value="totalPage" />页</span> &nbsp;&nbsp; 
									<span> 总记录数：<s:property value="totalCount" />&nbsp;&nbsp;每页显示:<s:property value="pageSize" /></span>&nbsp;&nbsp; 
									<span>
											<s:if test="currPage != 1">
												<a href="sourceFiles_findAllSource.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                   								<a href="sourceFiles_findAllSource.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
              								</s:if>
                							<s:if test="currPage != totalPage">
												<a href="sourceFiles_findAllSource.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    							<a href="sourceFiles_findAllSource.action?currPage=<s:property value="totalPage"/>">[尾页]<s:property value="totalPage" /></a>&nbsp;&nbsp;
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