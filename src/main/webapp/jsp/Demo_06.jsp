<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SpEL</title>
</head>
<body>
    ${requestScope.user.name}
    ${requestScope.user["age"]}
    <br>
    ${sessionScope.allusers[1].name}
    ${allusers[1].age < 30}
</body>
</html>
