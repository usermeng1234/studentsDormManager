<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <title>用户登录</title>
    <link href="lib/easyui/themes/metro-blue/easyui.css" rel="stylesheet" />
    <link href="lib/easyui/themes/icon.css" rel="stylesheet" />
    <script src="lib/easyui/jquery.min.js"></script>
    <script src="lib/easyui/jquery.easyui.min.js"></script>
    <script src="lib/easyui/locale/easyui-lang-zh_CN.js"></script>
    <style>
        html, body
        {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }

        h1
        {
            color: rgb(128, 128, 128);
            text-align: center;
        }

        a:link, a:hover, a:visited, a:active
        {
            color: rgb(128, 128, 128);
            text-decoration: none;
        }

        form
        {
            width: 400px;
            min-width: 400px;
            position: absolute;
            left: 40%;
            top: 15%;
            margin: 0;
            padding: 30px;
            background-color: white;
            border: 2px solid rgba(128, 128, 128, 0.2);
            border-radius: 10px;
        }

            form div
            {
                margin-bottom: 10px;
            }
    </style>
</head>
<body>
    <form action="login" method="post">
        <div>
            <h1>用户登录</h1>
        </div>
        <div>
            <input class="easyui-textbox" data-options="iconCls:'icon-man',iconWidth:30,iconAlign:'left',prompt:'用户名'" style="width:100%;height:35px;" />
        </div>
        <div>
            <input class="easyui-passwordbox" data-options="iconWidth:30,iconAlign:'left',prompt:'密码'" style="width:100%;height:35px;" />
        </div>
        <div>
            <input class="easyui-checkbox" label="记住密码" labelPosition="after" labelWidth="70" />
        </div>
        <div>
            <input class="easyui-linkbutton" type="submit" value="登陆" style="width:100%;height:35px;" />
        </div>
        <div>
            <div style="display:inline;">
                <a href="javascript:void(0)">还未注册？</a>
            </div>
            <div style="display:inline;margin-left:170px;">
                <a href="javascript:void(0)">忘记密码？</a>
            </div>
        </div>
    </form>
</body>
</html>