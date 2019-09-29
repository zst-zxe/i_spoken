<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/26
  Time: 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE>
<html>
<head>
    <meta charset="UTF-8">
    <title>i口语-金币管理中心</title>
    <link rel="stylesheet" type="text/css" href="../../css/myself/style3.css">
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
            <div class="gouwuche fr"><a href="">金币详情</a></div>
            <div class="fr">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/user/information.action?name=${user.username}">个人中心</a></li>
                    <li>|<li>
                    <li><a href="">收藏夹</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!--end header -->
<!-- start banner_x -->

<div class="search fr">
    <form action="" method="post">
        <div class="text fl">
            <input type="text" class="shuru"  placeholder="">
        </div>
        <div class="submit fl">
            <input type="submit" class="sousuo" value="搜索"/>
        </div>
        <div class="clear"></div>
    </form>
    <div class="clear"></div>
</div>
</div>
<!-- end banner_x -->
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx"></div>
            <div class="">
                <ul>
                    <li><a href="" class="l"><img src="/pic/${user.picturename}" width="80px" height="100px"></a></li>
                    <li></li>
                    <li></li>

                    <li style="padding:3px 30px 5px 40px;font-size: 14px;font-family: 黑体">我的金币：${user.userfunds}</li>
                </ul>
            </div>
            <hr style="margin: 15px 0 0 0;" color="#ccc"/>
            <div class="ddzx">服务中心</div>
            <div>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/funds/addFunds_1.action?userid=${user.userid}" class="l">金币充值</a></li>
                    <li><a href="${pageContext.request.contextPath}/funds/funds.action?userid=${user.userid}" class="l">充值记录</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/tobemember_1.action?userid=${user.userid}" class="l">成为会员</a></li>
                    <li><a href="" class="l">会员权限</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="funds">
                <label>详情：</label>
            </div>
            <div class="funds_1">
                <table class="tab" >
                    <tr>
                        <td > <label>用户编号</label></td>
                        <td> <label>订单号</label></td>
                        <td> <label>创建时间</label></td>
                        <td> <label>充值数额</label></td>
                        <td> <label>操作</label></td>
                    </tr>
                    <c:if test="${fundsList!=null}">
                    <c:forEach items="${fundsList}" var="funds">
                    <tr>
                        <td> <label>${funds.userid}</label></td>
                        <td> <label>${funds.fundsid}</label></td>
                        <td> <label>${funds.fundscreatetime}</label></td>
                        <td> <label>${funds.fundsnum}</label></td>
                        <td><a href="${pageContext.request.contextPath}/funds/deleteFunds.action?fundsid=${funds.fundsid}&userid=${funds.userid}">删除</a></td>
                    </tr>
                    </c:forEach>
                    </c:if>
                </table>
            </div>

        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->

<footer class="mt20 center">
    <div class="mt20">举报中心|隐私政策|Select Region</div>
</footer>
</body>
</html>