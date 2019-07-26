<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Data</title>
</head>
<body>
    <jsp:useBean id="user" class="ua.edu.npu.model.User" scope="request" />
    <jsp:getProperty name="user" property="name" />
    <jsp:getProperty name="user" property="age" />
</body>
</html>
