<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>后台主页面</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	height:100%;
	
	
	position: relative;
	background:url("images/admin/bg.jpg");
	
	background-size:100% 100%;
}

#header {
	height: 90px;
	width: 100%;
	margin: 0px 0px 3px 0px;
}

#header h1 {
	text-align: center;
	font-family: 微软雅黑;
	color: #ffffff;
	font-size: 30px；
}

#navigator {


	width: 300px;
	font-size: 14px;
}
#navigator ul {
	list-style-type: none;
}
#navigator li {
	
	position: relative;
}
#navigator li a{
	text-decoration: none;
	text-align:center;
	display: block;
}
#navigator li .items {
	color: #000000;
	text-decoration: none;
	padding-top: 8px;
	margin-top:5px;
	display: block;
	width: 100px;
	height: 120px;
	text-align: center;
	line-height:120px;
	background-color:#ffffff;
	margin-left: 2px;
	border-bottom: 2px solid gray;
	border-radius: 5px;
}
#navigator li a:hover {
	background-color: white;
	color:black;
}
#navigator ul li ul {
   visibility: hidden;
   position: absolute;
   background-color:#9e9e9e85;
   padding:0;
   border:0;
   margin-top:-129px;
   left: 105px;
  
   border-radius:5px;
}
#navigator ul li ul li {


   width:90px;
   height:20px;
}
#navigator ul li ul li a{
	color:black;
	text-decoration: none;
   width:90px;
   height:20px;
}

#navigator ul li:hover ul,
#navigator ul a:hover ul{
   visibility: visible;
}
.content{
width:85%;
height:87%;
position:absolute;
top:11%;
right: 2%;
}
.ifr{
	position: absolute;
	top: 80px;
	width: 84%;
	height: 86%;
	left:200px;
}
</style>
</head>
<body>
	<div id="header">
		<br>
		<br>
		<h1>欢迎${adminUser.username}进入后台管理系统！</h1>
	</div>
	<div id="navigator">
		<ul>
			<li><a class="items">学生管理</a>
				<ul>
					<li><a href="students/AddStudents" >添加学生</a></li>
					<li><a href="students/selectStudents?act=deleteStudents" target="center">删除学生</a></li>
					<li><a href="students/selectStudents?act=updateSelect" target="center">修改学生</a></li>
					<li><a href="students/selectStudents" target="center">查询学生</a></li>
				</ul>
			</li>
			<li><a class="items">宿舍管理</a>
				<ul>
					<li><a href="students/idSelectStudent?act=idSelect" target="center">分类查询</a></li>
				</ul>
			</li>
			<li><a class="items">用户管理</a>
				<ul>
					<li><a href="adminUser/userInfo" target="center">删除用户</a></li>
				</ul>
			</li>
			<li><a class="items">公告管理</a>
				<ul>
					<li><a href="notice/toAddNotice" target="center">添加公告</a></li>
					<li><a href="notice/selectNotice?&act=deleteNotice" target="center">删除公告</a></li>
					<li><a href="notice/selectNotice" target="center">查询公告</a></li>
				</ul>
			</li>
			<li><a class="items" href="exit">安全退出</a></li>
		</ul>
		
	</div>
	<div class="content">
		<iframe class="ifr" src="students/selectStudents"  name="center"  frameborder="0" ></iframe>
	</div>
</body>
</html>


