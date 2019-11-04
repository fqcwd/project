<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ChangeRoom.</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/styles.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="Top.jsp"></jsp:include>
	<jsp:include page="Left.jsp"></jsp:include>	
	<!--
    	作者：1419226920@qq.com
    	时间：2019-05-08
    	描述：下面的是右方的内容显示区
    -->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">登记入住</li>
			</ol>
		</div>
		
		<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default"  style="margin-top:30px;width: 400px;margin-left: -50px;">
				<div class="panel-heading">Sign up</div>
				<div class="panel-body">
					<form role="form" method="post" action="liveAdd.action">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="姓名" name="VIPName" type="text" autofocus="" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="房间号" name="RoomId" type="text" value="" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="身份证" id="idCard" name="VIPIDCard" type="text" value="" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="手机号" id="tel" name="VIPPhone" type="text" value="" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="开始时间" id="sDate" name="SDate" type="text" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="结束时间" id="eDate" name="EDate" type="text" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="总金额" name="Price" type="text" value="" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control btn btn-primary"  type="submit" value="Sign up" style="width:50%;margin-left:25%;">
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script>
		$(function ()
		{
			//正则表达式验证
			var idCard = document.getElementById("idCard");
			var tel = document.getElementById("tel");
			var eDate = document.getElementById("eDate");
			var sDate = document.getElementById("sDate");
			
			//将text类型转化为date类型
		    eDate.onclick = sDate.onclick = function ()
			{
				this.setAttribute("type", "date");
			}
			
			//验证身份证号是否为18位数
			idCard.onfocus = function()
			{
				this.onblur = function()
				{
					var reg1 = /^[0-9]{18}$/;
					
					if(!reg1.test(this.value))
					{
						alert("身份证号必须为18位");
					}
				}
			}
			
			//验证手机号是否位11位数
			tel.onfocus = function()
			{
				this.onblur = function()
				{
					var reg2 = /^[0-9]{11}$/;
					
					if(!reg2.test(this.value))
					{
						alert("手机号必须为11位");
					}
				}
			}
			
		});
		//只能输入数字
		function isNumber()
		{
			if(window.event.keyCode!=8 && (window.event.keyCode<48 || (window.event.keyCode<96 && window.event.keyCode>57)||window.event.keyCode>105))
		    {
		    	event.returnValue = false;
		    	return false;
		    }else
		    {
		    	return true;
		    }
		}
		(function ($) {     
 		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		   
		}($)); 	
	</script>

</body>

</html>
