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
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
		function confirmDelete(){
  			var n = document.deleteForm.id.length;
  			alert(n);
  			var count = 0;//统计没有选中的个数
  			for(var i = 0; i < n; i++){
  				//checked判断选中与未选中
  				if(!document.deleteForm.id[i].checked){
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
  	  			if(!document.deleteForm.id.checked){
  	  					alert("请选择被删除的学生！");
  	  					return false;
  	  			}
  			}	
  		//显示一个带有指定消息和确认及取消按钮的对话框。如果访问者点击"确定"，此方法返回true，否则返回false。
  			if(window.confirm("真的删除吗？really?")){
  				//把表单数据提交到 Web 服务器 
  				document.deleteForm.submit();
  				return true;
  			}
  			return false;
  		}
		function checkDel(id){
  			if(window.confirm("是否删除该学生？")){
  				window.location.href = "/Dormitory/notice/deleteAnotice?id="+id;
  			}
  		}
	</script>
</head>
<body>

	<c:if test="${noticeall.size() == 0 }"> 
		您还没有公告。
	</c:if>
	<c:if test="${noticeall.size() != 0 }">
	<form action="notice/deleteNotice" name="deleteForm">
		<table border="1" width="1200px" bordercolor="#ffffff">
			<tr>
				<th width="20px" height="50px">ID</th>
				<th width="80px" height="50px">标题</th>
				<th width="125px" height="50px">公告内容</th>
				<th width="10px" height="50px">删除操作</th>
			</tr>
			<c:forEach items="${noticeall}" var="noticeall">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)" height="30px">
					<td><input type="checkbox" name="id" value="${noticeall.id }"/>${noticeall.id }</td>
					<td>${noticeall.title }</td>
					<td>${noticeall.notice}</td>
					<td><a href="javascript:checkDel('${noticeall.id }')">删除</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">
					<input class="btn" type="button" value="删除" onclick="confirmDelete()">
				</td>
			</tr>
		
		</table>
		</form>
	</c:if>
	
	
</body>
</html>