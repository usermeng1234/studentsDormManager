<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <base href="<%=basePath%>">
    <title>selectStudents.jsp</title>
	<link href="css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
			font-size: 16px;
		}
		.bgcolor{
		  	background-color: white;
		  	border: 1px solid gray;
		}
		
	</style>
	
</head>
<body>

	<c:if test="${allStudents.size() == 0 }">
		您还没有学生。
	</c:if>
	<c:if test="${allStudents.size() != 0 }">
		<table border="1" width="1200px" bordercolor="#ffffff">
			<tr>
				<th width="125px" height="50px">ID</th>
				<th width="125px" height="50px">学号</th>
				<th width="125px" height="50px">姓名</th>
				<th width="125px" height="50px">性别</th>
				<th width="125px" height="50px">年龄</th>
				<th width="125px" height="50px">院系</th>
				<th width="125px" height="50px">住址</th>
				<th width="125px" height="50px">电话</th>
				<th width="125px" height="50px">宿舍楼</th>
				<th width="125px" height="50px">宿舍号</th>
			</tr>
			<c:forEach items="${allStudents}" var="students">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)" height="30px">
					<td>${students.ids }</td>
					<td>${students.id }</td>
					<td>${students.stuname}</td>
					<td>${students.stusex }</td>
					<td>${students.stuage }</td>
					<td>${students.stuyuanxi }</td>
					<td>${students.stuaddress }</td>
					<td>${students.stuphone }</td>
					<td>${students.studorm }</td>
					<td>${students.studromnumber }</td>
				</tr>
			</c:forEach>
			
		</table>
	</c:if>
	
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
	</script>
</body>
</html>