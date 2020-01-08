<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>addGoods.jsp</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
body{
	display: flex;
	justify-content: center;
		align-items: center;
		background:url("images/admin/bg.jpg");
	background-repeat: no-repeat;
	background-size:100% 100%;
	height:1150px;
		font-size: 18px;
		
}
	.box{
		width: 400px;
		height: 700px;
		border:2px solid white;
		text-align: center;
		margin-top: 100px;
		border-radius: 5px;
	}
	.text{
		color: white;
	}
	.btn{ 
	width: 160px;
	height: 25px;
	border: 0;
	border-radius: 5px;
	background-color: #ffffff;
	
}
.boxs{
	height: 25px;
	width:160px;
	border-radius: 5px;
	border: 0;
}
.file{
	width: 160px;
	border: 0;
	border-radius: 4px;
	background-color: white;
}
</style>
</head>    
<body>
<script type="text/javascript">
	function addStudents() {
		var id=document.getElementById("id");
		var id=document.getElementById("name");
		var id=document.getElementById("sex");
		var id=document.getElementById("age");
		var id=document.getElementById("yuanxi");
		var id=document.getElementById("address");
		var id=document.getElementById("phone");
		var id=document.getElementById("dorm");
		var id=document.getElementById("dormnumber");
		var from=document.getElementById("up");
		if (id.value =="") {
			alert("学号不能为空");	
			from.action=""
		}
		if (name.value =="") {
			alert("姓名不能为空");	
			from.action=""
		}
		if (sex.value =="") {
			alert("性别不能为空");	
			from.action=""
		}
		if (age.value =="") {
			alert("年龄不能为空");	
			from.action=""
		}
		if (yuanxi.value =="") {
			alert("院系不能为空");	
			from.action=""
		}
		if (address.value =="") {
			alert("地址不能为空");	
			from.action=""
		}
		if (dorm.value =="") {
			alert("宿舍不能为空");	
			from.action=""
		}
		if (dormnumber.value =="") {
			alert("宿舍号不能为空");	
			from.action=""
		}
		
		
	}
</script>
	<form:form id="up" action="students/addStudents" method="post" modelAttribute="students" enctype="multipart/form-data">
		<table class="box"  >
			<caption>
				<font class="text" size=14 face=华文新魏>添加学生</font>
			</caption>
			
			<tr>
				<td>学号<font color="red">*</font></td>
				<td>
					<form:input class="boxs" id="id" path="id"/>
				</td>
			</tr>
			<tr>
				<td>姓名<font color="red">*</font></td>
				<td>
					<form:input class="boxs" id="name" path="stuname"/>
				</td>
			</tr>
			<tr>
				<td>性别<font color="red">*</font></td>
				<td>
					<form:input class="boxs" id="sex" path="stusex"/>
				</td>
			</tr>
			<tr>
				<td>年龄</td>
				<td>
					<form:input class="boxs" id="age" path="stuage"/>
				</td>
			</tr>
			<tr>
				<td>院系<font color="red">*</font></td>
				<td>
					<form:select class="boxs" id="yuanxi" path="stuyuanxi">
					<form:option value="信息工程学院">信息工程学院</form:option>
					<form:option value="生物食品学院">生物食品学院</form:option>
					<form:option value="数统学院">数统学院</form:option>
					
					</form:select>
				</td>
			</tr>
			<tr>
				<td>住址</td>
				<td>
					<form:input class="boxs" id="address" path="stuaddress"/>
				</td>
			</tr>
			<tr>
				<td>电话<font color="red">*</font></td>
				<td>
					<form:input class="boxs" id="phone" path="stuphone"/>
				</td>
			</tr>
			<tr>
				<td>宿舍<font color="red">*</font></td>
				<td>
					<form:input class="boxs" id="dorm" path="studorm" />
				</td>
			</tr>
			<tr>
				<td>宿舍号<font color="red">*</font></td>
				<td>
					<form:input class="boxs" id="dormnumber" path="studromnumber"/>
				</td>
			</tr>
			<tr>
				<td>图片</td>
				<td>
					<input class="file" type="file" name="Image"/>
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn" type="submit" value="提交" onclick="addStudents();"/>
				</td>
				<td>
					<input class="btn" type="reset" value="重置"/>
				</td>
			</tr>
			<tr>
				<td>
					<p>${msg}</p>
				</td>
			</tr>
		</table>
	</form:form>
	
</body>
</html>
