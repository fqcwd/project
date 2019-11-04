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
				<li class="active">取消订单</li>
			</ol>
		</div>
		
		<div class="row" style="margin:50px 0 0 30px;">
			<div class="col-lg-12">				
					<form role="form" class="form-inline" method="post" action="orderCancel.action" >
						<fieldset>
							<div class="form-group">
								需要取消的订单号：
								<input class="form-control " placeholder="订单号" name="oid" type="text" required="true" onKeyDown="return isNumber();">
							</div>
							<div class="form-group">
								<input class="form-control btn btn-primary "  type="submit" value="删除" >
							</div>
						</fieldset>
					</form>
			</div>
		</div>
	</div>
	
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script>
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