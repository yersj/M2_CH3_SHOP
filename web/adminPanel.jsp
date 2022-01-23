<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 23.01.2022
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
</head>
<body>
<%
       String s=(String) request.getAttribute("username");
%>
    <%@include file="nav.jsp"%>
    <h2>Hello <%=s%></h2>

</body>
</html>
