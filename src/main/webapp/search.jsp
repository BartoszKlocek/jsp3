<%--
  Created by IntelliJ IDEA.
  User: bartosz
  Date: 23.01.2020
  Time: 07:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wynik</title>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
    <%! private int visitCounter = 0; %>
</head>
<body>
<div id="container">
    <div class="brake">
    </div>
    <div class="row" style="text-align: center; margin-top: 10px;">
        <p>Metoda GET</p>
        Parametry wyszukiwania:<br>
        Szukane słowo: <%=request.getParameter("query")%><br/>
        Strona: <%=request.getParameter("page")%>
        <br/>

        Sortowanie:
        <%= "asc".equals(request.getParameter("sort"))? "malejąco" : "rosnąco"%>


    </div>

    <div class="brake">
    </div>

    <div class="row" style="text-align: center; margin-top: 10px;">
        <p>Metoda POST</p>
        Parametry wyszukiwania:<br>
        Szukane słowo: <%=request.getParameter("query2")%><br/>
        Strona: <%=request.getParameter("page2")%>
        <br/>

        Sortowanie:
        <%= "asc".equals(request.getParameter("sort2"))? "malejąco" : "rosnąco"%>


    </div>


</div>
</body>
</html>
