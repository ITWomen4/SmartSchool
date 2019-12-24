<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/img/ico/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/ico/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/img/ico/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/img/ico/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" href="assets/img/ico/apple-touch-icon-57x57.png">

    <title>智慧校园--生活服务 </title>
    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/pe-icons.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="assets/js/jquery.js"></script>

	<!-- 引入JQuery -->
	<script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script>
	<!-- 引入样式 -->
	<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    

    <script type="text/javascript">
        $(document).ready(function(){
           'use strict';
        jQuery('#headerwrap').backstretch([
          "assets/img/bg/bg1.jpg",
          "assets/img/bg/bg2.jpg",
          "assets/img/bg/bg3.jpg"
        ], {duration: 8000, fade: 500});

        islog();
        
        $(function(){
    		//监听li的移入
    		$(".dropdown").mouseenter(function(){
    			$(this).addClass("current");
    		});
    		//监听li的移出
    		$(".dropdown").mouseleave(function(){
    			$(this).removeClass("current");
    		});
    		
    	});
    });
        
        function islog(){
    	    $.ajax({     
    	    	url: "${pageContext.request.contextPath }/islogin",
    	    	type:"POST",
    	    	success: function (data){  
    	    		if(data=="yes"){
    	    			
    	    			changeli();
    				}
    	    	} 
    	    });
        }
    </script>
	<style type="text/css">
		.dropdown-menu{
			overflow:hidden;
			margin-top:5px;
			display:none;
		}
		
		.current .dropdown-menu{
			display:block;
		}
		
		.lk{
			color: #fff;
		}
	</style>
	
</head>

<body id="page-top" class="index">

<!-- Modal 员工添加模态框 -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="width:450px; height:400px" align="center">
    <div class="modal-content" align="center">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body" align="center">
        	<form class="form-horizontal" >
        	
			  <div class="form-group" align="center">
			    <label class="col-sm-2 control-label"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></label>
			    <div class="col-sm-7">
			      <input type="text"  name="userid" class="form-control" id="userid" placeholder="请输入网存账号/学号">
			      <span class="help-block"></span>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"><span class="glyphicon glyphicon-th" aria-hidden="true"></span></label>
			    <div class="col-sm-7">
			      <input type="password" name="password" class="form-control" id="password" placeholder="请输入登录密码">
			      <span class="help-block"></span>
			    </div>
			  </div>
				      <!-- 错误提示 -->
      <div id="wrongtip">
      	<span id="wrongspan" style="color: red"></span>
      </div>
      <div align="center">
        <button id="islogin" type="button" class="btn btn-primary btn-lg" style="width: 150px">登录</button>
      </div>		  
			</form>
      </div>
    </div>
  </div>
</div>



    <div class="preloader">
        <div class="preloader-img">
        	<img src="assets/img/loading-bars.svg" width="100" alt="Loading icon" />
        </div>
    </div>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-shrink bounceInDown" data-wow-delay="2s" >
        <div class="container" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll" style="margin-top: 0px">
				<a href="index.jsp"><img src ="images/logo.png" /></a>								
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
            <div style="font-size: large;">
				 <ul class="nav nav-tabs">     
			        <li><a href="index.jsp">首页</a></li>
			        <li><a href="#">社团中心</a></li>
			        <li><a href="#">学生权益</a></li>
					<li class="dropdown">
			            <a href="#" data-toggle="dropdown">二手书籍</a>
			                <ul class="dropdown-menu">
			                    <li><a href="${pageContext.request.contextPath}/showbooks"><font color="black">所有书籍</font></a></li>
			                    <li><a href="${pageContext.request.contextPath}/mybook"><font color="black">个人已发布书籍</font></a></li>
			                    <li><a href="${pageContext.request.contextPath}/prepubook"><font color="black">发布书籍</font></a></li>
			                </ul>
      				</li>
      				<li class="dropdown">
			            <a href="#" data-toggle="dropdown">公共资源</a>
			                <ul class="dropdown-menu">
			                    <li><a href="lgNotice_findAll.action"><font color="black">后勤通知</font></a></li>
			                    <li><a href="files_findAll.action"><font color="black">教务通知</font></a></li>
			                    <li><a href="sourceFiles_findAllSource.action"><font color="black">公共资料</font></a></li>
			                </ul>
      				</li>
        			
        			<li class="nav navbar-nav navbar-right" >
        				
        				<div id="changeli"><a href="#" id="loginBtn" >登录</a></div>
        			</li>		
        				
   		 		</ul>
   		 		<input type="hidden" id="username" value="${sessionScope.username }">
           </div>
          </div>
    </nav>


    <!-- Header -->
    <header id="headerwrap" class="fullheight">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in wow bounceInDown" data-wow-delay="0.5s"><span class="wodry"></span></div>
                <div class="intro-heading wow bounceInUp" data-wow-delay="1s"> <span class="thin"></span></div>
            </div>
        </div>
    </header>


    <section id="footer-widgets" class="divider-wrapper">
        <div class="section-inner" >
            <div class="container" >
                <div class="row wow fadeInUp">
                    <div class="copyright" align="center">
						<h4 align="center"><strong>友情链接</strong></h4>
						<div >
						<a class="lk" href="http://jwc.cuit.edu.cn/" target="_blank" >教务处</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://jxpt.cuit.edu.cn/meol/index.do" target="_blank">教学平台</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="https://www.cuit.edu.cn/wlcc.htm" target="_blank">网络存储</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://xsc.cuit.edu.cn/Sys/WebSite/Web/Default.html" target="_blank">学生工作处</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://xxzx.cuit.edu.cn/" target="_blank">信息中心</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://xsc.cuit.edu.cn/Sys/WebSite/Nsloans/default.html" target="_blank">助学中心</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://wlzf.cuit.edu.cn/login.aspx" target="_blank">学生缴费平台</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="https://www.cuit.edu.cn/ShowHtml?url=xyfg#" target="_blank">学校概况</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://hqc.cuit.edu.cn/nomenulist.jsp?urltype=tree.TreeTempUrl&wbtreeid=1969" target="_blank">后勤服务</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="https://www.cuit.edu.cn/cuitname.htm" target="_blank">成信青年</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="http://xzxx.cuit.edu.cn/Msg/MsgIndex.htm" target="_blank">书记校长信箱</a>
						<span> &nbsp;| &nbsp;</span><a class="lk" href="https://www.cuit.edu.cn/NewsIndex1" target="_blank">成信新闻</a>
						</div>
		               
			</div> 
                    </div><!--/.col-md-3-->

                    
            </div>
        </div>
    </section>

    <footer class="divider-wrapper-dark">
        <div class="container" align="center">
            <div class="copyright" >
							<p>航空港校区 | 四川省成都市西南航空港经济开发区学府路一段24号 | 邮编：610225 | 电话：028-85966502 </p>
							<p>龙泉校区 | 成都市龙泉驿区阳光城幸福路10号 | 邮编：610103 | 电话：028-84833333</p>
			</div>
        </div>
    </footer>

    <!-- Bootstrap Core JavaScript -->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="assets/js/plugins.js"></script>

    <!-- Plugins -->
    <script src="assets/js/jqBootstrapValidation.js"></script>
    <script src="assets/js/contact_me.js"></script>

    <!-- Custom JavaScript -->
    <script src="assets/js/init.js"></script>
	<script type="text/javascript">
			
	$(function() {
        $("#loginBtn").click(function() {
        	$("#userid").val("");
        	$("#password").val("");
        	$("#wrongspan").html("");
            $("#loginModal").modal({
				
				//
				backdrop:'static'
			});
            return false;
        });
       
    })
    
    
	function changeli(){
		
		$("#changeli").empty();
		
		var username = $("#username").val();
		var img = $("<img src ='images/user.jpg'/>");
		var sp = $("<span></span>").append(username).append("  ");
		var btn = $("<a></a>").addClass("btn btn-default mt20").append("退 出").attr("href","${pageContext.request.contextPath }/exit");

		$("#changeli").append(img)
					  .append(sp)
					  .append(btn);
		
	}
	
		 function checklogin(){
				$.ajax({
					url:"${pageContext.request.contextPath }/checklogin",
					type:"POST",
					data:$("#loginModal form").serialize(),
					success:function(result){
						
						if(result=="fail"){
							
							$("#wrongspan").html("账号或密码不正确");
						}else{
							
							$("#loginModal").modal("hide");
							alert("登陆成功");
							changeli();
							window.location.reload();
						}
					}
				});
		 }
	
		$("#islogin").click(function(){
			$("#wrongspan").html("");
			var id = $("#userid").val();
			var pswd = $("#password").val();
			var reg = /^\d+$|^\d+[.]?\d+$/;
			if(id=="" || pswd==""){
				$("#wrongspan").html("账号或密码不能为空！");
			}else if(!reg.test(id)){
				$("#wrongspan").html("账号不符合");
			}else{
				checklogin();
			}
			
		});
		 
		 
	</script>
</body>

</html>
