<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Registration Form</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="reg.css">
</head>
<body>
<script>
function data() {
    var a = document.getElementById("fullName").value;
    var b = document.getElementById("username").value;
    var c = document.getElementById("email").value;
    var d = document.getElementById("phoneNumber").value;
    var e = document.getElementById("password").value;
    var f = document.getElementById("confirmPassword").value;
    var unamePattern = /^\w{3,20}$/;
    var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (a == "" || b == "" || c == "" || d == "" || e == "" || f == "") {
        alert("Please enter all details");
        return false;
    } else if (!emailPattern.test(c)) {
        alert("Please enter a valid email address");
        return false;
    } else if (d.length != 10) {
        alert("Enter a valid phone number");
        return false;
    } else if (isNaN(d)) {
        alert("Please enter a valid number");
        return false;
    } else if (e !== f) {
        alert("Passwords do not match");
        return false;
    } else if (!unamePattern.test(b)) {
        alert("Username must be 3-20 characters long and cannot include special characters");
        return false;
    } else {
        return true;
    }
}
</script>

<div class="container">
    <h1 class="form-title">Registration</h1>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" onsubmit="return data()">
        <div class="main-user-info">
            <div class="user-input-box">
                <label for="fullName">Full Name</label>
                <input type="text" id="fullName" name="fullName" placeholder="Enter Full Name" required/>
            </div>
            <div class="user-input-box">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter Username" required/>
            </div>
            <div class="user-input-box">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required/>
            </div>
            <div class="user-input-box">
                <label for="phoneNumber">Phone Number</label>
                <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Enter Phone Number" required/>
            </div>
            <div class="user-input-box">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required/>
            </div>
            <div class="user-input-box">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required/>
            </div>
        </div>
        <div class="gender-details-box">
            <span class="gender-title">Gender</span>
            <div class="gender-category">
                <input type="radio" name="gender" id="male" value="male" checked>
                <label for="male">Male</label>
                <input type="radio" name="gender" id="female" value="female">
                <label for="female">Female</label>
            </div>
        </div>
        <div class="form-submit-btn">
            <input type="submit" value="Register" name="submit">
        </div>
    </form>
</div>

<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "evcharge";

// Create database connection
$conn = mysqli_connect($server, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    // Sanitize and assign variables
    $fname = mysqli_real_escape_string($conn, $_POST["fullName"]);
    $user = mysqli_real_escape_string($conn, $_POST["username"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $phnno = mysqli_real_escape_string($conn, $_POST["phoneNumber"]);
    $pass = mysqli_real_escape_string($conn, $_POST["password"]);
    $gender = mysqli_real_escape_string($conn, $_POST["gender"]);
    
    // Hash the password
    $hash = password_hash($pass, PASSWORD_DEFAULT);
    
    // Insert into database using prepared statement
    $stmt = $conn->prepare("INSERT INTO users (`fullName`, `username`, `email`, `phoneno`, `password`, `gender`) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $fname, $user, $email, $phnno, $hash, $gender);
    
    if ($stmt->execute()) {
        // Registration successful
        $stmt->close();
        $conn->close();
        // Redirect to login.php
        echo "<script> window.location = 'login.php';</script>";
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }
    
    $stmt->close();
}
$conn->close();
?>
</body>
</html>
