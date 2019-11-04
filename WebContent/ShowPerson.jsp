<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html >
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>个人信息</title>
<link href="css/showperson.css" rel="stylesheet" type="text/css">
</head>
<script>
	window.onload = function() {
		var time = new Date().toLocaleDateString();
		var date = document.getElementById("date");

		date.innerHTML = time;
	}
	
</script>
<body style="background-image: url(picture/Test.jpg);">
	<div id="picture">
		<img src="picture/Test5.jpg" style="width: 1320px; height: 250px;">
	</div>
	<div id="main">
		<div id="Top">
			<h3>
				&nbsp;&nbsp;&nbsp;<span><a href="HomePage.jsp">首页</a></span> <span>|</span>
				<span><a href="ShowRoom.jsp">房间查看</a></span> <span>|</span> <span><a
					href="ShowReserve.jsp">订单查看</a></span>
			</h3>
		</div>
		<div id="left">
			<h3 style="background-color: gray;">欢迎光临</h3>
			<h3>
				<p>
					时间日期：<span id="date"></span>
				</p>
				<p>所在城市：郑州市</p>
				<p>城市天气：晴天</p>
			</h3>
			<br>
			<hr>
		</div>
		<div id="right">
				<h3 style="background-color: gray;">个人信息</h3>
				<div class="table1">
					
					<table>
						<tr>
							<td>用户姓名：</td>
							<td>${user.name }</td>
						</tr>
						<tr>
							<td>用户性别：</td>
							<td>${user.usex }</td>
						</tr>
						<tr>
							<td>用户电话：</td>
							<td>${user.phone }</td>
						</tr>
						<tr>
							<td>注册日期：</td>
							<td>${fn:substring(user.rDate, 0, 10)}</td>
						</tr>
					</table>
				</div>
				<div class="table2">
					<table>
						<tr>
							<td>用户账号：</td>
							<td>${user.login }</td>
						</tr>
						<tr>
							<td>用户积分：</td>
							<td>${user.credit }</td>
						</tr>
						<tr>
							<td>身份证号：</td>
							<td>${user.idCard }</td>
						</tr>
						<tr>
							<td>VIP等级：</td>
							<td>${user.VIPLevel }</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	<div id="down">
		<figure class="snip1579">
			<img src="picture/sample74.jpg" alt="profile-sample2" />
			<figcaption>
				<h3>Sue Shei</h3>
				<h5>Founder</h5>
				<blockquote>
					<p>'Which is worse, that everyone has his price, or that the
						price is always so low.'</p>
				</blockquote>
			</figcaption>
			<a href="#"></a>
		</figure>
		<figure class="snip1579 hover">
			<img src="picture/sample77.jpg" alt="profile-sample7" />
			<figcaption>
				<h3>Indigo Violet</h3>
				<h5>Web Designer</h5>
				<blockquote>
					<p>'I'm killing time while I wait for life to shower me with
						meaning and happiness.'</p>
				</blockquote>
			</figcaption>
			<a href="#"></a>
		</figure>
		<figure class="snip1579">
			<img src="picture/sample96.jpg" alt="profile-sample6" />
			<figcaption>
				<h3>Will Barrow</h3>
				<h5>Public Relations</h5>
				<blockquote>
					<p>'The only skills I have the patience to learn are those that
						have no real application in life.'</p>
				</blockquote>
			</figcaption>
			<a href="#"></a>
		</figure>
		<figure class="snip1579">
			<img src="picture/sample74.jpg" alt="profile-sample6" />
			<figcaption>
				<h3>Will Barrow</h3>
				<h5>Public Relations</h5>
				<blockquote>
					<p>'The only skills I have the patience to learn are those that
						have no real application in life.'</p>
				</blockquote>
			</figcaption>
			<a href="#"></a>
		</figure>
		<script src='js/jquery.min2.js'></script>
	    <script src="js/index2.js"></script>
	</div>
	<div id="down2">
			<h4>
				<p>关于我们&nbsp;|&nbsp;联系我们&nbsp;|&nbsp;加入我们&nbsp;|&nbsp;网站声明&nbsp;|&nbsp;网站地图&nbsp;|&nbsp;站长统计</p>
				<p>版权：郑州大学北校区113宿舍 &nbsp;联系我们：0731-00358925&nbsp;地址：郑州大学北校区113宿舍</p>
				<p>传真：0743-000000&nbsp;&nbsp;邮编：450003&nbsp;&nbsp;邮箱：xxxx@163.com&nbsp;&nbsp;豫ICP备095622495号</p>
			</h4>		
			</div>
</body>
</html>