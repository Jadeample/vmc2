<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<title>注册页面 - 租车平台</title>
		<link rel="icon" href="favicon.ico" type="image/ico">
		<meta name="keywords" content="租">
		<meta name="description" content="租">
		<meta name="author" content="yinqi">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/materialdesignicons.min.css" rel="stylesheet">
		<link href="css/style.min.css" rel="stylesheet">
		<!--对话框-->
		<link rel="stylesheet" href="js/jconfirm/jquery-confirm.min.css">
		<style>
			.lyear-wrapper {
				position: relative;
			}

			.lyear-login {
				display: flex !important;
				min-height: 100vh;
				align-items: center !important;
				/* justify-content: center !important; */
				margin-left: 70%;
			}

			.lyear-login:after {
				content: '';
				min-height: inherit;
				font-size: 0;
			}

			.login-center {
				background-color: rgba(255, 255, 255, .075);
				min-width: 29.25rem;
				padding: 2.14286em 3.57143em;
				border-radius: 3px;
				margin: 2.85714em;
			}

			.login-header {
				margin-bottom: 1.5rem !important;
			}

			.login-center .has-feedback.feedback-left .form-control {
				padding-left: 38px;
				padding-right: 12px;
				background-color: rgba(255, 255, 255, .075);
				border-color: rgba(255, 255, 255, .075)
			}

			.login-center .has-feedback.feedback-left .form-control-feedback {
				left: 0;
				right: auto;
				width: 38px;
				height: 38px;
				line-height: 38px;
				z-index: 4;
				color: #dcdcdc;
			}

			.login-center .has-feedback.feedback-left.row .form-control-feedback {
				left: 15px;
			}

			.login-center .form-control::-webkit-input-placeholder {
				color: rgba(255, 255, 255, .8);
			}

			.login-center .form-control:-moz-placeholder {
				color: rgba(255, 255, 255, .8);
			}

			.login-center .form-control::-moz-placeholder {
				color: rgba(255, 255, 255, .8);
			}

			.login-center .form-control:-ms-input-placeholder {
				color: rgba(255, 255, 255, .8);
			}

			.login-center .custom-control-label::before {
				background: rgba(0, 0, 0, 0.3);
				border-color: rgba(0, 0, 0, 0.1);
			}

			.login-center .lyear-checkbox span::before {
				border-color: rgba(255, 255, 255, .075)
			}
		</style>
	</head>
	<body>
		<div class="row lyear-wrapper" style="background-image: url(images/login-5.jpg); background-size: cover;">
			<div class="lyear-login">
				<div class="login-center">
					<div class="login-header text-center">
						<p style="font-size:25px;color:#FFFFFF">注册</p>
					</div>
					<div class="form-group">
						<label class="text-white">请选择你的身份</label>
						<label class="text-white"><input type="radio" value="用户" name="1"
								checked="checked">用户</label>
						<label class="text-white"><input type="radio" value="司机" name="1"
								checked="checked">司机</label>
					</div>
					<form action="#!" method="post">
						<div class="form-group has-feedback feedback-left">
							<input type="text" placeholder="请输入您的用户名" class="form-control" name="username" id="username" />
							<span class="mdi mdi-skull form-control-feedback" aria-hidden="true"></span>
						</div>
						<div class="form-group has-feedback feedback-left">
							<input type="password" placeholder="请输入密码" class="form-control" id="password01" name="password" />
							<span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
						</div>
						<div class="form-group has-feedback feedback-left">
							<input type="password" placeholder="请确认密码" class="form-control" id="password02" name="password" />
							<span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
						</div>
						<div class="form-group has-feedback feedback-left">
							<input type="password" placeholder="请输入邮箱" class="form-control" id="email" name="password" />
							<span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
						</div>
						<div class="form-group">
							<label class="text-white">性别</label>
							<label class="text-white"><input type="radio" value="男" name="1"
									checked="checked">男</label>
							<label class="text-white"><input type="radio" value="女" name="1"
									checked="checked">女</label>
						</div>
						<div class="form-group has-feedback feedback-left">
							<input type="password" placeholder="请输入电话号码" class="form-control" id="password" name="password" />
							<span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
						</div>
						<div class="form-group has-feedback feedback-left row">
							<div class="col-xs-7">
								<input type="text" name="captcha" class="form-control" placeholder="验证码" id="captcha01">
								<span class="mdi mdi-check-all form-control-feedback" aria-hidden="true"></span>
							</div>
							<div class="col-xs-5">
								<img src="images/captcha.png" class="pull-right" id="captcha02" style="cursor: pointer;"
									onclick="this.src=this.src+'?d='+Math.random();" title="点击刷新" alt="captcha">
							</div>
						</div>
						<div class="form-group">
							<button class="btn btn-block btn-primary" type="button" onClick="toreal()" conclick="clicks()"
								id="login" >注册</button>
						</div>
					</form>
					<footer class="col-sm-12 text-center text-white">
					</footer>
				</div>
			</div>
		</div>
		<script>
			function toreal(){
				window.location.href="real.html";
			}
		</script>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<!--对话框-->
		<script src="js/jconfirm/jquery-confirm.min.js"></script>
		<script type="text/javascript" src="js/main.min.js"></script>
		<!--消息提示-->
		<script src="js/bootstrap-notify.min.js"></script>
		<script type="text/javascript" src="js/lightyear.js"></script>
		<script type="text/javascript">
			// 变量
			var a = null;
			// 函数(方法)
			/**
			 * @param {Object} su
			 * function 函数名(入参参数){
					函数体（执行逻辑）;
				}
			 */
			function func(su) {
				alert("点击成功");
			}

			// ajax操作
			/**
			 * $.get("请求地址",入参参数(发送到请求地址的参数),function(返回参数){函数体}/*回调函数);//返回基本消息
			 * $.post("请求地址",入参参数(发送到请求地址的参数),function(返回参数){函数体}/*回调函数);//返回基本消息
			 */
			$.get("", a, function() {});
			/**
			 * $.getJSON("请求地址",入参参数(发送到请求地址的参数),function(返回参数){函数体}/*回调函数);//返回JSON对象
			 */
			/**
			 * JSON字符串
			 * {
				 //key:value,
				 "a":null,
				 "a":{
					 "a":null,
					 "a":null,
					 "a":null
				 },
				 "a":null
				}
			 */
			//自定义对象
			// function clicks() {
			// 	/**
			// 	 * jquery对象取组件值
			// 	 * 交互式组件 jquery对象.val(可选参数)  可选参数有值时，赋予组件值
			// 	 * 非交互式组件 jquery对象.html(可选参数)  可选参数有值时，赋予组件值
			// 	 */
			// 	var username = $("#username").val();
			// 	var password = $("#password").val();
			// 	var captcha = $("#captcha").val();
			// 	var param = {
			// 		"userName": username,
			// 		"userPwd": password
			// 	}
			// 	// 自定义对象转换为JSON字符串
			// 	var str = JSON.stringify(param);
			// 	// JSON字符串转换为自定义对象JSON.parse(JSON字符串);

			// 	$.getJSON("http://101.201.64.226:8080/sellPros/users/login", param, function(msg) {
			// 		console.log(param);
			// 		console.log(msg);
			// 		if (msg.code != 1) {
			// 			//弹出框
			// 			$.confirm({
			// 				title: '登录错误',
			// 				content: '用户名或密码错误！',
			// 				type: 'red',
			// 				typeAnimated: true,
			// 				buttons: {
			// 					tryAgain: {
			// 						text: '重新登录',
			// 						btnClass: 'btn-red',
			// 						action: function() {}
			// 					},
			// 					close: {
			// 						text: '关闭'
			// 					}
			// 				}
			// 			});

			// 			//消息提示
			// 			lightyear.notify('用户名或密码错误！', 'danger', 100);
			// 			return;
			// 		}
			// 		/**
			// 		 * 传输用户信息
			// 		 */
			// 		sessionStorage.setItem("username", str);
			// 		var user = sessionStorage.getItem("username");
			// 		console.log(user);
			// 		location.href = "index.jsp";
			// 	});
			// }

			$(function() {
				var user = sessionStorage.getItem("username");
				console.log("userSession:", user);
			});
		</script>
	</body>
</html>