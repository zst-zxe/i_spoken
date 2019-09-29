<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/17
  Time: 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script type="text/javascript">
        var t = 5;
        setInterval("showtime()",1000)
        function showtime() {
            if(t==0){
                window.location.href="login.jsp";
            }
            document.getElementById('show').innerHTML="哟，还没登录了，"+ t + "  秒后带你去登录哈";
            t--;

        }
    </script>
</head>
<body style="background-color: #AACCFF">
<br><br>
<div align="center">
    <div style="width: 563px;height: 303px;background: transparent;background-color: #ffffff" >
        <img src="../../img/jump.PNG" width="562px" height="302px"/>
    </div><br><br>
    <div id="show" style="font-size: 14px;"/>
</div>
</body>
</html>
