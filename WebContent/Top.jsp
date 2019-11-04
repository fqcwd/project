<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top</title>
</head>
<body>
	<!--
    	作者：1419226920@qq.com
    	时间：2019-05-08
    	描述：导航栏
    -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><b>客房后台管理系统</b></a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><span class="glyphicon glyphicon-user">姓名：<%=session.getAttribute("name") %></span></a></li>
							<li><a href="${pageContext.request.contextPath }/AdminLogout.action"><span class="glyphicon glyphicon-log-out">注销</span> </a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div>
	</nav>
</body>
</html>