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
				<li class="active">房间信息修改</li>
			</ol>
		</div>
		
		<div class="row" style="margin:50px 0 0 30px;">
			<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default"  style="margin-top:-40px;width: 400px;margin-left: -50px;">
				<div class="panel-heading">Update Room</div>
				<div class="panel-body">
					<form role="form" method="post" action="roomUpdate.action">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="房间号" name="RoomId" type="text" value="" onKeyDown="return isNumber();" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="房间名" name="RoomName" type="text" autofocus="" required="true">
							</div>
							<div class="form-group">
								<select name="type" class="selectpicker show-tick form-control">
                                        <option value="单人间">单人间</option>
                                        <option value="标准间">标准间</option>
                                        <option value="商务标间">商务标间</option>
                                        <option value="总统套房">总统套房</option>
                                        <option value="会议室">会议室</option>
                                        <option value="多媒体会议室">多媒体会议室</option>
                                        <option value="宴会厅">宴会厅</option>
                                </select>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="房间状态" name="Status" type="text" value="" onKeyDown="return isNumber();" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="容纳人数" name="PNumber" type="text" value="" onKeyDown="return isNumber();" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="房间面积" name="Area" type="text" value="" onKeyDown="return isNumber();" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="设置金额" name="Money" type="text" value="" onKeyDown="return isNumber();" required="true">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="床的数量" name="BNumber" type="text" value="" onKeyDown="return isNumber();" required="true">
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