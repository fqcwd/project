<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<!--
        	作者：1419226920@qq.com
        	时间：2019-05-08
        	描述：搜索框
        -->
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		
		<!--
        	作者：1419226920@qq.com
        	时间：2019-05-08
        	描述：下面是树状下拉列表
        -->
		<ul class="nav menu">
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 用户管理 <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-3">
					<li>
						<a class="" href="userPage.action">
							<span class="glyphicon glyphicon-share-alt"></span> 查看用户信息
						</a>
					</li>
					<li>
						<a class="" href="VIPRegister.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 注册会员
						</a>
					</li>
					<li>
						<a class="" href="UserCancel.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 注销用户
						</a>
					</li>
				</ul>
			</li>
		
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 订单管理 <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-2">
					<li>
						<a class="" href="orderPage.action">
							<span class="glyphicon glyphicon-share-alt"></span> 查看订单
						</a>
					</li>
					<li>
						<a class="" href="ReserveAdd.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 增加订单
						</a>
					</li>
					<li>
						<a class="" href="ReserveCancle.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 取消订单
						</a>
					</li>
				</ul>
			</li>
			
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 房间管理 <span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-4">
					<li>
						<a class="" href="RoomAdd.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 添加房间
						</a>
					</li>
					<li>
						<a class="" href="RoomChange.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 房间信息修改
						</a>
					</li>
					<li>
						<a class="" href="roomPage.action">
							<span class="glyphicon glyphicon-share-alt"></span> 房间信息显示
						</a>
					</li>
				</ul>
			</li>
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 住房信息 <span data-toggle="collapse" href="#sub-item-5" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-5">
					<li>
						<a class="" href="livePage.action">
							<span class="glyphicon glyphicon-share-alt"></span> 查看入住信息
						</a>
					</li>
					<li>
						<a class="" href="LiveSign.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 办理入住手续
						</a>
					</li>
					<li>
						<a class="" href="LiveCancel.jsp">
							<span class="glyphicon glyphicon-share-alt"></span> 办理退房手续
						</a>
					</li>
				</ul>
			</li>

			<li role="presentation" class="divider"></li>
			<li><a href="payPage.action"><span class="glyphicon glyphicon-user"></span>查看消费记录</a></li>
		</ul>
	</div>
</body>
</html>