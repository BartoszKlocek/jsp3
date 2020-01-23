<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: bartosz
  Date: 22.01.2020
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Powitanie</title>
    <head>
        <title>JSP cwiczenia</title>
        <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <%! private int visitCounter=0; %>
    </head>
</head>
<body>
<div id="container">

    <div class="rectangle">

        <div id="logo">
            <% out.print("Czesc wam!"); %>
        </div>

        <div id="date">
            <h1><% DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
                LocalDateTime now = LocalDateTime.now();
                out.print(dtf.format(now));  %></h1>
        </div>
        <div style="clear: both" ;></div>
    </div>

    <div class="square">
        <br>
        <br>
        Licznik odwiedzin:
        <br/>
        <p><%=++visitCounter%></p>
    </div>
    <div class="square">
        TEXT2

    </div>
    <div style="clear: both" ;></div>
</div>

<div class="brake">

</div>

<div class="row">
Podaj imię
    <form action="welcome.jsp">
        <input type="text" name="uname">
        <input type="submit" value="go">
    </form>
    <br/>
    Uwaga, jezeli chcesz wejsc na google.com <br/>
    wpisz "google"

</div>


<div class="brake">

</div>

<div class="row">
    <p>Metoda GET</p>
    <form action="search.jsp" method="get">
        <label>szukane słowo: <input type="text" name="query"></label>
        <br/>
        <label>strona numer: <input type="text" name="page"></label>
        <br/>
        <label>sortowanie: <select name="sort">
            <option value="asc">asc</option>
            <option value="desc">desc</option>
        </select>
        </label>
        <br/>
        <button>wyslij</button>
    </form>
</div>

<div class="brake">

</div>

<div class="row">
    <p>Metoda POST</p>
    <form action="search.jsp" method="post">
        <label>szukane słowo: <input type="text" name="query2"></label>
        <br/>
        <label>strona numer: <input type="text" name="page2"></label>
        <br/>
        <label>sortowanie: <select name="sort2">
            <option value="asc">asc</option>
            <option value="desc">desc</option>
        </select>
        </label>
        <br/>
        <button>wyslij</button>
    </form>
</div>

<div class="brake">

</div>

<div class="row">
    <p>Link z danymi domyślnymi</p>
    <a href="search.jsp?query=JAVA&page=10&name=asc">kliknij mnie</a>
</div>
</body>
</html>
