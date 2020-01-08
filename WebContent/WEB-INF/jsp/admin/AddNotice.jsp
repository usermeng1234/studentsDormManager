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
<title>addNotice.jsp</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
	.text{
		font-size: 13px;
		color: white;
	}
</style>
</head>
<body>
<jsp:useBean id="notice" class="com.po.Notice" scope="request"/>
	<form:form action="notice/addANotice" method="post" modelAttribute="notice">
		<table border=1 style="border-collapse: collapse">
			<caption>
				<font size=4 face=华文新魏>添加公告</font>
			</caption>
			<tr>
				<td>标题<font color="red">*</font></td>
				<td>
					<form:input path="title"/>
				</td>
			</tr>
			<tr>
				<td>内容<font color="red">*</font></td>
				<td>
					<form:textarea path="notice"/>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="提交"/>
				</td>
				<td align="left">
					<input type="reset" value="重置"/>
				</td>
			</tr>
			
		</table>
		<p class="text">文本框可拖动拉伸</p>
	</form:form>
</body>
</html>
