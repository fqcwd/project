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
				<li class="active">注册VIP</li>
			</ol>
		</div>
		
			<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default"  style="margin-top:30px;width: 450px;margin-left: -100px;">
				<div class="panel-heading">Sign up</div>
				<div class="panel-body">
					<form role="form" method="post" action="vipRegister.action">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="姓名" id="name" name="VIPName" type="text" autofocus="" required="true">
							</div>
							<div class="form-group icheck-primary">
								&nbsp;&nbsp;&nbsp;性别：
								&nbsp;&nbsp;&nbsp;<input type="radio" name="VIPSex" value="男"> 男
							    &nbsp;&nbsp;&nbsp;<input type="radio" name="VIPSex" value="女"> 女
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="密码" id="password" name="VIPPassword" type="password" value="" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="确认密码" id="again" name="VIPPasswordAgain" type="password" value="" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="身份证" id="idCard" name="VIPIDCard" type="text" value="" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="手机号" id="tel" name="VIPPhone" type="text" value="" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="会员积分" id="credit" name="VIPCredit" type="text" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="会员等级" id="level" name="VIPLevel" type="text" value="" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="注册日期  " name="RDate" type="text" id="date" value="" required="true">
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
		    var name = document.getElementById("name");
			var password = document.getElementById("password");
			var again = document.getElementById("again");
			var idCard = document.getElementById("idCard");
			var tel = document.getElementById("tel");
			var credit = document.getElementById("credit");
			var level = document.getElementById("level");
			var date = document.getElementById("date");
			
			//将text的类型转化为date类型
			date.onclick = function ()
			{
				this.setAttribute("type","date");
			}
			
			//验证两次输入的密码是否一致
			again.onfocus = function()
			{
				this.onblur = function()
				{
					if(password.value != this.value)
					{
						alert("两次输入的密码不一致");
					}
				}
			}
	
			//验证身份证号是否为18位数
	
			idCard.onblur = function() {
				var reg1 = /^[0-9]{18}$/;
	
				if (!reg1.test(this.value)) {
					alert("身份证号必须为18位");
				}
			}
	
	
			//验证手机号是否位11位数
			tel.onblur = function() {
				var reg2 = /^[0-9]{11}$/;
	
				if (!reg2.test(this.value)) {
					alert("手机号必须为11位");
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