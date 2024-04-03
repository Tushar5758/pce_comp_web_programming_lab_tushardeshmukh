<?php
session_start(); // Start the session at the very beginning

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "evcharge";

    // Create database connection
    $conn = new mysqli($server, $username, $password, $database);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Sanitize and assign variables
    $uname = $conn->real_escape_string(trim($_POST["username"]));
    $pass = trim($_POST["password"]);

    // Prepare SQL query to select user from database
    $stmt = $conn->prepare("SELECT password FROM users WHERE username = ?");
    $stmt->bind_param("s", $uname);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $user_data = $result->fetch_assoc();
        
        // Verify password
        if (password_verify($pass, $user_data["password"])) {
            $_SESSION['username'] = $uname;
            header('Location: profile.php');
            exit();
        } else {
            $login_error = "Invalid username or password.";
        }
    } else {
        $login_error = "Invalid username or password.";
    }

    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
<div class="wrapper">
    <!-- Form now submits to itself using htmlspecialchars on PHP_SELF to avoid XSS attacks -->
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
        <h1>Login</h1>
        <?php if (!empty($login_error)) echo "<p style='color:red;'>$login_error</p>"; ?>
        <div class="input-box">
            <input type="text" placeholder="Username" required name="username">
        </div>
        <div class="input-box">
            <input type="password" placeholder="Password" required name="password">
        </div>
        <button type="submit" class="btn" name="submit">Login</button>
        <div class="register-link">
            <p>Don't have an account? <a href="reg.php">Register</a></p>
        </div>
    </form>
</div>
</body>
</html>
