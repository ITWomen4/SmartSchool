<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
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

<title>个人图书</title>


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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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

    <div class="preloader">
        <div class="preloader-img">
        	<img src="${pageContext.request.contextPath}/assets/img/loading-bars.svg" width="100" alt="Loading icon" />
        </div>
    </div>
 <div class="navbar-header page-scroll" >
				<a href="${pageContext.request.contextPath}/index.jsp"><img src ="${pageContext.request.contextPath}/images/logo.png" /></a>								
            </div>
	<section>
        <div class="section-inner">
            <div class="container">
           
            
                <div class="row">
                    <div class="col-lg-12 text-center wow fadeInDown">
                        <h2 class="section-heading">个人已发布的<strong>书籍</strong></h2>
                        <h3 class="section-subheading text-muted">提示： 将已售书籍注销 </h3>
                    </div>
                </div>
                <div class="row">
                
                    <ul class="direction-aware">
                    
                  	  <s:iterator id="mybk" value="#request.mybkList">
                  	  
	                        <li class="col-md-4 portfolio-item da-item wow fadeInUp" data-mh="blog-posts">
	                                 <s:if test="#mybk.pic==null || #mybk.pic==''">
									    <img style="width:500px;height:500px;" src="${pageContext.request.contextPath}/images/bookimg/defaultbk.jpg" class="img-responsive" alt="">
									</s:if>
									<s:else>
									    <img style="width:500px;height:500px;" src="${pageContext.request.contextPath}/images/bookimg/<s:property value='#mybk.pic'/>" class="img-responsive" alt="">
									</s:else>
									<div>
	                                    <div class="portfolio-hover-content">
	                                        <i class="pe-7s-close fa-3x"></i>
	                                    </div>
	                                </div>                                
	                            <div class="item-caption">
	                            	<input id="<s:property value='#mybk.isbn'/>" type="hidden" value="<s:property value='#mybk.isbn'/>">
	                                <h4>书名:  <s:property value="#mybk.bkName"/></h4>
	                                <ul class="list-inline post-meta-list">
	                                	<li class="col-md-5"><p class="text-muted"><i class="pe-7s-folder"></i> 价格:  <s:property value="#mybk.price"/></p></li>
	                                	<li class="col-md-8"><p class="text-muted"><i class="pe-7s-user"></i> 联系方式:  <s:property value="#mybk.contact"/> </p></li>
	                                </ul> 
	                                <p class="post-excerpt">描述：<s:property value="#mybk.content"/> </p>
	                           		<button id="delbtn" onclick="comf(<s:property value='#mybk.isbn'/>)" class="btn btn-primary mt20 pull-right removebk_btn" >注销书单</button>
	                            </div>
	                        </li>
                        
                        </s:iterator>
                    </ul>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>

    <!-- Plugins -->
    <script src="${pageContext.request.contextPath}/assets/js/jqBootstrapValidation.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/contact_me.js"></script>

    <!-- Custom JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/js/init.js"></script>
    
    <script type="text/javascript">
    function comf(isbn){        
    	if(confirm("确认删除吗?")) {            
    		location.href = "${pageContext.request.contextPath}/delbook?currentBookId="+isbn;
    		}    
    	}

    </script>
  
</body>
</html>