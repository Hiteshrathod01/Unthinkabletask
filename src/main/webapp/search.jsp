<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
   <%@ include file="dbconnect.jsp" %>
   
   


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<header>
    Recipe Results
</header>
<div style="text-align: center; margin-top: 20px;">
    <a href="alternatives.jsp" style="
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        color: white;
        background-color: #ff9800;
        text-decoration: none;
        border-radius: 5px;
        box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        font-weight: bold;
    ">Find Alternatives if you don't have that - CLICK HERE</a>
</div>






<div class="container">
    <h2>Recipe Found</h2>

    <%
        String ingredientInput = request.getParameter("ingredients");
        String diet = request.getParameter("diet");
        String difficulty = request.getParameter("difficulty");

            

            String query = "SELECT * FROM recipes WHERE ingredients LIKE ?";
            if (diet != null && !diet.isEmpty()) {
                query += " AND dietary_restriction = ?";
            }
            if (difficulty != null && !difficulty.isEmpty()) {
                query += " AND difficulty = ?";
            }

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + ingredientInput + "%");

            int index = 2;
            if (diet != null && !diet.isEmpty()) {
                ps.setString(index++, diet);
            }
            if (difficulty != null && !difficulty.isEmpty()) {
                ps.setString(index++, difficulty);
            }

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
    %>
                <div class="recipe-card">
                    <h2><%= rs.getString("name") %></h2>
                    <p><strong>Ingredients:</strong> <%= rs.getString("ingredients") %></p>
                    <p><strong>Instructions:</strong> <%= rs.getString("instructions") %></p>
                    <p><strong>Difficulty:</strong> <%= rs.getString("difficulty") %></p>
                    <p><strong>Cooking Time:</strong> <%= rs.getInt("cooking_time") %> mins</p>

                    <div class="nutrition-info">
                        <p><strong>Nutritional Info:</strong></p>
                        <p>Calories: <span><%= rs.getInt("calories") %></span></p>
                        <p>Protein: <span><%= rs.getInt("protein") %>g</span></p>
                        <p>Fat: <span><%= rs.getInt("fat") %>g</span></p>
                        <p>Carbo: <span><%= rs.getInt("carbs") %>g</span></p>
                    </div>
                </div>

    <%
                String suggestionQuery = "SELECT * FROM recipes WHERE dietary_restriction = ? AND id != ? LIMIT 3";
                PreparedStatement psSuggestion = conn.prepareStatement(suggestionQuery);
                psSuggestion.setString(1, rs.getString("dietary_restriction"));
                psSuggestion.setInt(2, rs.getInt("id"));
                ResultSet rsSuggestion = psSuggestion.executeQuery();

                if (rsSuggestion.next()) {
    %>
                    <div class="suggestion-box">
                        <p><strong>Suggested Recipe:</strong> <%= rsSuggestion.getString("name") %></p>
                    </div>
    <%
                }
            } else {
                out.println("<p>No matching recipes found. Try different ingredients.</p>");
            }
        
    %>
</div>




<div class="container">
    <h2>Leave Your Feedback</h2>
    <form method="post" action="feedback.jsp">
        <input type="hidden" name="recipeId">
        <label for="feedback">Your Feedback:</label><br>
        <textarea name="userfeedback" rows="4" cols="50" required></textarea><br>
        <input type="submit" value="Submit Feedback">
    </form>
</div>
 



<footer>
    &copy; task in progres
</footer>

</body>
</html>
   