<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:include page="header.jsp" />
    <%--<%= headerInt %>--%>
    <%@ include file="footer.jsp"%>
    <%= footerInt %>
    <jsp:forward page="errorPage.jsp" />
</body>
</html>
