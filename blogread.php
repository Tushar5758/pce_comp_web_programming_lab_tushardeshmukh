<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read a Blog</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(135deg, #a8edcd 0%, #fed6e3 100%);
            color: #333;
        }

        #con{
            padding-top: 60px;
        }
        #header {
            background-color: #4CAF50;
            padding: 10px;
            text-align: center;
            color: white;
            position: inherit;
        }

        #header a {
            position: absolute;
            top: 10px;
            right: 10px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
        }

        #main {
            text-align: left;
            margin: 50px;
        }

        .blog-content {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            font-size: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

       
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
<div id="con">
        <div id="header">
            <h1>blog</h1>
        </div>
        <div id="main">
            <h2>Read a Blog</h2>
            <?php
            // Establish MySQL connection
            $conn = new mysqli("localhost", "root", "", "evcharge");

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Query to fetch blog posts from MySQL
            $sql = "SELECT * FROM blog";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while($row = $result->fetch_assoc()) {
                    ?>
                    <div class="blog-content">
                        <h3>User: <?php echo $row['uname']; ?></h3>
                        <p>Title: <?php echo $row['btitle']; ?></p>
                        <p><?php echo $row['bcontent']; ?></p>
                        <p>Date: <?php echo $row['bdate']; ?></p>
                        
                        <!-- Like Button -->
                        <button class="like-btn">Like</button>
                        <span class="likes-count">0</span> likes
                        <br><br>
                        <!-- Comment Section -->
                        <textarea class="comment-box" placeholder="Write a comment"></textarea>
                        <button class="comment-btn">Comment</button>
                        <div class="comments-section">
                            <!-- Comments will be displayed here -->
                        </div>
                    </div>
                    <?php
                }
            } else {
                echo "No blog posts found";
            }

            // Close MySQL connection
            $conn->close();
        ?>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            // Like Button Click Event
            $('.like-btn').click(function(){
                var likesCount = parseInt($(this).siblings('.likes-count').text());
                likesCount++;
                $(this).siblings('.likes-count').text(likesCount);
            });

            // Comment Button Click Event
            $('.comment-btn').click(function(){
                var comment = $(this).siblings('.comment-box').val();
                if(comment.trim() !== ""){
                    var commentHtml = '<div class="comment">' + 
                                        '<p class="comment-text">' + comment + '</p>' +
                                      '</div>';
                    $(this).siblings('.comments-section').append(commentHtml);
                    $(this).siblings('.comment-box').val('');
                }
            });
        });
    </script>
</body>
</html>
