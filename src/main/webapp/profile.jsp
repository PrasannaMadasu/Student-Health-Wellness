<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        /* Basic styling for the profile page */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/building.jpg'); /* Add your background image path here */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }

        /* Header Styles */
        .header-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            background-color: rgba(0, 26, 87, 0.9);
            color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .logo-container img {
            height: 60px;
        }

        h1 {
            margin: 0;
            font-size: 28px;
        }

        .heading-container h2 {
            color: white; /* Change color to white */
            text-decoration: none; /* Remove underline */
            margin: 0; /* Ensure no default margins */
            font-size: 22px;
            font-weight: normal;
        }

        .content {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* More opaque background for content */
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
        }

        h2 {
            color: #0047ab;
            border-bottom: 2px solid #0047ab;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .profile-info {
            margin-top: 20px;
            text-align: center;
        }

        .profile-info img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 20px;
        }

        .profile-info label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            color: #333;
        }

        .profile-info p {
            margin: 0;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #f9f9f9;
        }

        .profile-info button {
            background-color: #0047ab;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 30px;
            display: inline-block;
        }

        .profile-info button:hover {
            background-color: #003080;
        }

        .profile-info a {
            color: #0047ab;
            text-decoration: none;
        }

        .profile-info a:hover {
            text-decoration: underline;
        }

        .profile-info p.error {
            color: red;
        }
        
    </style>
</head>
<body>
    <div class="header-container">
            <div class="logo-container">
                <img src="images/university-logo.png" alt="University Logo" class="logo" />
                <h1>KL UNIVERSITY</h1>
            </div>
            <div class="heading-container">
                <h2>USER PROFILE</h2> <!-- This heading will now be white and without underline -->
            </div>
        </div>
    <div class="content">
        <% 
            // Retrieve user details from session
            String username = (String) session.getAttribute("username");
            String email = (String) session.getAttribute("email");

            if (username != null && email != null) {
        %>
        <div class="profile-info">
            <img src="images/profile_img.jpg" alt="Profile Picture" />
            <label for="username">Username:</label>
            <p id="username"><%= username %></p>
            
            <label for="email">Email:</label>
            <p id="email"><%= email %></p>
            
            <!-- Add more profile information here -->
            
            <button onclick="window.location.href='index1.jsp'">Back to Home</button>
        </div>
        <% 
            } else {
        %>
        <div class="profile-info">
            <img src="images/profile_img.jpg" alt="Profile Picture" />
            <p class="error">User is not logged in. Please <a href="login.jsp">login</a>.</p>
        </div>
        <% 
            }
        %>
    </div>
</body>
</html>
