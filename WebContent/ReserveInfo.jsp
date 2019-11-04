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
				<li class="active">订单信息</li>
			</ol>
		</div>
		
		<div class="row" style="margin:50px 0 0 30px;">
			<div class="col-lg-12">				
					<table class="table table-bordered table-hover dataTables-example table-striped" >
    					<thead>
   							 <tr>
        						<th>订单编号</th>
       							<th>用户姓名</th>
       							<th>身份证号</th>
       							<th>电话</th>
       							<th>房间号</th>
       							<th>开始日期</th>
       							<th>结束日期</th>
       							<th>订单总金额</th>
   	 						</tr>
    					</thead>
    					<tbody>
    						<c:forEach items="${orderPageBean.list }" var="list">
    							<tr>
    								<td>${list.oid }</td>
        							<td>${list.uname } </td>
        							<td>${list.idCard }</td>
        							<td>${list.tel }</td>
        							<td>${list.rid }</td>
        							<td>${fn:substring(list.sDate, 0, 10)}</td>
        							<td>${fn:substring(list.eDate, 0, 10)}</td>
        							<td>${list.sumMoney }</td>
        						</tr>
    						</c:forEach>
    						
    						<tr>
    							<td colspan="6">共${orderPageBean.totalCount }条记录  共${orderPageBean.totalPage }页  当前是第${orderPageBean.currentPage }页 当前页有${orderPageBean.pageSize } 条记录</td>
    							<td>
    								<!-- 判断当前页 -->
    								<!-- 前一页=当前页-1 -->
    								<c:if test="${orderPageBean.currentPage != 1 }">
    									<a href="${pageContext.request.contextPath }/orderPage.action?currentPage=${orderPageBean.currentPage-1}">前一页</a>
    								</c:if>
    							</td>
    							<td>
    								<!-- 后一页=当前页+1 -->
    								<c:if test="${orderPageBean.currentPage != orderPageBean.totalPage }">
    									<a href="${pageContext.request.contextPath }/orderPage.action?currentPage=${orderPageBean.currentPage+1}">后一页</a>
    								</c:if>
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