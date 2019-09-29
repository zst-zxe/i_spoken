<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/14
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="../../css/myself/login.css">
    <script type="text/javascript" src="../../js/register.js"></script>
    <script src="../../js/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script >

        $(function () {
            $('#username').blur(function () {
                if($('#username').val()==""){
                    $('#username').css("background","#ff6700");
                    $('#sp_name').text("用户名不能为空");
                }
                else{
                    $('#username').css("background","#fff");
                    $('#sp_name').text("");
                }

            })
            $('#password').blur(function () {
                if($('#password').val()==""){
                    $('#sp_password').text('请输入密码！');
                    $('#password').css("background","#ff6700");
                }
                else{

                    if(checkpassworld($('#password').val().trim())){
                        $('#sp_password').text('');
                        $('#password').css("background","#fff");
                    }
                    else
                    {
                        $('#sp_password').text('请输入有效密码');
                        $('#password').css("background","#ff6700");
                    }

                }

            })
            $('#rpw').blur(function () {
                if($('#rpw').val()==''){
                    $('#rpw').css("background","#ff6700");
                    $('#sp_rpw').text('请确认密码');
                }
                else{
                    if(re_checkpw($('#rpw').val().trim())){
                        $('#sp_rpw').text('');
                        $('#rpw').css("background","#fff");
                    }
                    else{
                        $('#sp_rpw').text('密码不一致');
                        $('#rpw').css("background","#ff6700");
                    }
                }
            })
            $('#phone').blur(function () {
                if($('#phone').val()==''){
                    $('#phone').css("background","#ff6700");
                    $('#sp_phone').text('请填入手机号');
                }
                else{
                    if(re_checkphone($('#phone').val().trim())){

                        $('#phone').css("background","#fff");
                        $('#sp_phone').text('');
                    }
                    else{
                        $('#sp_phone').text('请正确填写手机号码');
                        $('#phone').css("background","#ff6700");
                    }
                }
            })
        })
        function checkpassworld(s){
            var patrn=/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/;
            if(s.length >= 6 && patrn.exec(s)){
                return true;
            }
            else
                return  false;
        }
        function re_checkpw(s) {
            var pw = $('#password').val().trim();
            if(s==pw){
                return true;
            }
            else
                return false;
        }
        function re_checkphone(s) {
            var pattern = /^1[34578]\d{9}$/;
            if(pattern.exec(s)){
                return true;
            }
            else
                return false;
        }
        function checkUser(){
            var mydata  = {"username":$('#username').val(),"userpassword":$('#password').val()}
            $.ajax({

                async:'true',
                url:"${pageContext.request.contextPath}/user/check.action?id=1",
                type:'post',
                data:JSON.stringify(mydata),
                dataType:'json',
                contentType:'application/json',
                success:function (result) {
                    alert("====success:"+result+"====");
                    if(result==null){
                        $('#form').submit();
                        return true;
                    }

                    else
                    {
                        alert("用户已存在，请重新输入用户名");
                        return false;
                    }
                },
                error:function (result) {

                    alert("====error:"+result+"====");
                    if(result==null)
                    {
                        alert("用户已存在，请重新输入用户名");
                        return false;
                    }
                    else
                    {


                        return true;
                    }
                }



            })
            return false;
        }

        function checkEmail(email) {
            var myEmail = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
            if(myEmail.exec(email)){
                return true;
            }
            return false;
        }

    </script>
</head>
<body>
    <div class="regist">
        <form  method="post" action="${pageContext.request.contextPath}/user/regist.action" enctype="multipart/form-data" id="form">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">新用户注册</div>
                <div class="right fr"><a href="index.html" target="_self">i口语</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="regist_main center">
                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input id="username" class="shurukuang" type="text" name="username" placeholder="请输入你的用户名"/><span id="sp_name"></span></div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input id="password" class="shurukuang" type="password" name="userpassword" placeholder="请输入6位以上密码,密码以字母开头"/><span id="sp_password"></span></div>

                <div class="username">确认密码:&nbsp;&nbsp;<input id="rpw" class="shurukuang" type="password" name="repassword" placeholder="确认密码"/><span id="sp_rpw"></span></div>
                <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;<input id="phone" class="shurukuang" type="text" name="userphone" placeholder="请填写正确的手机号"/><span id="sp_phone"></span></div>
                <div class="username">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;<input emai="emai" class="shurukuang" type="email" name="useremail" placeholder="输入正确的邮箱" onblur="return checkEmail(this)"/><span id="sp_email"></span></div>
                <div class="username">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男<input style="width:20px;height:20px ;margin:0 10px 0 10px" type="radio" name="usersex" value="1" checked/>&nbsp;&nbsp;&nbsp;女<input style="width:20px;height: 20px ;margin:0 10px 0 10px" type="radio" type="radio" name="usersex" value="0"/><span id="sp_sex"></span></div>
                <div class="username">设置头像:&nbsp;&nbsp;&nbsp;<input  type="file" name="pic"/></div>
            </div>

        </div>
</form>
        <div class="username" align="center">
            <button class="submit" onclick="return checkUser()">立即登录</button>
        </div>
    </div>


</body>
</html>