<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Predeclared variables</title>
</head>
<body>
    <p>
        Method
        <%= request.getMethod()%>
    </p
    <p>
        Session attribute data
        <%= session.getAttribute("data")%>
    </p>
    <p>
        Server info
        <%= session.getServletContext()%>
    </p>
    <p>
        servletContext data
        <%= session.getServletContext().getAttribute("data")%>    </p>
</body>
</html>
