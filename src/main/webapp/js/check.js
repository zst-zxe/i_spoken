
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
        url:"${pageContext.request.contextPath}/user/check.action",
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
}

function checkEmail(email) {
    var myEmail = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
    if(myEmail.exec(email)){
        return true;
    }
    return false;
}
