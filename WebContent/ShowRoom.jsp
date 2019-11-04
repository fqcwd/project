<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/showroom.css" rel="stylesheet" type="text/css">
<style type="text/css">
.active {
	background: lightgreen;
}
</style>
<script>
	window.onload = function() {
		//设置子div都为空
		var right = document.getElementById("right");
		var children = right.children;
		for (var i = 1; i < children.length; i++) {
			children[i].style.display = 'none';
		}
		//调用自定义的转换函数
		new tabSwitch();
	}

	function tabSwitch() {
		var _this = this;
		var right = document.getElementById("right");
		var left = document.getElementById("left");
		this.oDiv = right.children;
		this.oBtn = left.getElementsByTagName("input");

		for (var i = 0; i < this.oBtn.length; i++) {
			this.oBtn[i].index = i;
			this.oBtn[i].onclick = function() {
				_this.fnClick(this);
			}
		}
	}

	tabSwitch.prototype.fnClick = function(btn) {
		for (var j = 0; j < this.oBtn.length; j++) {
			this.oBtn[j].className = "";
			this.oDiv[j + 1].style.display = 'none';
		}
		btn.className = "active";
		this.oDiv[btn.index + 1].style.display = 'block';
	}
</script>
<title>Insert title here</title>
</head>
<body style="background-image: url(picture/Test.jpg);">
	<div id="picture">
		<img src="picture/Test3.jpg" style="width: 1350px; height: 250px;">
	</div>
	<div id="main">
		<div id="Top">
			<h3>
				&nbsp;&nbsp;&nbsp;<span><a href="HomePage.jsp">首页</a></span> <span>|</span>
				<span><a href="ShowPerson.jsp">个人信息</a></span> <span>|</span> <span><a
					href="ShowReserve.jsp">订单查看</a></span>
			</h3>
		</div>
		<div id="left">
			<h3 style="background-color: gray; margin:0px 0px 40px 0px;">客房介绍</h3>
			<input type="button" value="单人间"
				style="width: 250px; length: 60px; height: 40px;" /><br> <br>
			<input type="button" value="标准间" style="width: 250px; height: 40px;" /><br>
			<br> <input type="button" value="商务标间"
				style="width: 250px; height: 40px;" /><br> <br> <input
				type="button" value="总统套房" style="width: 250px; height: 40px;" /><br>
			<br> <input type="button" value="会议室"
				style="width: 250px; height: 40px;" /><br> <br> <input
				type="button" value="多媒体会议室" style="width: 250px; height: 40px;" /><br>
			<br> <input type="button" value="宴会厅"
				style="width: 250px; height: 40px;" /><br> <br>
		</div>
		<div id="right">
			<h3 style="background-color: gray;">客房列表</h3>
			<div id="room1" style="display: block;">
				<div id="room1-1">
					<div id="room1-1-left">
						<img src="picture/单人间1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room1-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：001</td>
									<td>房间名称：单人间1</td>
									<td>可住：1人</td>
								</tr>
								<tr>
									<td>面积：13-15m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3 >$85</h3>
									<input type="hidden" name="price" value="85">
									<input type="hidden" name="rid" value="001">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px; " />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room1-2">
					<div id="room1-2-left">
						<img src="picture/单人间2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room1-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：002</td>
									<td>房间名称：单人间2</td>
									<td>可住：1人</td>
								</tr>
								<tr>
									<td>面积：13-15m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$95</h3>
									<input type="hidden" name="price" value="95">
									<input type="hidden" name="rid" value="002">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room1-3">
					<div id="room1-3-left">
						<img src="picture/单人间3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room1-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：003</td>
									<td>房间名称：单人间3</td>
									<td>可住：1人</td>
								</tr>
								<tr>
									<td>面积：13-15m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$105</h3>
									<input type="hidden" name="price" value="105">
									<input type="hidden" name="rid" value="003">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room1-4">
					<div id="room1-4-left">
						<img src="picture/单人间4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room1-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：004</td>
									<td>房间名称：单人间4</td>
									<td>可住：1人</td>
								</tr>
								<tr>
									<td>面积：13-15m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$115</h3>
									<input type="hidden" name="price" value="115">
									<input type="hidden" name="rid" value="004">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>

			<div id="room2">
				<div id="room2-1">
					<div id="room2-1-left">
						<img src="picture/标准间1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room2-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：005</td>
									<td>房间名称：标准间1</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：20-30m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$120</h3>
									<input type="hidden" name="price" value="120">
									<input type="hidden" name="rid" value="005">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room2-2">
					<div id="room2-2-left">
						<img src="picture/标准间2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room2-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：006</td>
									<td>房间名称：标准间2</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：20-30m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$130</h3>
									<input type="hidden" name="price" value="130">
									<input type="hidden" name="rid" value="006">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room2-3">
					<div id="room2-3-left">
						<img src="picture/标准间3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room2-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：007</td>
									<td>房间名称：标准间3</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：20-30m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$140</h3>
									<input type="hidden" name="price" value="140">
									<input type="hidden" name="rid" value="007">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room2-4">
					<div id="room2-4-left">
						<img src="picture/标准间4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room2-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：008</td>
									<td>房间名称：标准间4</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：20-30m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$150</h3>
									<input type="hidden" name="price" value="150">
									<input type="hidden" name="rid" value="008">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>

			<div id="room3">
				<div id="room3-1">
					<div id="room3-1-left">
						<img src="picture/商务套间1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room3-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：009</td>
									<td>房间名称：商务套间1</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：40-50m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$200</h3>
									<input type="hidden" name="price" value="200">
									<input type="hidden" name="rid" value="009">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room3-2">
					<div id="room3-2-left">
						<img src="picture/商务套间2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room3-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：010</td>
									<td>房间名称：商务套间2</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：40-50m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$220</h3>
									<input type="hidden" name="price" value="220">
									<input type="hidden" name="rid" value="010">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room3-3">
					<div id="room3-3-left">
						<img src="picture/商务套间3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room3-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：011</td>
									<td>房间名称：商务套间3</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：40-50m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$240</h3>
									<input type="hidden" name="price" value="240">
									<input type="hidden" name="rid" value="011">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room3-4">
					<div id="room3-4-left">
						<img src="picture/商务套间4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room3-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：012</td>
									<td>房间名称：商务套间4</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：40-50m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$260</h3>
									<input type="hidden" name="price" value="260">
									<input type="hidden" name="rid" value="012">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>

			<div id="room4">
				<div id="room4-1">
					<div id="room4-1-left">
						<img src="picture/总统套房1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room4-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：013</td>
									<td>房间名称：总统套房1</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：60-80m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：2间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$400</h3>
									<input type="hidden" name="price" value="400">
									<input type="hidden" name="rid" value="013">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room4-2">
					<div id="room4-2-left">
						<img src="picture/总统套房2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room4-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：014</td>
									<td>房间名称：总统套房2</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：60-80m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$450</h3>
									<input type="hidden" name="price" value="450">
									<input type="hidden" name="rid" value="014">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room4-3">
					<div id="room4-3-left">
						<img src="picture/总统套房3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room4-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：015</td>
									<td>房间名称：总统套房3</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：60-80m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$500</h3>
									<input type="hidden" name="price" value="500">
									<input type="hidden" name="rid" value="015">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room4-4">
					<div id="room4-4-left">
						<img src="picture/总统套房4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room4-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：016</td>
									<td>房间名称：总统套房4</td>
									<td>可住：2人</td>
								</tr>
								<tr>
									<td>面积：60-80m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>床型：大床1.8*2.0米2张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<p>浴室配套：电吹风，24小时热水，洗漱用具</p>
							<div id="room1">
								<div id="room1-left">
									<h3>$550</h3>
									<input type="hidden" name="price" value="550">
									<input type="hidden" name="rid" value="016">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>

			<div id="room5">
				<div id="room5-1">
					<div id="room5-1-left">
						<img src="picture/会议室1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room5-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：017</td>
									<td>房间名称：会议室1</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：100-120m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$500</h3>
									<input type="hidden" name="price" value="500">
									<input type="hidden" name="rid" value="017">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room5-2">
					<div id="room5-2-left">
						<img src="picture/会议室2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room5-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：018</td>
									<td>房间名称：会议室2</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：100-120m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$550</h3>
									<input type="hidden" name="price" value="550">
									<input type="hidden" name="rid" value="018">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room5-3">
					<div id="room5-3-left">
						<img src="picture/会议室3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room5-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：019</td>
									<td>房间名称：会议室3</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：100-120m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$600</h3>
									<input type="hidden" name="price" value="500">
									<input type="hidden" name="rid" value="019">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room5-4">
					<div id="room5-4-left">
						<img src="picture/会议室4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room5-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：020</td>
									<td>房间名称：会议室4</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：100-120m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$650</h3>
									<input type="hidden" name="price" value="650">
									<input type="hidden" name="rid" value="020">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>

			<div id="room6">
				<div id="room6-1">
					<div id="room6-1-left">
						<img src="picture/多媒体会议室1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room6-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：021</td>
									<td>房间名称：多媒体会议室1</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：150-180m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>多媒体设备：大屏投影</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$600</h3>
									<input type="hidden" name="price" value="600">
									<input type="hidden" name="rid" value="021">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room6-2">
					<div id="room6-2-left">
						<img src="picture/多媒体会议室2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room6-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：022</td>
									<td>房间名称：多媒体会议室2</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：150-180m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>多媒体设备：大屏投影</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$650</h3>
									<input type="hidden" name="price" value="650">
									<input type="hidden" name="rid" value="022">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room6-3">
					<div id="room6-3-left">
						<img src="picture/多媒体会议室3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room6-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：023</td>
									<td>房间名称：多媒体会议室3</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：150-180m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>多媒体设备：大屏投影</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$700</h3>
									<input type="hidden" name="price" value="700">
									<input type="hidden" name="rid" value="023">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room6-4">
					<div id="room6-4-left">
						<img src="picture/多媒体会议室4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room6-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：024</td>
									<td>房间名称：多媒体会议室4</td>
									<td>可供：8人</td>
								</tr>
								<tr>
									<td>面积：150-180m*2</td>
									<td>早餐：无早餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>长桌1.8*12.0米1张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>多媒体设备：大屏投影</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$750</h3>
									<input type="hidden" name="price" value="750">
									<input type="hidden" name="rid" value="024">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>
			<div id="room7">
				<div id="room7-1">
					<div id="room7-1-left">
						<img src="picture/宴会厅1.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room7-1-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：025</td>
									<td>房间名称：宴会厅1</td>
									<td>可住：16人</td>
								</tr>
								<tr>
									<td>面积：200-220m*2</td>
									<td>餐饮：晚餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长圆桌1.8*2.0米20张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$1000</h3>
									<input type="hidden" name="price" value="1000">
									<input type="hidden" name="rid" value="025">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room7-2">
					<div id="room7-2-left">
						<img src="picture/宴会厅2.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room7-2-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：026</td>
									<td>房间名称：宴会厅2</td>
									<td>可住：16人</td>
								</tr>
								<tr>
									<td>面积：200-220m*2</td>
									<td>餐饮：晚餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长圆桌1.8*2.0米20张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$1200</h3>
									<input type="hidden" name="price" value="1200">
									<input type="hidden" name="rid" value="026">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room7-3">
					<div id="room7-3-left">
						<img src="picture/宴会厅3.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room7-3-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：027</td>
									<td>房间名称：宴会厅3</td>
									<td>可住：16人</td>
								</tr>
								<tr>
									<td>面积：200-220m*2</td>
									<td>餐饮：晚餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长圆桌1.8*2.0米20张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$1500</h3>
									<input type="hidden" name="price" value="1500">
									<input type="hidden" name="rid" value="027">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
				<div id="room7-4">
					<div id="room7-4-left">
						<img src="picture/宴会厅4.jpg" style="width: 450px; height: 200px;">
					</div>
					<div id="room7-4-right" style="width: 500px; height: 200px;">
						<s:form name="Room1" method="post" action="Reserve.jsp">
							<table>
								<tr>
									<td>房间号：028</td>
									<td>房间名称：宴会厅4</td>
									<td>可住：16人</td>
								</tr>
								<tr>
									<td>面积：200-220m*2</td>
									<td>餐饮：晚餐</td>
									<td>卫浴：独立卫浴</td>
								</tr>
								<tr>
									<td>桌型：长圆桌1.8*2.0米20张</td>
									<td>宽带：免费WiFi和宽带</td>
									<td>剩余：1间</td>
								</tr>
							</table>
							<br>
							<br>
							<div id="room1">
								<div id="room1-left">
									<h3>$2000</h3>
									<input type="hidden" name="price" value="2000">
									<input type="hidden" name="rid" value="028">
								</div>
								<div id="room1-right">
									<s:submit value="预定" class="button"
										style="width:150px; height:50px;" />
								</div>
							</div>
						</s:form>
						<br>
					</div>
				</div>
			</div>
		</div>
		<div id="down">
			<br>
			<h4>
				<p>关于我们&nbsp;|&nbsp;联系我们&nbsp;|&nbsp;加入我们&nbsp;|&nbsp;网站声明&nbsp;|&nbsp;网站地图&nbsp;|&nbsp;站长统计</p>
				<p>版权：郑州大学北校区113宿舍 &nbsp;联系我们：0731-00358925&nbsp;地址：郑州大学北校区113宿舍</p>
				<p>传真：0743-000000&nbsp;&nbsp;邮编：450003&nbsp;&nbsp;邮箱：xxxx@163.com&nbsp;&nbsp;豫ICP备095622495号</p>
			</h4>
		</div>
	</div>

</body>
</html>