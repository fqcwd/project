<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<li class="active">房间信息</li>
			</ol>
		</div>
		
		<div class="row" style="margin:50px 0 0 30px;">
			<div class="col-lg-12">				
					<table class="table table-striped">
    					<thead>
   							 <tr>
        						<th>id</th>
       							<th>房间号</th>
       							<th>房间名</th>
       							<th>容纳人数</th>
       							<th>种类</th>
       							<th>面积</th>
       							<th>床的数量</th>
       							<th>房间状态</th>
       							<th>房间价格</th>
       							<th>操作</th>
   	 						</tr>
    					</thead>
    					<tbody>
    						<c:forEach items="${ roomPageBean.list}" var="list">
    							<tr>
    								<td>${list.rid }</td>
        							<td>${list.roomID } </td>
        							<td>${list.rname }</td>
        							<td>${list.number }</td>
        							<td>${list.type }</td>
        							<td>${list.area }</td>
        							<td>${list.bedNum }</td>
        							<td>${list.status }</td>
        							<td>${list.money }</td>
        							<td><a href="${pageContext.request.contextPath }/roomCancel.action?roomId=${list.roomID }">删除</a></td>
        						</tr>
    						</c:forEach>
    						
    						<tr>
    							<td colspan="8">共${roomPageBean.totalCount }条记录  共${roomPageBean.totalPage }页  当前是第${roomPageBean.currentPage }页  当前页有${roomPageBean.pageSize } 条记录</td>
    							<td>
    								<!-- 判断当前页 -->
    								<!-- 前一页=当前页-1 -->
    								<c:if test="${roomPageBean.currentPage != 1 }">
    									<a href="${pageContext.request.contextPath }/roomPage.action?currentPage=${roomPageBean.currentPage-1}">前一页</a>
    								</c:if>
    							</td>
    							<td>
    								<!-- 后一页=当前页+1 -->
    								<c:if test="${roomPageBean.currentPage != roomPageBean.totalPage }">
    									<a href="${pageContext.request.contextPath }/roomPage.action?currentPage=${roomPageBean.currentPage+1}">后一页</a>
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