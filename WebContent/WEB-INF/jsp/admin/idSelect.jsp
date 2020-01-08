<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>updateAStudents.jsp</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
			font-size: 16px;
			float: left;
			margin-left: 50px;
			margin-top: 20px;
		}
		.bgcolor{
		  	background-color: white;
		  	border: 1px solid gray;
		}
		.btn{
		border: 1px solid white;
		height: 23px;
		border-radius: 3px;
		margin-left: 4px;
		
		}
		.text{
		position:absolute;
		left:50px;
		top:80px;
		color: red;
		}
		input {
	height: 25px;
	border-radius: 4px;
	border:0;
}
		.inp{
	height: 25px;
	width:170px;
	border-radius: 4px;
	border: 0;
}
		
	</style>
</head>    
<body>
<jsp:useBean id="students" class="com.po.Students" scope="request"/>
	<form:form action="students/idSelectStudent" method="post" modelAttribute="students" enctype="multipart/form-data">
		<table  style="border-collapse: collapse">
			<tr>
				<td>学号查<font color="red">*</font></td>
				<td>
					<form:input path="id"/>
				</td>
				<td align="center">
					<input class="btn"  type="submit" value="查询"/>
				</td>
			</tr>
			
				
				
		</table>
	</form:form>
	<form:form action="students/yuanxiSelectStudent" method="post" modelAttribute="students" enctype="multipart/form-data">
		<table style="border-collapse: collapse">
			<tr>
				<td>学院查<font color="red">*</font></td>
				<td>
					<form:select class="inp" path="stuyuanxi">
					<form:option value="信息工程学院">信息工程学院</form:option>
					<form:option value="生物食品学院">生物食品学院</form:option>
					<form:option value="数统学院">数统学院</form:option>
					</form:select>	
				</td>
				<td align="center">
					<input class="btn" type="submit" value="查询"/>
				</td>
			</tr>
			
				
				
		</table>
	</form:form>
	<form:form action="students/dormSelectStudent" method="post" modelAttribute="students" enctype="multipart/form-data">
		<table style="border-collapse: collapse">
			<tr>
				<td>宿舍查<font color="red">*</font></td>
				<td>
					<form:select class="inp" path="studorm">
					<form:option value="樱1">樱1</form:option>
					<form:option value="樱2">樱2</form:option>
					<form:option value="樱3">樱3</form:option>
					<form:option value="樱4">樱4</form:option>
					<form:option value="樱5">樱5</form:option>
					<form:option value="樱6">樱6</form:option>
					</form:select>
				</td>
				<td align="center">
					<input class="btn" type="submit" value="查询"/>
				</td>
			</tr>
			
		</table>
	</form:form>
	<form:form action="students/dromnumberSelectStudent" method="post" modelAttribute="students" enctype="multipart/form-data">
		<table style="border-collapse: collapse">
			<tr>
				<td>宿舍号查<font color="red">*</font></td>
				<td>
					<form:input path="studromnumber"/>
				</td>
				<td align="center">
					<input class="btn" type="submit" value="查询"/>
				</td>
			</tr>
			
				
				
		</table>
	</form:form><br>
	<c:if test="${allStudents.size()== 0 }"> 
		<div class="text">您还没有该学生。</div>
	</c:if>
	<c:if test="${allStudents.size() != 0 }">
		<table border="1" width="1200px" bordercolor="#ffffff">
			<tr>
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
					
					<td>${students.id }</td>
					<td>${students.stuname}</td>
					<td>${students.stusex }</td>
					<td>${students.stuage }</td>
					<td>${students.stuyuanxi }</td>
					<td>${students.stuaddress }</td>
					<td>${students.stuphone }</td>
					<td>${students.studorm }</td>
					<td>${students.studromnumber }</td>
					<td><a href="students/idSelectStudent?id=${students.id }&act=detils" target="_blank" >详情</a></td>
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
