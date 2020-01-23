<%--
  Created by IntelliJ IDEA.
  User: bartosz
  Date: 22.01.2020
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirected</title>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="container">
    <div class="brake">
    </div>
    <div class="row" style="text-align: center; margin-top: 10px;">
<%--        <p>${pageContext.request.serverName}></p>--%>
<%--        <p>${pageContext.request.serverPort}></p>--%>
<%--        <p>${pageContext.request.requestURI}></p>--%>
        <%= request.getParameter("parametr")%>

    </div>

    <div class="brake">
    </div>



</div>
</body>
</html>
