<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<fmt:setLocale value="${param.locale}"/>
<fmt:setBundle basename="text"/>

<html lang="param.locale">
<head>
    <title><fmt:message key="title"/></title>
</head>
<body>

<c:forEach var="user" items="${allusers}">
    <ul>
        <li><fmt:message key="name"/>: <c:out value="${user.name}"/></li>

        <li><fmt:message key="age"/>: <c:out value="${user.age}"/></li>

        <%--<form method="post" action="<c:url value='/delete'/>">
            <input type="number" hidden name="id" value="${user.id}" />
            <input type="submit" name="delete" value="Видалити"/>
        </form>

        <form method="get" action="<c:url value='/update'/>">
            <input type="number" hidden name="id" value="${user.id}" />
            <input type="submit" value="Редагувати"/>
        </form>--%>
    </ul>
    <hr />

</c:forEach>


<form method="post" action="<c:url value='/addUser'/>">
    <label><input type="text" name="newname"></label><fmt:message key="name"/><br>
    <label><input type="number" name="newage"></label><fmt:message key="age"/><br>
    <input type="submit" name="newuser" value="<fmt:message key="adduser"/>"/>
</form>

</body>
</html>
