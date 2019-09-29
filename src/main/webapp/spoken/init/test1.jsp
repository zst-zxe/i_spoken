<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/7
  Time: 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>${msg}</div>
<div>
    <table border="1">
        <tr>
            <td>id</td>
            <td> 姓名</td>
            <td> 联系电话</td>
            <td>Email</td>
            <td>性别 </td>
            <td>金币</td>
            <td>创建时间 </td>
            <td>是否会员 </td>
        </tr>
        <tr>
            <td ><input name="userid" type="hidden" value="${user.userid}"></td>
            <td ><input name="username" type="text" value="${user.username}"></td>
            <td ><input name="userphone" type="text" value="${user.userphone}"></td>
            <td ><input name="useremail" type="text" value="${user.useremail}"></td>
            <td>
                <c:if test="${user.usersex==0}">
                <input name="usersex" type="text" value="女"/>
                </c:if>
                <c:if test="${user.usersex==1}">
                 <input name="usersex" type="text" value="男">
                </c:if>
            </td>
            <%--<td><input type="text" name="createtime"
                       value="<fmt:formatDate value="${user.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>" /></td>--%>
            <td ><input name="userfunds" type="text" value="${user.userfunds}"></td>
            <td ><input name="usercreatetime" type="text" value="${user.usercreatetime}"></td>

            <td >
                <c:if test="${user.ismember == 1}">
                <input name="ismember" type="text" value="会员">
                </c:if>
                <c:if test="${user.ismember != 1}">
                <input name="ismember" type="text" value="非会员">
                </c:if>
            </td>
        </tr>

    </table>
</div>
</body>
</html>
