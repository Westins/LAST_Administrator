<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
		<![endif]-->
		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript"></script>
<title>登陆</title>
</head>

<body class="login-layout">
<div class="logintop">    
    <span>欢迎后台管理界面平台</span>    
    <ul>
    <li><a href="#">返回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    <div class="loginbody">
<div class="login-container">
	<div class="center">
	<h1>
									<i class="icon-leaf green"></i>
									<span class="orange">思美软件</span>
									<span class="white">后台管理系统</span>
								</h1>
								<h4 class="white">Background Management System</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box widget-box no-border visible">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												管理员登陆
											</h4>

											<div class="login_icon"><img src="${pageContext.request.contextPath}/images/login.png" /></div>

											<form class="" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="登录名" id="username" name="登录名">
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" id="userpwd" name="密码">
															<i class="icon-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" id="checkboxBM" value="1">
															<span class="lbl">保存密码</span>
														</label>

														<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="login_btn">
															<i class="icon-key"></i>
															登陆
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110">通知</span>
											</div>

											<div class="social-login center">
											本网站系统不再对IE8以下浏览器支持，请见谅。
											</div>
										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											

											
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->
							</div><!-- /position-relative -->
						</div>
                        </div>
                        <div class="loginbm">版权所有  2016  <a href="">南京思美软件系统有限公司</a> </div><strong></strong>

<script>

	$('#login_btn').on('click', function(){
		var num=0;
		var str="";
		$("input[type$='text']").each(function(n){
			if($(this).val()=="")
			{

				layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
					title: '提示框',
					icon:0,
				});
				num++;
				return false;
			}
		});
		$("input[type$='password']").each(function(n){
			if($(this).val()=="")
			{

				layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
					title: '提示框',
					icon:0,
				});
				num++;
				return false;
			}
		});
		if(num>0){  return false;}
		else{
			loginInfo();

			layer.close(index);
		}

	});

	$(function () {
		//cookie数据保存格式是key=value;key=value;形式，loginInfo为保存在cookie中的key值，具体看controller代码
		var str = getCookie("loginInfo");
		var username = str.split("%23")[0];
		var password = str.split("%23")[1];
		//自动填充用户名和密码
		$("#username").val(username);
		$("#userpwd").val(password);
	});

	//获取cookie
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for(var i=0; i<ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1);
			if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
		}
		return "";
	}

    function loginInfo() {

		var check=$("#checkboxBM").is(':checked');
		//alert(check);
		var flagCheck='';
		if (check==true){
			flagCheck=1;
		} else {
			flagCheck=0;
		}
        $.post("${pageContext.request.contextPath}/loginInfo.do", {
            "lName": $("#username").val(),
            "lPwd": $("#userpwd").val(),
			"flagCheck":flagCheck,
        }, function (data) {

            if (data == 1) {
                layer.alert('登陆成功！', {
                    title: '提示框',
                    icon: 1,
                });
                //所有正确跳转到主页面
                setTimeout(function () {

                    //layer.close(index);
                    location.href = "${pageContext.request.contextPath}/index.do";

                }, 500);

            } else if (data == 2) {
                layer.alert('账号或密码错误！', {
                    title: '提示框',
                    icon: 0,
                });
				reloadCode();
                // $("#Codes_text").val("");
            } else if (data == 3) {
				layer.alert('查无此人！', {
					title: '提示框',
					icon: 0,
				});
				reloadCode();
				// $("#Codes_text").val("");
			}

        });
    }

</script>
</body>
</html>
