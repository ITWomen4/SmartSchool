<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<%
String path = request.getContextPath();
%>
<html>
<head>
<meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/ico/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/assets/img/ico/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/assets/img/ico/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/assets/img/ico/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/assets/img/ico/apple-touch-icon-57x57.png">

<title>发布图书</title>


    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/animate.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/assets/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/assets/css/pe-icons.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
           'use strict';
        jQuery('#headerwrap').backstretch([
          "assets/img/bg/bg1.jpg",
          "assets/img/bg/bg2.jpg",
          "assets/img/bg/bg3.jpg"
        ], {duration: 8000, fade: 500});

        
    });
    </script>
    
</head>
<body id="page-top" class="index">

	 <div class="navbar-header page-scroll" >
				<a href="${pageContext.request.contextPath}/index.jsp"><img src ="${pageContext.request.contextPath}/images/logo.png" /></a>								
      </div>
	<section id="contact">
        <div class="section-inner" >
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center wow fadeInDown">
                        <h2 class="section-heading"><strong>发布</strong> 图书</h2>
                        <h3 class="section-subheading text-muted">提示：填写书籍相关信息</h3>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-6 col-md-offset-4" >
                        <form method="post" action="<%=path%>/pubook" enctype="multipart/form-data">
	                        <div class="input-group input-group-lg">
							  <span class="input-group-addon" id="sizing-addon1">书名：</span>
							  <input type="text" class="form-control" placeholder="书名·必填" name="book.bkName" id="bkName" required data-validation-required-message="请填写书名" >
							</div><br>
							<div class="input-group input-group-lg">
						 	 <span class="input-group-addon" id="sizing-addon1">价格：</span>
						 	 <input type="text" class="form-control" placeholder="价格·必填" name="book.price" id="price" required data-validation-required-message="请填写图书的价格">
							</div><br>
							<div class="input-group input-group-lg">
						 	 <span class="input-group-addon" id="sizing-addon1">联系方式：</span>
						 	 <input type="text" class="form-control" placeholder="联系方式·必填" name="book.contact" id="contact" required data-validation-required-message="请填写联系方式">
							</div><br>
							<div class="input-group input-group-lg">
						 	 <span class="input-group-addon" id="sizing-addon1">描述：</span>
						 	 <textarea class="form-control" name="book.content" id="content" placeholder="描述" ></textarea>
							</div><br>
							<div class="forsm-group input-group-lg">
							    <span class="input-group-addon" id="sizing-addon1">上传图片：</span>
							    <input type="file" class="form-control" name="bkpic" id="bkpic" onchange="uploadImg()">
							  </div>
							   <div id="showdiv">
 						    		<img id="showpic" style="width: 300px;height: 300px">           
                 			  </div>	                        
                            <button id="pubk_btn"  class="btn btn-outlined btn-primary pull-right col-md-2 " type="submit">发布</button>
                        </form>
                    </div>
                  
                </div>
            </div>
        </div>
    </section>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	
	//只能上传图片
	function uploadImg() {
	    var _name, _fileName, bkpic, showdiv;
	    bkpic = document.getElementById("bkpic");
	    _name = bkpic.value;
	    _fileName = _name.substring(_name.lastIndexOf(".") + 1).toLowerCase();
	    if (_fileName !== "png" && _fileName !== "jpg") {
	        alert("上传图片格式不正确，请重新上传");
	        document.getElementById("showpic").src ="";
	        bkpic.outerHTML=bkpic.outerHTML; 
	    }else{
	    	
	        document.getElementById("showpic").src = window.URL.createObjectURL(bkpic.files[0]);
	    }
	}
</script>

</body>
</html>