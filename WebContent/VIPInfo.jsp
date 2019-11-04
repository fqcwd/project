<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
				<li class="active">用户信息</li>
			</ol>
		</div>
		
		<div class="row" style="margin:50px 0 0 30px;">
			<div class="col-lg-12">				
					<table class="table table-bordered table-hover dataTables-example table-striped"  style="table-layout:fixed">
    					<thead>
   							 <tr>
   							 	<th>编号</th>
        						<th>账号</th>
       							<th>用户姓名</th>
        						<th>性别</th>
       							<th style="width:200px;">身份证号</th>
       							<th>电话</th>
       							<th>消费积分</th>
       							<th>VIP等级</th>
       							<th>VIP注册日期</th>
       							<th>操作</th>
   	 						</tr>
    					</thead>
    					<tbody>
    						<c:forEach items="${userPageBean.list}" var="list">
    							<tr>
    								<td>${list.uid }</td>
    								<td>${list.login }</td>
        							<td>${list.name } </td>
        							<td>${list.usex}</td>
        							<td>${list.idCard }</td>
        							<td>${list.phone }</td>
        							<td>${list.credit }</td>
        							<td>${list.VIPLevel }</td>
        							<td>${fn:substring(list.rDate, 0, 10)}</td>
        							<td><a href="${pageContext.request.contextPath }/UserUpdate.jsp?idCard=${list.idCard }">修改</a></td>
        						</tr>
    						</c:forEach>
    						<tr>
    						<td colspan="8">
    							<span>共${userPageBean.totalCount }条记录  共${userPageBean.totalPage }页  当前是第${userPageBean.currentPage }页 当前页有${userPageBean.pageSize } 条记录</span>
    						</td>
    						<td>
    							<span>
    								<!-- 判断当前页 -->
    								<!-- 前一页=当前页-1 -->
    								<c:if test="${userPageBean.currentPage != 1 }">
    									<a href="${pageContext.request.contextPath }/userPage.action?currentPage=${userPageBean.currentPage-1}">前一页</a>
    								</c:if>
    						</td>
    						<td>	
    								<!-- 后一页=当前页+1 -->
    								<c:if test="${userPageBean.currentPage != userPageBean.totalPage }">
    									<a href="${pageContext.request.contextPath }/userPage.action?currentPage=${userPageBean.currentPage+1}">后一页</a>
    								</c:if>
    							</span>
    						</td>
    						</tr>
    					</tbody>
					</table>
			</div>
		</div>
	</div>
	
	<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script>
		(function ($) {     
 		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		   
		}($)); 	
	</script>

</body>

</html>