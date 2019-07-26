<%@ page import="java.util.Date" %>
<%@ page import="ua.edu.npu.util.Ariphmometr" %><%--
  Created by IntelliJ IDEA.
  User: azbest
  Date: 25.07.19
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%! int i = 4; %>

    <%! private void method() {
        System.out.println("Demo_01 hello 01");
    }%>
    <%= "Demo_01 hello 02"%>
    <br>
    <%= i + 2 %>
    <br>
    <%= new Date() %>
    <br>
    <%= Ariphmometr.add(4.0, 6.0) %>

    <%!
        class User {
            private String name;
            public User(String name) {this.name = name;}
            public String getName() {return this.name;}
            public void setName(String name) {this.name = name;}
        }
        User user = new User("Ned");
    %>
    <br>
    <%= user.getName()%>
</body>
</html>
