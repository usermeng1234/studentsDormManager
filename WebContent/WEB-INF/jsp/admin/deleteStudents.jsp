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
    <title>selectGoods.jsp</title>
	<link href="css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	background-color: white;
		  	border: 1px solid gray;
		}
		.btn{
			width: 100px;
			height: 25px;
			background-color: #ffffff;
			border: 0;
			margin: 5px;
			border-radius: 5px;
		}
	</style>
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
	</script>
	<script type="text/javascript">
  		function confirmDelete(){
  			var n = document.deleteForm.ids.length;
  			alert(n);
  			var count = 0;//统计没有选中的个数
  			for(var i = 0; i < n; i++){
  				if(!document.deleteForm.ids[i].checked){
  					count++;
  				}else{
  					break;
  				}
  			}
  			if(n > 1){
  				if(count == n){
  					alert("请选择被删除的学生！");
  	  				count = 0;
  	  				return false;
  				}
  			}else{
  	  			if(!document.deleteForm.ids.checked){
  	  					alert("请选择被删除的学生！");
  	  					return false;
  	  			}
  			}	
  		
  			if(window.confirm("真的删除吗？really?")){
  				document.deleteForm.submit();
  				return true;
  			}
  			return false;
  		}
  		function checkDel(id){
  			if(window.confirm("是否删除该学生？")){
  				window.location.href = "/Dormitory/students/deleteAStudents?id="+id;
  			}
  		}
  </script>
</head>
<body>
	<c:if test="${allStudents.size() == 0 }">
		您还没有学生。
	</c:if>
	<c:if test="${allStudents.size() != 0 }">
		<form action="students/deleteStudents" name="deleteForm">
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
			<c:forEach items="${allStudents }" var="students">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
					<td><input type="checkbox" name="ids" value="${students.id }"/>${students.id }</td>
					<td>${students.stuname}</td>
					<td>${students.stusex }</td>
					<td>${students.stuage }</td>
					<td>${students.stuyuanxi }</td>
					<td>${students.stuaddress }</td>
					<td>${students.stuphone }</td>
					<td>${students.studorm }</td>
					<td>${students.studromnumber }</td>
					<td>
						<a href="javascript:checkDel('${students.id }')">删除</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="11">
					<input class="btn" type="button" value="删除" onclick="confirmDelete()">
				</td>
			</tr>
			
			<tr>
				<td colspan="6">${msg }</td>
			</tr>
		</table>
		</form>
	</c:if>
</body>
</html>