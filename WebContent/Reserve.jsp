<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="css/reserve.css"rel="stylesheet" type="text/css">
<script>
	window.onload = function ()
	{
		var level = document.getElementById("level");
		var sum = document.getElementById("sum");
		var price = document.getElementById("price");
		var money = document.getElementById("money");
		
		sum.innerHTML = parseInt(level.innerHTML) * 0.9 * parseInt(price.innerHTML);
		money.value = sum.innerHTML;
	}
</script>
<body style="background-image: url(picture/show.jpg);">
 <div id="room">
 	<div id="main">
		<div id="menu" style="float:left;"><h3>
      		<span><a href="HomePage.jsp">首页</a></span>
      		<span>|</span>
      		<span><a href="ShowRoom.jsp">房间查看</a></span>
      		<span>|</span>
      		<span><a href="ShowReserve.jsp">订单查看</a></span></h3>  
 		</div>
 	</div>
 	<div id="room1">
     	<form method="post" action="ReserveAction.action">
    		<h2> BOOK Now,Pay When You Stay!</h2><br> 
  			 房间价格:<span id="price"><%=request.getParameter("price") %></span>元 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		会员折扣:<span id="level">9</span>折<br><br><br>
       		入住姓名：<input type="text" name="name">
        	<br><br><br>
        	开始时间：<input type="date" name="StartDate">
        	结束时间：<input type="date" name="EndDate"><br><br><br>		     	
			身份证号：<input type="text" name="IDCard">
			联系手机：<input type="text" name="Tel"><br><br><br>
			房间数量: 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总房款：<span id="sum"></span>元 <br><br><br>
			<input type="hidden" id="money" name="money"/>
			<input type="hidden" name="rid" value="<%=request.getParameter("rid")%>"> 
			<input type="submit"value="确认提交" style="text-align:center">
			<br><br><br><br><br>
			<h4>绿能酒店给您提供最精致的服务！</h4>	     		      
  		</form>
  	</div>
</div>		  
</body>
</html>