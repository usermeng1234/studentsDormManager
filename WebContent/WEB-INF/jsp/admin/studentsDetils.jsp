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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: gray;
	
}
	table {
	border:2px solid white;
	border-radius:5px;
	text-align:center;
	margin-top:100px;
	width: 500px;
	height:700px;
}
.detils{
	font-size: 35px;
	color: white;
}
</style>
</head>
<body>
<jsp:useBean id="students" class="com.po.Students" scope="request"/>
	<table  style="border-collapse: collapse">
	<caption class="detils">学生详细情况</caption>
		<tr >
			<td>学号</td>
			<td>
				${stu.id }
			</td>
		</tr>
		<tr>
			<td>性别</td>
			<td>
				${stu.stusex }
			</td>
		</tr>
		<tr>
			<td>年龄</td>
			<td>
				${stu.stuage }
			</td>
		</tr>
		<tr>
			<td>学院</td>
			<td>
				${stu.stuyuanxi }
			</td>
		</tr>
		<tr>
			<td>地址</td>
			<td>
				${stu.stuaddress }
			</td>
		</tr>
		<tr>
			<td>电话</td>
			<td>
				${stu.stuphone }
			</td>
		</tr>
		<tr>
			<td>宿舍</td>
			<td>
				${stu.studorm }
			</td>
		</tr>
		<tr>
			<td>宿舍号</td>
			<td>
				${stu.studromnumber }
			</td>
		</tr>
		<tr>
			<td>图片</td>
			<td>
				<c:if test="${stu.logoImage != '' }">
					<img alt="该学生未添加图片" width="250" height="250"
					src="logos/${stu.logoImage}"/>
				</c:if>
				<c:if test="${stu.logoImage = '' }">
					<p>该学生未添加图片</p>
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>