<%--
  Created by IntelliJ IDEA.
  User: maxim
  Date: 23/02/2021
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl">

<head>
    <title>Overzicht</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body>

<header>
    <nav>
        <ul>
            <li>
                <a href="index.html">Home</a>
            </li>
            <li>
                <a href="toevoegen.html">Toevoegen</a>
            </li>
            <li>
                <a class="active" href="overzicht.html">Overzicht</a>
            </li>
        </ul>
    </nav>
</header>

<div class="container">
    <h1>Uw auto's:</h1>
    <p>Filter op jaar:
        <select id="filter">
            <option value="Oudste eerst">Oudste eerst</option>
            <option value="Nieuwe eerst">Nieuwe eerst</option>
            <option value="Voor 2000">Voor 2000</option>
            <option value="Na 2000">Na 2000</option>
        </select>
    </p>
    <table>
        <tr>
            <th>Automerk</th>
            <th>Bouwjaar</th>
            <th>Pas aan</th>
            <th>Manueel</th>
        </tr>
        </tr>
        <tr>
            <td>Nissan 240SX</td>
            <td>1997</td>
            <td><a href="#">Edit</a></td>
            <td>Ja</td>
        </tr>
        <tr>
            <td>Audi A7</td>
            <td>2013</td>
            <td><a href="#">Edit</a></td>
            <td>Nee</td>
        </tr>
        <tr>
            <td>BMW M3</td>
            <td>2009</td>
            <td><a href="#">Edit</a></td>
            <td>Ja</td>
        </tr>
        <tr>
            <td>Tesla Model S</td>
            <td>2018</td>
            <td><a href="#">Edit</a></td>
            <td>Nee</td>
        </tr>
        <tr>
            <td><%=request.getParameter("automerk")%></td>
            <td><%=request.getParameter("bouwjaar")%></td>
            <td><a href="#">Edit</a></td>
            <td><%=request.getParameter("type")%></td>
        </tr>
    </table>

    <div class="grid2">

    </div>
</div>

<footer>
    <p>Author: Maxime Scholiers<br>
        <a href="mailto:maxime.scholiers@student.ucll.be">maxime.scholiers@student.ucll.be</a>
    </p>
</footer>

</body>


</html>
