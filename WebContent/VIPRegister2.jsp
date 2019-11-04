<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/register.css" rel="stylesheet" type="text/css">
<style>
	#total {
		width: 320px;
		height: 400px;
	}

	a {
		text-decoration: none;
	}

	#total div {
		color:orange;
		width: 320px;
		height:150px; 
		display: none;

		word-wrap: break-word;
	}
</style>
<script>
	window.onload = function ()
	{
		var total = document.getElementById("total");
			
		var div = total.getElementsByTagName('div');
		var label = total.getElementsByTagName('a');
			
		for (var i = 0; i < label.length; i++)
		{
			label[i].index = i;
			label[i].onclick = function (ev)
			{
				var e = ev || event;
				div[this.index].style.display = 'block';
				e.cancelBubble =true;
			}
			
		}
			
		document.onclick = function ()
		{
			for (var i = 0; i < div.length; i++)
			{
				div[i].style.display = 'none';
					
			}
		}
	}
</script>
</head>
<body style="background-image:url(picture/12.jpg);">
	<div id="Top">
		<h1>IMPRESSIVE LOGIN & SIGN UP FORMS</h1>
	</div>
	<div id="left">
		<div id="top-1">
			<span id="left-1">Facebook</span>
			<span id="right-1">Twiter</span>
		</div>
		<div id="top-2">
			<form name="register" method="post" action="Invest.action">
				    <input type="text" name="login" placeholder="AccountNumber" style="width: 400px; height: 30px;margin:10px;" readonly="readonly" value="<%=session.getAttribute("username")%>"/><br>
					<input type="number" name="price" placeholder="Money" style="width: 400px; height: 30px;margin:10px;" /><br>
				    <input type="submit" value="SIGN UP" style="width: 400px; height: 40px; background-color: red;margin:30px 30px 0px 30px;" />
			</form>
		</div>
	</div>
	<!-- style="background-image:url(picture/timg.jpg);" -->
	<div id="right" >
		<h3>VIP消费规则</h3>
		<div id="total">
		<h4>
			<a href="javaScript:">会员充值</a><br />
			<div>
				具体充值规则如下：
					<p>1000元为VIP一级用户</p>
					<p>2000元为VIP二级用户</p>
					之后等级以此递推，最高等级为VIP八级
			</div>
			<a href="javaScript:">积分说明</a><br />
			<div style="height:50px;">VIP用户每在我们酒店消费100元<br/>即增加1积分，所获积分可用来兑换实体物品</div>
			<a href="javaScript:">VIP特权</a><br />
			<div style="height:200px;">
				VIP用户在我们酒店消费时，可以根据不同的VIP等级进行不同的打折<br/>
				具体打折规则为：<p>VIP一级用户可以打八五折</p>二级用户可以打八折，<p>之后打折以此递推，最高打五折</p>
			</div>
			<h3>此规则最终解释权归本酒店所有</h3>
		</h4>
		</div>
		
	</div>
	<div id="down"></div>
</body>
</html>