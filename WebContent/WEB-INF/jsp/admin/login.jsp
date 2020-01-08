<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  <base href="<%=basePath%>">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登录</title>
	<style type="text/css">
	table{
		text-align: center;
	}
	.textSize{
		width: 200px;
		height: 25px;
		border-radius: 5px;
	}
	* {
		margin: 0px;
		padding: 0px;
	}
	body {
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		margin:0 auto;
		background:url("images/admin/bg.jpg");
		background-repeat: no-repeat;
		background-size:800px 700px;
		position: relative;
		background-size: cover;		
	
	}
	.title{
		width: 300px;
		height: 50px;
		font-size: 40px;
		color: white;
		position: absolute;
		top: 10px;
		left: 150px;
	}
	.loginBox{
	position: absolute;
		width: 600px;
		height: 440px;
		background-image: linear-gradient(to bottom right, #8AAFBF ,#E3D4C1, #B0938F);
		right: 500px;
		top:300px;
		border-radius:10px;
		
		margin: 0 auto;
		z-index: 999;
		
	}
	.right{
		background-image: linear-gradient(to bottom right, #B0938F,#E3D4C1,#8AAFBF );
		width: 400px;
		height: 300px;
		position: absolute;
		right: 100px;
		top:70px;
		border-radius: 5px;
	}
	.btn {
	width: 300px;
	height: 35px;
	margin-top:10px;
	border-radius: 5px;
	font-size: 14px;
	color: #33CCFF;
}
.img{
	position: relative;
}
.imgs{
	position: relative;
	top: 6px;
	left: -10px;
}
.text{
width:300px;
font-size: 14px;
color: white;
position: absolute;
bottom: 5px;
text-align: center;
left: 150px;
}
	</style>
	<script type="text/javascript">
	//确定按钮
	function gogo(){
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	}
	</script>
  </head>
  <body>
  
  <div class="loginBox">
  <h1 class="title">ADMIN LOGIN</h1>
  	<form:form action="admin/login" modelAttribute="adminUser" method="post">
	<table class="right">
		
		<tr>
			
			<td class="img">
			<img class="imgs" src="images/admin/login.png" width="25px" height="25px">
				<form:input path="username" cssClass="textSize"/>
			</td>
		</tr>
		<tr>
			
			<td class="img">
			<img class="imgs" src="images/admin/mima.png" width="25px" height="25px">
				<form:password path="password" cssClass="textSize" maxlength="20"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input class="btn" type="button" value="login" onclick="gogo()" >
				<input class="btn" type="reset"	 value="cancel" >
			</td>
		</tr>
	</table>
	</form:form>
	<b class="text">${msg }</b>
	</div>
	
  </body>
</html>
