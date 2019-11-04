<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Percentage Progress Bar with great UI</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body style="background-image: url(picture/11.jpg);background-size:corver;">
	<div class="page-overlay">
		<div class="text">
			<p> 您的登录账号为:<%=request.getAttribute("ulogin") %></p>
			<p>将自动返回登陆界面,请稍等</p>
		</div>
		<div class="paper-progress-bar">
		<h3>Loading...</h3>
		 </div>
		
	</div>
	<div class="inside">
		<div id="left">
		<div id="top-1">
			<h1>国际大酒店</h1>
			
		</div>
		<div id="top-2">
			<h2>24小时客房预订</h2>
		</div>
		<div id="login">
			<form name="Login" method="post" action="LoginAction.action">
				<h3>会员登陆</h3>
				<table>
					<tr>
						<td>账号:</td>
						<td><input type="text" name="login" style="margin:10px;"></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td><input type="password" name="password" style="margin:10px;"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;<input type="submit" value="登陆"></td>
						<td><input type="reset" value="撤销" style="margin:10px;"></td >
					</tr>
				</table>
				<a href="Register.jsp">会员注册</a>&nbsp;&nbsp; <a href="ManagerLogin.jsp">管理员登陆</a>
			</form>
		</div>
		<div id="Tel">
			<h2>订房专线</h2>
			<hr>
			<p>+86&nbsp;0394-154613481</p>
			<p>地址：河南省郑州市金水区文化路97号郑州大学北校区</p>
			<p>Email:@682156461.com</p>
		</div>
	</div>
	<div id="center">
		<h1>All Form Fartum Interenational Hotel</h1>
		<h1>专心 专业 专注的会议服务</h1>
	</div>
	<div id="down"></div>
	</div>
	<script src='js/jquery.min.js'></script>
	<script src="js/index.js"></script>
</body>

</html>
