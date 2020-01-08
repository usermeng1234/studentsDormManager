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

	<c:if test="${noticeall.size() == 0 }"> 
		您还没有公告。
	</c:if>
	<c:if test="${noticeall.size() != 0 }">
		<table border="1" width="1200px" bordercolor="#ffffff">
			<tr>
				<th width="20px" height="50px">ID</th>
				<th width="80px" height="50px">标题</th>
				<th width="125px" height="50px">公告内容</th>
			</tr>
			<c:forEach items="${noticeall}" var="noticeall">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)" height="30px">
					<td>${noticeall.id }</td>
					<td>${noticeall.title }</td>
					<td>${noticeall.notice}</td>
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