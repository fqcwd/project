<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/register.css" rel="stylesheet" type="text/css">
</head>
<body style="background-image:url(picture/12.jpg);">
	<div style="text-align:center;">
		<h1>IMPRESSIVE LOGIN & SIGN UP FORMS</h1>
	</div>
	<div id="left" style="width:580px;height:540px;margin:80px auto 20px auto;">
		<div id="top-1">
			<span id="left-1" style="left:0px;">Facebook</span>
			<span id="right-1" style="right:-80px;">Twiter</span>
		</div>
		<div id="top-2" style="position:relative;
	width:500px;
	height:130px;
	top:-180px;
	left:-20px;
	margin:20px 40px;">
			<s:form name="register" method="post" action="RegisterAction" >
				    <s:textfield name="login" placeholder="UserName" style="width: 500px; height: 30px;margin:10px;" /><br>
				    <s:textfield name="sex" placeholder="Sex" style="width: 500px; height: 30px;margin:10px;" /><br>
					<s:password name="password" placeholder="Password" style="width: 500px; height: 30px;margin:10px;" /><br>
				    <s:password name="ConfirmPassword" placeholder="ConfirmPassword" style="width: 500px; height: 30px;margin:10px;" /><br> 
					<s:textfield name="idCard" placeholder="IDCard" style="width: 500px; height: 30px;margin:10px;" /><br> 
					<s:textfield name="phone" placeholder="TelPhone" style="width: 500px; height: 30px;margin:10px;" /><br> 
				    <s:submit value="SIGN UP" style="width: 500px; height: 40px; background-color: red;margin:10px;" />
			</s:form>
		</div>
	</div>
	<div id="down"></div>
</body>
</html>