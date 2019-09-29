<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/19
  Time: 5:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>i口语-个人中心</title>
    <link rel="stylesheet" type="text/css" href="../../css/myself/style.css">
    <script src="../../js/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="../../js/check.js"></script>
</head>
<body>
<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="">个人中心</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./self_info.html">我的订单</a></li>
                    <li>|<li>
                    <li><a href="">收藏夹</a></li>
                    <li>|<li>
                    <li><a href="">购物车</a></li>

                </ul>
            </div>
        </div>
    </div>

</header>

<!--end header -->
<!-- start banner_x -->
<!-- end banner_x -->
<!-- self_info -->
<div class="grzxbj">
    <!--<div class="selfinfo">-->

    <div>
        <div class="data">我的资料:</div>
        <c:if test="${user.picturename==null}">
            <div class="img"><img src="../../img/5.PNG" width="60px" height="60px"></div>
        </c:if>
        <c:if test="${user.picturename!=null}">
            <div class="img"><img src="/pic/${user.picturename}" width="60px" height="60px"></div>
        </c:if>
        <div class="fr" style="padding-bottom: 15px;margin-right:80px;margin-bottom: 15px">
            <form action="" method="post">
                <div style="display: inline">
                    <input style="font-size: 18px;width: 200px;height: 30px" type="text" class="shuru"  placeholder="输入用户名">
                </div>
                <div style="display: inline">
                    <input style="background-color:orangered;font-size: 18px;width: 40px;height: 30px" type="submit" class="sousuo" value="搜索"/>
                </div>
                <div class="clear"></div>
            </form>
            <div class="clear"></div>
        </div>
    </div>
    <hr class="hr0  ">
    <div>
        <div align="center">
            <div class="rtcont" align="center">
                <form action="${pageContext.request.contextPath}/user/update.action" method="post" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <td><input name="userid" type="hidden" value="${user.userid}"></td>
                        </tr>
                        <tr>
                            <td><label>姓名：</label><input name="username" type="text" class="username" value="${user.username}" id="username"/><span id="sp_name"></span></td>
                            <td><label>联系电话：</label><input name="userphone" class="username" type="text" value="${user.userphone}" id="phone"><span id="sp_phone"></span></td>
                        </tr>
                        <tr>
                            <c:if test="${user.usersex == 0}">
                            <td><label>性别：</label><input name="sex" class="username"type="text" value="女"/></td>
                            </c:if>
                            <c:if test="${user.usersex==1}">
                                <td><label>性别：</label><input name="sex" class="username"type="text" value="男"/></td>
                            </c:if>
                            <td><label>邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</label><input name="useremail" class="username" type="text" value="${user.useremail}" onblue="return checkEmail()"></td>

                        </tr>
                        <tr>
                            <td><label>金币：</label><input class="username" type="text" value="${user.userfunds}" name="userfunds" readonly="readonly"></td>
                            <td>
                                <c:if test="${user.ismember==0}">
                                <label>会&nbsp;&nbsp;&nbsp;&nbsp;员：</label><input class="username" name="member" type="text" value="否" readonly="readonly">
                                </c:if>
                                <c:if test="${user.ismember==1}">
                                    <label>会&nbsp;&nbsp;&nbsp;&nbsp;员：</label><input class="username" name="member" type="text" value="会员" readonly="readonly">
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td><label>更换头像：</label><input type="file" name="picture"></td>
                        </tr>
                    </table>
                    <div class="submit"><input type="submit" value="确定"/></div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>
<!--</div>-->
</div>
<!-- self_info -->

<footer class="mt20 center">
    <div class="mt20">举报中心|隐私政策|Select Region</div>
</footer>
</body>
</html>