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
	table {
	display: flex;
	justify-content: center;
	align-items: center;
}
}
.boxs{
	height: 25px;
	border-radius: 5px;
	border: 0;
}
input{
height:22px;
margin-top: 10px;
border-radius: 5px;
border: 0;
}
	.btn{ 
	width: 140px;
	height: 25px;
	border: 0;
	border-radius: 5px;
	background-color: #ffffff;
	margin-left: 18px;
	margin-top: 100px;
}
.boxss{
margin-top: 10px;
	width: 170px;
	height: 23px;
	border-radius: 3px;
	border: 0;
}
</style>
</head>    
<body>
<jsp:useBean id="students" class="com.po.Students" scope="request"/>
	<form:form action="students/addStudents?updateAct=update" method="post" modelAttribute="students" enctype="multipart/form-data">
		<table  style="border-collapse: collapse">
			<tr>
				<td>ID<font color="red">*</font></td>
				<td>
					<form:input path="ids" value="${stuA.ids}" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
					onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/>
				</td>
			</tr>
			<tr>
				<td>学号<font color="red">*</font></td>
				<td>
					<form:input class="boxs" path="id" value="${stuA.id}"/>
				</td>
			</tr>
			<tr>
				<td>姓名<font color="red">*</font></td>
				<td>
					<form:input class="boxs" path="stuname" value="${stuA.stuname}"/>
				</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
					<form:input class="boxs" path="stusex" value="${stuA.stusex}"/>
				</td>
			</tr>
			<tr>
				<td>年龄</td>
				<td>
					<form:input class="boxs" path="stuage" value="${stuA.stuage}"/>
				</td>
			</tr>
			<tr>
				<td>院系</td>
				<td>
					<form:select class="boxss" id="yuanxi" path="stuyuanxi">
					<form:option value="信息工程学院">信息工程学院</form:option>
					<form:option value="生物食品学院">生物食品学院</form:option>
					<form:option value="数统学院">数统学院</form:option>
					</form:select>
				</td>
			</tr>
			<tr>
				<td>地址</td>
				<td>
					<form:input class="boxs" path="stuaddress" value="${stuA.stuaddress}"/>
				</td>
			</tr>
			<tr>
				<td>电话</td>
				<td>
					<form:input class="boxs" path="stuphone" value="${stuA.stuphone}"/>
				</td>
			</tr>
			<tr>
				<td>宿舍</td>
				<td>
					<form:input class="boxs" path="studorm" value="${stuA.studorm}"/>
				</td>
			</tr>
			<tr>
				<td>宿舍号</td>
				<td>
					<form:input class="boxs" path="studromnumber" value="${stuA.studromnumber}"/>
				</td>
			</tr>
			<tr>
				<td>图片</td>
				<td>
					<input class="boxs" type="file" name="Image"/>
				</td>
			</tr>
			<tr>
				<td>
					<input class="btn" type="submit" value="提交"/>
				</td>
				<td>
					<input class="btn" type="reset" value="重置"/>
				</td>
			</tr>
		</table>
	</form:form>
	${msg }
</body>
</html>
