<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link href="css/HomePage.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="menu">
			<h3>
			<div id="menu-welcome">
				欢迎您：<%=session.getAttribute("username") %>
				<a href="${pageContext.request.contextPath }/Logout.action" style="color:black;">注销</a>
			</div>
					<span><a href="HomePage.jsp">首页</a></span>
					<span>|</span>
					<span><a href="ShowRoom.jsp">房间查看</a></span>
					<span>|</span>
					<span><a href="ShowReserve.jsp">订单查看</a></span>
					<span>|<a href="VIPRegister2.jsp">VIP注册</a></span>
			</h3>
		</div>
		<div id="main" style="background-image:url(picture/11.jpg) ;">
			<div id="main-center">
				<br><br><br><br><br>
				<h2>WELCOME TO 绿能 HOTEL</h2>
				<h4>具有标志性设计和具有现代豪华感的全球酒店</h4>
				<hr style="width: 50px;">
				</hr>
				<p>这里是你享受豪华生活的目的地</p>
			</div>
		</div>
		<div id="center">
			<div id="center-left">
				<h3>HOTEL RESERVATION INQUIRY</h3>
				<h3>酒店预约查询</h3>
			</div>
			<div id="center-right">
			</div>
		</div>
		<div id="rooms">
			<h1>热门房间</h1>
			
				<div id="room1-1">
					<div id="room1-1-left">
						<img src="picture/单人间1.jpg" style="width: 250px; height: 200px;">
					</div>
					<div id="room1-1-right" style="width: 500px; height: 200px;">
						<form name="Room1" method="post" action="Reserve.jsp">
							<p>房间名：单人间1</p>
							<p>房间类型：单人间</p>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$85</h3>
									<input type="hidden" name="price" value="85">
								</div>
							</div>
						</form>
						<br>
					</div>
				</div>
			
			<div id="room1-2">
				<div id="room1-2-left">
					<img src="picture/总统套房1.jpg" style="width: 250px; height: 200px;">
				</div>
				<div id="room1-2-right" style="width: 500px; height: 200px;">
					<form name="Room1" method="post" action="Reserve.jsp">
						<p>房间名：总统套房1</p>
						<p>房间类型：总统套房</p>
						<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
						<div id="room1">
							<div id="room1-left">
								<h3>$95</h3>
								<input type="hidden" name="price" value="95">
							</div>
							
						</div>
					</form>
					<br>
				</div>
			</div>
			<div id="room1-3">
				<div id="room1-3-left">
					<img src="picture/会议室1.jpg" style="width: 250px; height: 200px;">
				</div>
				<div id="room1-3-right" style="width: 500px; height: 200px;">
					<form name="Room1" method="post" action="Reserve.jsp">
						<p>房间名：会议室1</p>
						<p>房间类型：会议室</p>
						<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
						<div id="room1">
							<div id="room1-left">
								<h3>$105</h3>
								<input type="hidden" name="price" value="105">
							</div>
							
						</div>
					</form>
					<br>
				</div>
			</div>
			<div id="room1-4">
				<div id="room1-4-left">
					<img src="picture/宴会厅1.jpg" style="width: 250px; height: 200px;">
				</div>
				<div id="room1-4-right" style="width: 500px; height: 200px;">
					<form name="Room1" method="post" action="Reserve.jsp">
						<p>房间名：宴会厅1</p>
						<p>房间类型：宴会厅</p>
						<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
						<div id="room1">
							<div id="room1-left">
								<h3>$115</h3>
								<input type="hidden" name="price" value="115">
							</div>
							
						</div>
					</form>
					<br>
				</div>
			</div>
		</div>
		<div id="activity" style="background-image: url(picture/Test5.jpg);">
			<div id="activity-image"><br><br>
				<p>每个房间，在统一的风格之上融入了固定的主题，<br>
					使每个房间都有各自鲜明的主题<br>
					这里有明城墙，有老电影，还有许多的风格待你逐一发现</p>
				<h2>特价放送中</h2>
				<a href="ShowRoom.jsp">详细了解</a>
			</div>
		</div>
		<div id="down">
			<hr>
			<br>
			<p>关于我们&nbsp;|&nbsp;联系我们&nbsp;|&nbsp;加入我们&nbsp;|&nbsp;网站声明&nbsp;|&nbsp;网站地图&nbsp;|&nbsp;站长统计</p>
			<p>版权：郑州大学北校区113宿舍 &nbsp;联系我们：0731-00358925&nbsp;地址：郑州大学北校区113宿舍</p>
			<p>传真：0743-000000&nbsp;&nbsp;邮编：450003&nbsp;&nbsp;邮箱：xxxx@163.com&nbsp;&nbsp;豫ICP备095622495号</p>
		</div>
	</body>
</html>
