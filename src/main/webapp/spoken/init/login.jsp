<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/16
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css" href="../../css/myself/login.css">
    <script src="../../js/jquery-1.8.1.min.js" type="text/javascript"> </script>
    <script>
        $(function () {
            $('#username').blur(function () {
                if($('#username').val().trim().length<1){
                    $('#sp_name').css("display","inline");
                    $('#sp_name').text("输入正确的用户名");
                    $('#username').val('');
                    $('#username').focus();
                }
                else{
                    $('#sp_name').css("display","none");
                }
            })
            $('#password').blur(function () {
                if($('#password').val().trim().length<1){
                    $('#sp_password').css("display","inline");
                    $('#sp_password').text("请输入正确的密码");
                    $('#password').val('');
                    $('#password').focus();
                }
                else{
                    $('#sp_password').css("display","none");
                }

        })
     })
        function checkForm(){
            var b = false;
            var d = {"username":$('#username').val(),"userpassword":$('#password').val()};
            $.ajax({
                async:'false',
                url:"${pageContext.request.contextPath}/user/check.action?id=2",
                contentType:"application/json",
                type:"post",
                data:JSON.stringify(d),
                dataType:"json",
                success:function (result) {
                    alert("====success:"+result+"===");
                    if(result == null){
                        b =  false;
                        alert("return b" + b);
                        alert("该用户不存在");

                    }
                    else if(result != null){
                        b =   true;
                        alert("return b" + b);
                        $('#form').submit();

                    }
                },
                error:function (result) {
                    alert("====error:"+result+flag+"===");
                    if(result == null){
                        alert("return false");
                      alert("该用户不存在");
                        b =   false;
                    }
                    else if(result != null ){
                        alert("return true");
                            b =   true;
                    }
                }
            });

        }
    </script>s
</head>
<body>
<!-- login -->
<div class="top center">
    <div class="logo left">
        <a href="#" target="_blank"><img src="../../img/logo1.png" alt=""></a>
    </div>
</div>
<div class="form center">
    <div class="login_center">
            <div class="login">
        <div class="login_top">
            <div class="left fl">用户登录</div>
            <div class="right fr">您还没有加入我们？<a href="${pageContext.request.contextPath}/spoken/init/register.jsp" target="_self">赶紧加入</a></div>
            <div class="clear"></div>
            <div class="xian center"></div>
        </div>
        <div class="login_main center">
            <form  method="post" action="${pageContext.request.contextPath}/user/login.action"  id="form">
            <div class="username">用户名:&nbsp;<input class="shurukuang" type="text" name="username" id="username" placeholder="请输入你的用户名"/><span id="sp_name" style="display:inline;font-size: 9px;background: red"></span></div>
            <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input id="password" class="shurukuang" type="password" name="userpassword" placeholder="请输入你的密码"/><span id="sp_password" style="display:inline;font-size: 9px;background: red"></span></div>
            </form>
        </div>
                <div class="username" align="center">
                    <button class="submit" onclick="return checkForm()">立即登录</button>
                </div><br><br>
                <div class="forget">
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/user/forgotpassword.action">忘记密码</a>
                    </span>
                </div>

            </div>
    </div>


</div>


<footer>
    <div class="copyright">常见问题</div>
   <%-- <div class="problem">
        <ul>
            <li></li>
            <li>
                <a href=""><div class="footer_solver">联系客服</div></a>
                <a href=""><div class="footer_solver">问题反馈</div></a>
                <a href=""><div class="footer_solver">账号申诉</div></a>
                <a href=""><div class="footer_solver">常见问题解决</div></a>
            </li>
        </ul>
    </div>--%>

</footer>
</body>
</html>