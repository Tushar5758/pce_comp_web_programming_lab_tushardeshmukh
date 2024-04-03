<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You!</title>
    <style>
        body {
            background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
            font-family: Arial, sans-serif;
            /* Sets a readable, widely supported font */
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .thank-you-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            /* Adds a subtle shadow for depth */
            max-width: 600px;
        }

        p,
        strong {
            font-size: 20px;
            /* Larger text for readability */
        }

        strong {
            color: #4CAF50;
            /* A green color to signify success */
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            /* Match the strong color */
            color: white;
            /* White text on the button */
            text-decoration: none;
            border-radius: 5px;
            /* Rounded corners for the button */
            font-size: 18px;
        }

        a:hover {
            background-color: #45a049;
            /* A slightly darker green on hover */
        }

        .logout-button {
            background-color: #f44336;
            /* Red color for the logout button */
            position: absolute;
            /* Absolute positioning */
            top: 20px;
            right: 20px;
        }
    </style>
</head>

<body>

    <div class="thank-you-container">
        <?php
        session_start();

        // Database connection
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "evcharge";
        $conn = new mysqli($servername, $username, $password, $database);

        // Check the connection
        if ($conn->connect_error) {
            die ("Connection failed: " . $conn->connect_error);
        }

        if (isset ($_SESSION['success'])) {
            $cname = $_SESSION['cname'];

            $stmt = $conn->prepare("SELECT name, email FROM feedback WHERE name = ? ORDER BY id DESC LIMIT 1");
            if (!$stmt) {
                die ("Prepare failed: " . $conn->error);
            }

            $stmt->bind_param("s", $cname);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                echo "<p>Name: " . htmlspecialchars($row["name"]) . "<br/>Email: " . htmlspecialchars($row["email"]) . "</p>";
            } else {
                echo "<p>No feedback record found.</p>";
            }

            $stmt->close();
            $conn->close();

            echo "<strong>Thank you, $cname!</strong><p>We'll use your feedback to improve our customer support performance.</p>";
        } else {
            header('Location: feedback.php');
            exit;
        }
        ?>
        <a href="feedback.php">Submit another feedback</a>
        <a href="logout.php" class="logout-button">Logout</a>
    </div>

</body>

</html>
