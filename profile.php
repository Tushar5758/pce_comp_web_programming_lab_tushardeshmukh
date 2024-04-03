<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Profile page</title>
        <link rel="stylesheet" type="text/css" href="profile.css">
    </head>
    <body style="padding-top: 50px; font-family: arial;">
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
        <?php
            session_start();
            $uname=$_SESSION['username'];

            // Database connection
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "evcharge";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            
            // Fetching data
            $sql = "SELECT * FROM users WHERE username='$uname'"; //username
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                $userData = $result->fetch_assoc();
            } else {
                echo "0 results";
            }

            $conn->close();
         ?>
        <div id="con">
            <div id="container">
                <div id="profile">
                    <div id="p_img">
                        <img src="s.jpg" alt="profile">
                        <h1><?php echo $userData['username']; ?></h1>
                    </div>
                    <br>
                    <div id="details">
                        <h2>Personal Details</h2>
                        <p>Name:<?php echo $userData['fullName']; ?></p>
                        <p>Gender:<?php echo $userData['gender']; ?></p>
                        <br>
                        <h2>Contact</h2>
                        <p>Phone No.:<?php echo $userData['phoneno']; ?></p>
                        <p>E-mail:<?php echo $userData['email']; ?></p>
                    </div>
                </div><br>
            </div>
        </div>
    </body>
</html>

