<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>登录页面</title>

    <link rel="stylesheet" type="text/css" href="css/style1.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/vector.js"></script>
</head>
<body>

<div id="container">
    <div id="output">
        <div class="containerT">
            <h1>教室申请系统</h1>
            <font color="red">
                <span id="message">${msg}</span>
            </font>
            <form class="form" id="entry_form" action="${pageContext.request.contextPath }/login.action"
                  method="post" onsubmit="return check()">
                <input type="text" id="usercode" name="usercode" placeholder="账号" >
                <input type="password" id="password" name="password" placeholder="密码">
                <center><input type="submit" value="登录"></center>
                <div id="prompt" class="prompt"></div>
            </form>
        </div>
    </div>
</div>

<script>
    // 判断是登录账号和密码是否为空
    function check() {
        var usercode = $("#usercode").val();
        var password = $("#password").val();
        if (usercode == "" || password == "") {
            $("#message").text("账号或密码不能为空！");
            // alert("账号或密码不能为空！");
            return false;
        }
        return true;
    }
</script>
<script type="text/javascript">
    $(function () {
        Victor("container", "output");   //登陆背景函数
    });
</script>
</body>

