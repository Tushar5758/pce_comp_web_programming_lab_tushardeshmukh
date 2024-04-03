<?php
session_start();

$name = $_POST["uname"];
$mob = $_POST["uphone"];
$mail = $_POST["umail"];
$message = $_POST["umessage"];
$_SESSION['na'] = $name;

$servername = "localhost";
$username = "root";
$password = "";
$database = "evcharge";

try {
    
    $conn = mysqli_connect($servername, $username, $password, $database);

   
    if (!$conn) {
        throw new Exception("Connection failed: " . mysqli_connect_error());
    }

    
    $sql = "INSERT INTO contact_us (name, phone_number, mail, message) VALUES ('$name', '$mob', '$mail', '$message')";

    
    if (mysqli_query($conn, $sql)) {
        
        header('Location: show.php');
        exit();
    } else {
        throw new Exception("Error: " . mysqli_error($conn));// if if-part is not executed then it return to exception
    }
} catch (Exception $e) {
    
    echo "An error occurred: " . $e->getMessage();
}

// Close connection
mysqli_close($conn);
?>
