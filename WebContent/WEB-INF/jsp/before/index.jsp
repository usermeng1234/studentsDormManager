<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>首页</title>
<style type="text/css">
body {
	width: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	color: #ccc;
	font-size: 14px;
}

.header {
	width: 100%;
	height: 95px;
	color: white;
	background-image: url("images/before/bg1.png");
	position: relative;
}

.imgs {
	margin-left: 20px;
}

.btnbox {
	position: absolute;
	width: 100px;
	height: 30px;
	right: 25px;
	top: 3px;
}

.btn1 {
	border: 0;
	background-color: white;
}

.loginT {
	color: black;
	font-size: 12px;
}

.nav {
	width: 80%;
	margin: 0 auto;
	height: 40px;
}

.nav ul {
	width: 600px;
	margin: 0 auto;
}

.nav ul li {
	width: 40px;
	float: left;
	display: block;
	margin-top: 10px;
	margin-left: 40px;
}

.nav ul li a {
	font-size: 16px;
	color: gray;
	text-decoration: none;
}

.box {
	display: flex;
	flex-direction: row;
}

.text {
	width: 10%;
	height: 750px;
}

.text1 {
	width: 10%;
	height: 750px;
}

.content {
	width: 80%;
	height: 750px;
	border-left: 3px solid #ccc;
	border-right: 3px solid #ccc;
	margin: 0 auto;
}

.boot {
	width: 100%;
	height: 90px;
	display: flex;
	background-color: #4C4C4C;
	flex-direction: row;
}

.boot img {
	margin-top: 20px;
	margin-left: 200px;
}

.footerText {
	margin-left: 350px;
	width: 500px;
	height: 80px;
	color: white;
	font-size: 8px;
}

.footerText span {
	color: #ccc;
	font-size: 8px;
}
/*背景层*/
#popLayer, #popLayer1 {
	display: none;
	background-color: #B3B3B3;
	position: absolute;
	width: 100%;
	height: 900px;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 10;
	-moz-opacity: 0.6;
	opacity: .60;
	filter: alpha(opacity = 80); /* 只支持IE6、7、8、9 */
}

/*弹出层*/
#popBox, #popBox1 {
	display: none;
	background-color: #FFFFFF;
	z-index: 11;
	width: 400px;
	height: 400px;
	position: fixed;
	border-radius: 5px;
	top: 0;
	right: 0;
	left: 0;
	bottom: 0;
	margin: auto;
}

#popBox .close {
	text-align: right;
}

#popBox1 .close {
	text-align: right;
}

/*关闭按钮*/
#popBox .close a {
	text-decoration: none;
	color: #2D2C3B;
}

#popBox1 .close a {
	text-decoration: none;
	color: #2D2C3B;
}

span {
	color: black;
}

.images {
	width: 20px;
	height: 20px;
	margin-right: 2px;
	margin-top: 2px;
}

.frombox {
	margin: 100px auto;
	width: 300px;
	height: 150px;
}

.loginIco {
	width: 20px;
	height: 20px;
}

#usernames, #passwords,#passwordss,#email{
	width: 200px;
	height: 20px;
	border-radius: 5px;
	margin-left: 40px;
}

.btn {
	width: 100px;
	height: 30px;
	border: 0;
	border-radius: 5px;
	margin-left: 30px;
	margin-top: 20px;
}

.text1 {
	margin-left: 5px;
	color: red;
}
.text1 p{
	color: gray;
}

.lookimg {
	width: 13px;
	height: 13px;
	line-height: 15px;
}

.dropdown {
	position: relative;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	width: 170px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 999;
	word-break: break-all;
	color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>

	<div class="header">
		<img class="imgs" alt="" src="images/before/header.png">
		<div class="btnbox">
			<input class="btn1" type="button" name="popBox" value="登录"
				onclick="popBox()"> <input class="btn1" type="button"
				name="popBox1" value="注册" onclick="popBox1()">
			<p class="loginT">欢迎用户:${msg}</p>
		</div>
		
		
		<!-- 登录 -->
		<div id="popLayer"></div>
		<div id="popBox">
			<div class="close">
				<a href="javascript:void(0)" onclick="closeBox()"><img
					class="images" alt="" src="images/before/close.png"></a>
			</div>
			<jsp:useBean id="user" class="com.po.User" scope="request" />
			<div class="frombox">
				<form:form action="before/login" modelAttribute="user" method="post">

					<table class="right">

						<tr>

							<td><img class="loginIco" alt=""
								src="images/admin/login.png"> <form:input path="usernames"
									cssClass="textSize" value="请输入用户名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style ="#999;" /></td>
						</tr>
						<tr>

							<td><span><img class="loginIco" alt=""
									src="images/admin/mima.png"></span> <form:password
									path="passwords" cssClass="textSize" maxlength="20" /></td>
						</tr>
						<tr>
							<td colspan="2"><input class="btn" type="button" value="登录"
								onclick="gogo()"> <input class="btn" type="reset"
								value="重置" onclick="cancel()"></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
		
		
		<!-- 注册 -->
		<div id="popLayer1"></div>
		<div id="popBox1">
			<div class="close">
				<a href="javascript:void(0)" onclick="closeBox()"><img
					class="images" alt="" src="images/before/close.png"></a>
			</div>
			<jsp:useBean id="user1" class="com.po.User" scope="request" />
			<div class="frombox">
				<form:form action="before/register" modelAttribute="user1"
					method="post">

					<table class="right">

						<tr>

							<td><img class="loginIco" alt=""
								src="images/admin/login.png"> <form:input path="usernames"
									cssClass="textSize" value="请输入用户名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style ="#999;"/></td>
						</tr>
						<tr>

							<td><span><img class="loginIco" alt=""
									src="images/before/close1.png"></span> <form:password
									path="passwords" cssClass="textSize"  maxlength="20" /></td>
						</tr>
						<tr>

							<td><span><img class="loginIco" alt=""
									src="images/before/close2.png"></span> <form:password
									path="passwordss" cssClass="textSize"  maxlength="20" /></td>
						</tr>
						<tr>

							<td><span><img class="loginIco" alt=""
									src="images/before/email.png"></span> <form:input
									path="email" cssClass="textSize" value="请输入邮箱地址" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style ="#999;" maxlength="20" /></td>
						</tr>
						<tr>
							<td colspan="2"><input class="btn" type="submit" value="注册"> <input class="btn" type="reset"
								value="重置" onclick="cancel()"></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>

	</div>
	<div class="nav">
		<ul>
			<li><a href="students/AddStudents">添加</a></li>
			<li><a href="">查询</a></li>
			<li><a href="">查询</a></li>
			<li><a href="">查询</a></li>
			<li><a href="">查询</a></li>
		</ul>
	</div>
	<div class="box">
		<div class="text"></div>
		<div class="content"></div>
		<div class="text1">
			宿舍公告请同学们注意:
			<c:forEach items="${noticelist}" var="noticeall">
				<div class="dropdown">
					<p>
						<img class="lookimg" alt="查看" src="images/before/look.png">${noticeall.title}</p>
					<div class="dropdown-content">
						<div>${noticeall.notice}</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>

	<div class="boot">
		<div>
			<img alt="" src="images/before/footer-logo.png">
		</div>
		<div class="footerText">
			<p>
				<span>地址：云南省曲靖市经济技术开发区三江大道 !</span><span> 邮编：655011</span>
			</p>
			<p>
				<span>滇ICP备13002817 | </span><span> 滇公网安备53030102000103号</span>
			</p>
			<p>
				<span>技术支持：曲靖师范学院信息与教育技术中心</span>
		</div>

	</div>
	<script>
		/*点击弹出按钮*/
		function popBox() {
			var popBox = document.getElementById("popBox");
			var popLayer = document.getElementById("popLayer");
			popBox.style.display = "block";
			popLayer.style.display = "block";
		};
		function popBox1() {
			var popBox1 = document.getElementById("popBox1");
			var popLayer1 = document.getElementById("popLayer1");
			popBox1.style.display = "block";
			popLayer1.style.display = "block";
		};

		/*点击关闭按钮*/
		function closeBox() {
			var popBox = document.getElementById("popBox");
			var popLayer = document.getElementById("popLayer");
			popBox.style.display = "none";
			popLayer.style.display = "none";
			var popBox1 = document.getElementById("popBox1");
			var popLayer1 = document.getElementById("popLayer1");
			popBox1.style.display = "none";
			popLayer1.style.display = "none";
		}
		//确定按钮
		function gogo() {
			document.forms[0].submit();
		}
		
		//取消按钮
		function cancel() {
			document.forms[0].action = "";
		}
	</script>
</body>
</html>
