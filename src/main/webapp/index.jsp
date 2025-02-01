<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<header>
     task - Recipe Project
</header>

<div class="container">
    <h2>Find Recipe Based on Ingrident</h2>
    <form action="search.jsp" method="post">
        <label for="ingredients">Enter Ingredient name (single ingrident only multiple seperated but as per database for now because of logic written):</label>
        <input type="text" id="ingredients" name="ingredients" required placeholder="e.g.,tomato, cheese,milk">
        
        <label for="diet">Diet choice ( if any):</label>
        <select id="diet" name="diet">
            <option value="">No Preference</option>
            <option value="Vegetarian">Vegetarian</option>
            <option value="Gluten-Free">Gluten-Free</option>
            <option value="None">No Restriction</option>
        </select>

        <label for="difficulty">Difficulty Level (optional):</label>
        <select id="difficulty" name="difficulty">
            <option value="">Any</option>
            <option value="Easy">Easy</option>
            <option value="Medium">Medium</option>
            <option value="Hard">Hard</option>
        </select>

        <button type="submit">Search for Recipe available</button>
    </form>
</div>

<footer>
    &copy;  Stack used Java JSP, Servlet & JDBC , HTML/CSS- Frontend
</footer>

</body>
</html>