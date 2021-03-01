<%--
  Created by IntelliJ IDEA.
  User: maxim
  Date: 23/02/2021
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl">

<head>
    <title>Toevoegen</title>
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
                <a class="active" href="toevoegen.html">Toevoegen</a>
            </li>
            <li>
                <a href="overzicht.html">Overzicht</a>
            </li>
        </ul>
    </nav>
</header>

<div class="container">
    <div class="formulier">
        <form method="GET" action="Servlet" class="formulier2">
            <input type="text" id="automerk" name="automerk" placeholder="Automerk" required>
            <input type="text" id="bouwjaar" name="bouwjaar" placeholder="Bouwjaar" required>
            <textarea id="opmerkingen" name="opmerkingen" placeholder="Opmerkingen" style="height:200px"></textarea>
            <div class="radio">
                <input type="radio" name="type" value="Manueel"> Manueel
            </div>
            <div class="radio">
                <input type="radio" name="type" value="Automaat"> Automaat
            </div>
            <input type="submit" value="Submit">
        </form>
    </div>
</div>

<footer>
    <p>Author: Maxime Scholiers<br>
        <a href="mailto:maxime.scholiers@student.ucll.be">maxime.scholiers@student.ucll.be</a>
    </p>
</footer>

</body>


</html>
