<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Custom Web Application</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e8f0fe;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        h2 {
            color: #003366;
        }
        input[type="text"], input[type="number"] {
            padding: 10px;
            margin: 10px 0;
            width: 90%;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        #greeting {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Our Web App!</h2>
        <form id="userForm">
            <input type="text" id="usernameInput" placeholder="Enter your username" required>
            <input type="number" id="idInput" placeholder="Enter your ID" required>
            <br>
            <button type="submit">Submit</button>
        </form>
        <div id="greeting"></div>
    </div>
    <script>
        document.getElementById('userForm').addEventListener('submit', function(event) {
            event.preventDefault();
            var username = document.getElementById('usernameInput').value;
            var id = document.getElementById('idInput').value;
            var greetingDiv = document.getElementById('greeting');
            greetingDiv.textContent = 'Hello, ' + username + ' (ID: ' + id + ')! Welcome to our custom web application.';
        });
    </script>
</body>
</html>
