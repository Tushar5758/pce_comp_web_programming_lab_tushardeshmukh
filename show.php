<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<?php
            if (headers_sent($file, $line)) {
                echo "Headers already sent in $file on line $line";
            } else {
                session_start();
            }
            ?>
    <style>
            
        body
        {
            background: linear-gradient(135deg, #a8edcd 0%, #fed6e3 100%);
            color: white;
            font-size: 50px;
            text-align: center;
            margin-top: 200px;
        }
        #home
        {
            position:absolute;
            font-size: 30px;
            margin-top: 100px;
            margin-left: 350px;

        }
        #smiley
        {
            top: 0;
            position: absolute;
            margin-top: 30px;
            
        }
        #display
        {
            color: #304D30;;
        }
        
        #faq
        {
            color:#87A922;
        }

    


        
    </style>
    
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
       
        <div id="smiley">

        <canvas id="myCanvas"width="500" height="500"  >
        <script>
        var c = document.getElementById("myCanvas");
        var ctx = c.getContext("2d");
        ctx.beginPath();
        ctx.arc(200,200,80,0,2*Math.PI);
        ctx.stroke();
        ctx.fillStyle = "#FFFF00";
        ctx.fill();
        ctx.beginPath();
        ctx.arc(160,180,10,0,2*Math.PI);
        ctx.stroke();
        ctx.fillStyle = "#964B00";
        ctx.fill();
        ctx.beginPath();
        ctx.arc(240,180,10,0,2*Math.PI);
        ctx.stroke();
        ctx.fillStyle = "#964B00";
        ctx.fill();
        ctx.beginPath();
        ctx.arc(200, 220, 30, 0, Math.PI);
        ctx.stroke();


        </script> 
        


        
        </div>    
        
        <div id="display" > 
       
    
            <?php
                
                $id=$_SESSION['na'];
                echo "Thanks $id for sending a message! ";
            ?>
        </div> 
        <div id="Faq">
            <h3>FAQ</h3>
            <!-- <h4>---------------------------------------</h4> -->
        </div>
       
        <?php  
    // Database configuration  
    $dbHost     = "localhost";  
    $dbUsername = "root";  
    $dbPassword = "";  
    $dbName     = "evcharge";  
    
    // Create database connection  
    $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);  
    
    // Check connection  
    if ($db->connect_error) {  
        die("Connection failed: " . $db->connect_error);  
    }
    // Get message data from database 
    $result = $db->query("SELECT message FROM contact_us"); 
?>

<!-- Display messages with inline styles and series number -->
<?php 
    $counter = 1; // Initialize counter variable
    if($result->num_rows > 0){ ?> 
    <div style="background-color: #304D30; padding-left: 150px;"> 
        <table>
            <?php while($row = $result->fetch_assoc()){ ?> 
                <div style="line-height: 35px; font-size: 30px; color: white;padding-left:0px;">
                    <?php echo $counter . ". " . $row['message']; ?>
                </div>
                <?php $counter++; ?> <!-- Increment counter -->
            <?php } ?> 
        </table>
    </div> 
<?php } else { ?> 
    <p class="status error">not found...</p> 
<?php } ?>




 