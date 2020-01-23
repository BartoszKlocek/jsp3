<%--
  Created by IntelliJ IDEA.
  User: bartosz
  Date: 22.01.2020
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Witaj</title>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="container">
    <div class="brake">
    </div>
    <div class="row" style="font-size: 60px; text-align: center; margin-top: 10px;">
        <% String name = request.getParameter("uname");
            out.print("Witaj " + name);
        %>
    </div>

    <div class="brake">
    </div>

    <div class="row" style="font-size: 60px; text-align: center; margin-top: 10px;">
        <%
            if (name.equals("google")) {
                response.sendRedirect("http://www.google.com");
            }%>
    </div>

</div>
<jsp:forward page="redirected.jsp">
    <jsp:param name="parametr" value="wartoscparametru"/>

</jsp:forward>
</body>
</html>
