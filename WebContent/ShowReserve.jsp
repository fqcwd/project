<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>订单管理</title>
<link href="css/showreserve.css" rel="stylesheet" type="text/css">
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
		<img src="picture/Test4.jpg" style="width: 1320px; height: 250px;">
	</div>
	<div id="main">
		<div id="Top">
			<h3>
				&nbsp;&nbsp;&nbsp;<span><a href="HomePage.jsp">首页</a></span> <span>|</span>
				<span><a href="ShowRoom.jsp">房间查看</a></span> <span>|</span> <span><a
					href="ShowPerson.jsp">个人信息</a></span>
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
			<hr>
			<h3>新店列表</h3>
			<h3>青岛开发区石油大学北店</h3>
			<p>地址:青岛经济技术开发区峨眉山公路168号</p>

			<h3>青岛开发区石油大学北店</h3>
			<p>地址:青岛经济技术开发区峨眉山公路168号</p>

			<h3>青岛开发区石油大学北店</h3>
			<p>地址:青岛经济技术开发区峨眉山公路168号</p>

			<h3>青岛开发区石油大学北店</h3>
			<p>地址:青岛经济技术开发区峨眉山公路168号</p>

			<h3>青岛开发区石油大学北店</h3>
			<p>地址:青岛经济技术开发区峨眉山公路168号</p>

		</div>
		<div id="right">
			<h3 style="background-color: gray;">订单信息</h3>
			<div class="table1">
				<hr>
				<h3>酒店预订</h3>
				<table>
					<tr>
						<td>订单号码：</td>
						<td>${order.oid }</td>
					</tr>
					<tr>
						<td>入住日期：</td>
						<td>${fn:substring(order.sDate, 0, 10)}</td>
					</tr>
					<tr>
						<td>房间数量：</td>
						<td>1</td>
					</tr>
				</table>
			</div>
			<div class="table2">
				<table>
					<tr>
						<td>房间号码：</td>
						<td>${order.rid }</td>
					</tr>
					<tr>
						<td>离店日期：</td>
						<td>${order.eDate }</td>
					</tr>
					<tr>
						<td>合 计：</td>
						<td>${order.sumMoney }元</td>
					</tr>
				</table>
			</div>
			<div class="table3">
				<hr>
				<h3>宾客信息</h3>
				<hr>				
				<table>
					<tr>
						<td>订房人员：</td>
						<td>${user.name }</td>
					</tr>
					<tr>
						<td>积分数量：</td>
						<td>${user.credit }</td>
					</tr>
					<tr>
						<td>证件类型：</td>
						<td>居民身份证</td>
					</tr>
				</table>
			</div>
			<div class="table4">
				<table>
					<tr>
						<td>入住人员：</td>
						<td>${order.uname }</td>
					</tr>
					<tr>
						<td>手机号码：</td>
						<td>${order.tel }</td>
					</tr>
					<tr>
						<td>证件号码：</td>
						<td>${order.idCard }</td>
					</tr>
				</table>
			</div>
			<div class="table5">
				<hr>
				<h3>付款方式</h3>
			    <hr>
			<h3>前台支付--如果整晚保留，请预付房费。</h3>
			<h3>微信支付--房间将为您保留至次日12：00。</h3>
			<input type="button" value="继续预定" onclick="javascript:jump1()"
				style="background-color: Peru; width: 100px; height: 40px" />
			    &nbsp;&nbsp; <input type="button" value="取消订单"
				onclick="javascript:jump2()"
				style="background-color: Peru; width: 100px; height: 40px" /> <br>
			<br>
			</div>
		</div>
	</div>
	<div id="down2">
			<h4>
				<p>关于我们&nbsp;|&nbsp;联系我们&nbsp;|&nbsp;加入我们&nbsp;|&nbsp;网站声明&nbsp;|&nbsp;网站地图&nbsp;|&nbsp;站长统计</p>
				<p>版权：郑州大学北校区113宿舍 &nbsp;联系我们：0731-00358925&nbsp;地址：郑州大学北校区113宿舍</p>
				<p>传真：0743-000000&nbsp;&nbsp;邮编：450003&nbsp;&nbsp;邮箱：xxxx@163.com&nbsp;&nbsp;豫ICP备095622495号</p>
			</h4>		
			</div>
</body>
<script>
	function jump1() {
		window.location.href = "ShowRoom.jsp";
	}
	function jump2() {
		window.location.href = "${pageContext.request.contextPath }/CancelAction.action?oid=${order.oid}";
	}
</script>
</html>