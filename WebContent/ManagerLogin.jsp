<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/managerlogin.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	function $(str) {
		return (document.getElementById(str))
	};

	function check_submit() {

		if ($("txt_username").value == "") {
			alert("请填写用户名");
			return (false);
		}
		if ($("txt_password").value == "") {
			alert("请填写密码");
			return (false);
		}
		$("submit_button").disabled = true;
		return (true);

	}

	function mover() {

		event.srcElement.focus();
		event.srcElement.select();

	}
</script>
<body
	style="background-image: url(picture/16.jpg); background-repeat: no-repeat; background-size: cover;">
	<form action="AdminAction.action">
		<div class="Login">
			<br><br><h2>欢迎您登陆客房管理系统</h2><br><br>
			<s:textfield name="name" id="txt_username" placeholder="name"
				style="width: 400px; height: 30px;margin:10px;" />
			<br><br>
			<s:textfield name="password" id="txt_password" placeholder="password"
				style="width: 400px; height: 30px;margin:10px;" />
			<br><br><br>
			<s:submit value="SIGN UP"
				style="width: 400px; height: 40px; background-color: red;margin: 10px 50px;" />
		</div>
	</form>
	<div class="down"></div>
</body>
</html>