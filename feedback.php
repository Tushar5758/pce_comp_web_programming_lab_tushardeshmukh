<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Feedback</title>
    <link rel="stylesheet" href="feedback.css" />
    <style>
      /* Additional CSS styles */
      .form-container {
        margin-top: 20px;
      }

      .form-container input[type="text"],
      .form-container textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 16px;
      }

      .form-container textarea {
        height: 100px;
      }
      
      .error {
          color: red;
          font-weight: 400;
          padding: 6px 0;
          font-size: 14px;
      }
      
      /* Styles for rating buttons */
      .ratings-container {
          display: flex;
          justify-content: space-between;
          max-width: 300px;
          margin-bottom: 20px;
      }
      .rating {
          text-align: center;
      }
      .rating img {
          width: 50px;
          height: auto;
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
<?php
session_start();

$nameError = $emailError = $textError = "";
$cname = $email = $text = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $cname = trim($_POST["cname"]);
    $email = trim($_POST["email"]);
    $text = trim($_POST["text"]);

    $isValid = true; 

    if (empty($cname)) {
        $nameError = "Name is required.";
        $isValid = false;
    } elseif (!preg_match("/^[a-zA-Z-' ]*$/", $cname)) {
        $nameError = "Only letters and white space allowed in name.";
        $isValid = false;
    } elseif (strlen($cname) < 3) {
        $nameError = "Name must be at least 3 characters long.";
        $isValid = false;
    }

    if (empty($email)) {
        $emailError = "Email is required.";
        $isValid = false;
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $emailError = "Invalid email format.";
        $isValid = false;
    }

    // if (empty($text)) {
    //     $textError = "Feedback is required.";
    //     $isValid = false;
    // } elseif (strlen($text) > 200) {
    //     $textError = "Feedback cannot exceed 200 characters.";
    //     $isValid = false;
    // }
    try {
        if (empty($text)) {
            $isValid = false;
            throw new Exception("Feedback is required.");
           
        } elseif (strlen($text) > 200) {
            $isValid = false;
            throw new Exception("Feedback cannot exceed 200 characters.");
            
        }
       
    } catch (Exception $e) {
        $textError = $e->getMessage();
        
    }
    
    

    if ($isValid) {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "evcharge";

        $conn = new mysqli($servername, $username, $password, $database);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        // $hash=password_hash($email,PASSWORD_BCRYPT); 

        $stmt = $conn->prepare("INSERT INTO feedback (name,email,text) VALUES (?, ?, ?)");
        if ($stmt === false) {
            die("Error preparing statement: " . $conn->error);
        }
        $stmt->bind_param("sss",$cname,$email,$text);

        if ($stmt->execute()) {
            $_SESSION['success'] = "Feedback submitted successfully.";
            $_SESSION['cname'] = $cname; 
            header('Location: thanks.php');
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
}
?>
<div class="centered-content">
    <div id="panel" class="panel-container">
        <h3>Your Voice Matters:<br />Enhance Your EV Charging Experience</h3>
        <div class="form-container">
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <input type="text" id="name" name="cname" placeholder="Your Name" value="<?php echo htmlspecialchars($cname); ?>"/>
                <span class="error"><?php echo $nameError;?></span>
                
                <input type="text" id="email" name="email" placeholder="Your Email" value="<?php echo htmlspecialchars($email); ?>"/>

                <span class="error"><?php echo $emailError;?></span>
                
                
                
                <textarea id="suggestion" name="text" placeholder="Any suggestions or comments?"><?php echo htmlspecialchars($text); ?></textarea>
                <span class="error"><?php echo $textError;?></span>
                <br /><br/>
                
                <input type="submit" class="btn" id="send" name="submit" value="Send Feedback">
            </form>
        </div>
        
        <br />
        <video id="s" width="400" height="200" controls>
            <source src="car.mp4" type="video/mp4">
            <track label="English" kind="subtitles" srclang="en" src="eng.vtt" default>
        </video>
    </div>
</div>
</body>
</html>