<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Use JavaBeans</title>
</head>
<body>
    <jsp:useBean id="user" class="ua.edu.npu.model.User"/>
    <jsp:setProperty name="user" property="*"/>
    <jsp:getProperty name="user" property="name" />
    <jsp:getProperty name="user" property="age" />
</body>
</html>
