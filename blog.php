<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>blog</title>
  
    <style>
        /* CSS styles for the body */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(135deg, #a8edcd 0%, #fed6e3 100%);
            color: #333;
        }

        /* Padding for the main content */
        #con{
            padding-top: 60px;
        }

        /* Styling for the header */
        #header {
            background-color: #4CAF50;
            padding: 10px;
            text-align: center;
            color: white;
        }

        /* Styling for the main content */
        #main {
            text-align: center;
            margin: 50px;
            border: 2px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            background-color: #ecf9f2;
        }

        /* Styling for the heading */
        h2 {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Styling for action buttons */
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .action-button {
            background-color: #45a049;
            color: white;
            font-size: 18px;
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        /* Hover effect for action buttons */
        .action-button:hover {
            background-color: #3f8742;
        }

        /* Styling for the navigation bar */
        
    </style>
</head>
<body>
    <div id="navbar-placeholder"></div>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        fetch('navbar.html')
            .then(response => response.text())
            .then(data => {
                document.getElementById('navbar-placeholder').innerHTML = data;
            });
    });
    </script>
    <!-- Main Content Section -->
    <div id="con">
        <!-- Header Section -->
        <div id="header">
            <!-- Title of the Blog -->
            <h1>Blog</h1>
        </div>

        <!-- Main Content Area -->
        <div id="main">
            <!-- Heading for the Blog Section -->
            <h2>Blog</h2>
            
            <!-- Action Buttons for Creating and Reading Blogs -->
            <div class="action-buttons">
                <!-- Button to create a new blog -->
                <button class="action-button" onclick="location.href='blogwrite.html'">Create a Blog</button>
                
                <!-- Button to read existing blogs -->
                <button class="action-button" onclick="location.href='blogread.php'">Read a Blog</button>
            </div>
        </div>
    </div>
</body>
</html>
