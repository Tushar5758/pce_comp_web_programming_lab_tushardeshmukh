<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Charging Route Planner</title>
    <link rel="stylesheet" href="route.css">
    <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .input-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        #routeForm input[type=text] {
            padding: 10px;
            margin: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #routeForm button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #routeForm button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            font-size: 14px;
        }
   
    /* Styles for the div container holding each station name */
    <style>
.station-list {
    padding: 0;
    margin: 0;
    list-style-type: none; /* Removes the default list bullets */
}

.station-container {
    padding: 10px;
    background-color: #f0f0f0; /* Light grey background */
    border-radius: 5px; /* Rounded corners */
    box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Subtle shadow */
    margin-bottom: 10px; /* Adds space between list items */
    font-size: 18px; /* Larger font size for readability */
    color: #333; /* Dark grey color for the text */
    display: flex;
    align-items: left; /* Vertically center the content */
    .login-button-container {
    display: flex;
    align-items: center;
    padding-right: 20px;
}

.login-button {
    font-size: 18px;
    color: #72c311; /* Match the nav links color */
    background-color: #fff; /* Background color matching the nav bar */
    padding: 10px 20px;
    border-radius: 20px;
    text-decoration: none;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Consistent with nav bar shadow */
    transition: background-color 0.3s ease, color 0.3s ease;
}

.login-button:hover {
    background-color: #72c311; /* Background color on hover */
    color: #fff; /* Text color on hover */
}

}
.btn-map {
    display: inline-block; /* Allows width and height to be set */
    font-size: 20px;
    padding: 15px 20px;
    border: none;
    border-radius: 5px;
    background-color: #4CAF50; 
    color: white;
    text-align: center;
    text-decoration: none; /* Removes underline from links */
    transition: background-color 0.3s, transform 0.2s;
    cursor: pointer; /* Changes mouse cursor to indicate clickable */
}

.btn-map:hover {
    background-color: #45a049; 
    transform: translateY(-2px);
}
</style>

    </style>
    <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
</head>

<body>
<div id="nav">
        <div class="logo">
            <img src="logo.png" alt="ChargingHub Logo">
            <h1>ChargingHub</h1>
        </div>
        <ul class="nav-links">
            <li><a href="index.html" data-audio-src="">Home</a></li>
            <li><a href="about.html" data-audio-src="about_us.mp3">About</a></li>
            <li><a href="news.html" data-audio-src="">News</a></li>
            <li><a href="blog.php"data-audio-src="blog audio.mp3">Blog</a></li>
            <li><a href="route.php" data-audio-src="">Services</a></li>
            <li><a href="contact1.html" data-audio-src="">Contact</a></li>
            <li><a href="feedback.php" data-audio-src="feedback audio.mp3">Feedback</a></li>
            <li><a href="profile.php" data-audio-src="feedback audio.mp3">Profile</a></li>
        </ul>    
        <div class="login-button-container">
            <a href="login.php" class="login-button">Login</a>
        </div>    
    </div>
    <canvas id="carCanvas" height="200"></canvas>


    <div class="header">
        <h1>E-Charging Route Planner</h1>
    </div>
    <div class="input-form">
        <form id="routeForm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post"
            onsubmit="return validateForm()">
            Source: <input type="text" name="source" id="source">
            <span class="error-message" id="source-error"></span><br>
            Destination: <input type="text" name="destination" id="destination">
            <span class="error-message" id="destination-error"></span><br>
            <button type="submit" name="find-route">Find Route</button>
        </form>
    </div>
    <div class="charging-stations">
        <h2>Charging Stations on Route</h2>
        <?php if (!empty ($foundChargingStations)): ?>
            <ul>
                <?php foreach ($foundChargingStations as $stationName): ?>
                    <li>
                        <?php echo htmlspecialchars($stationName); ?>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php elseif ($_SERVER["REQUEST_METHOD"] == "POST"): ?>
            <!-- <p>No charging stations found on the route.</p> -->
        <?php endif; ?>
    </div>

    <button class="btn-map" name="find-route" type="submit" onclick="window.location.href='route.php';">Go to Map</button>
<br/>
    <audio id="audio" src="blog audio.mp3"></audio>
  <?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $servername = "localhost"; // Database server
    $username = "root"; // Database username
    $password = ""; // Database password
    $dbname = "evcharge"; // Database name

    // Create database connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $source = $_POST['source'];
    $destination = $_POST['destination'];

    $stmt = $conn->prepare("SELECT name FROM charge WHERE city IN (?, ?)");
    $stmt->bind_param("ss", $source, $destination);
    $stmt->execute();
    $result = $stmt->get_result();

    $stations = [];
    while ($row = $result->fetch_assoc()) {
        $stations[] = $row['name'];
    }

    $stmt->close();
    $conn->close();
    foreach ($stations as $station) { ?>
        <div class="station-container">
            <li>
      <?php  echo $station;?>
          </li>
        </div>
<?php
    }
    exit;
}
?>



<script>
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("find-route").addEventListener("click", function(event) {
        event.preventDefault(); // Prevent default button behavior

        // Validate form data
        if (validateForm()) {
            var formData = 'source=' + encodeURIComponent(source) + '&destination=' + encodeURIComponent(destination);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '', true); // Post to the same file
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {
                if (xhr.status === 200) {
                    var stations = JSON.parse(xhr.responseText);
                    var listHtml = stations.map(function(station) {
                        return '<li>' + station + '</li>';
                    }).join('');
                    document.getElementById('stations-list').innerHTML = listHtml;
                } else {
                    alert('Request failed.  Returned status of ' + xhr.status);
                }
            };
            xhr.send(formData);
    });
});

function validateForm() {
    var source = document.getElementById("source").value.trim();
    var destination = document.getElementById("destination").value.trim();
    var isValid = true;

    // Reset error messages
    document.getElementById("source-error").textContent = "";
    document.getElementById("destination-error").textContent = "";

    // Add your validation checks here
    // Validation 1: Source and destination must be different
            if (source === destination) {
                document.getElementById("source-error").innerText = "Source and Destination are the same";
                document.getElementById("destination-error").innerText = "Source and Destination are the same";
                return false;
            }

            // Validation 2: Source and destination must not contain number
            else if (numbers.test(source)) {
                document.getElementById("source-error").innerText = "Source cannot contain numbers.";
                if (numbers.test(destination)) {
                    document.getElementById("destination-error").innerText = "Destination cannot contain numbers.";
                }
                return false;
            }

            // Validation 3: Source and destination must have a minimum length of 5 characters
            else if (source.length < 5) {
                document.getElementById("source-error").innerText = "Source must have a minimum length of 5 characters.";
                if (destination.length < 5) {
                    document.getElementById("destination-error").innerText = "Destination must have a minimum length of 5 characters.";
                }
                return false;
            }

            // Validation 4: Source and destination must not be empty
            else if (source === "") {
                document.getElementById("source-error").innerText = "Source cannot be empty.";
                if (destination === "") {
                    document.getElementById("destination-error").innerText = "Destination cannot be empty.";
                }
                return false;
            }

            // // Validation 5: Source and destination must not contain any special characters except spaces
            // else if (specialCharacters.test(source)) {
            //     document.getElementById("source-error").innerText = "Source cannot contain special characters except spaces.";
            //     if (specialCharacters.test(destination)) {
            //         document.getElementById("destination-error").innerText = "Destination cannot contain special characters except spaces.";
            //     }
                return false;
            }


    return isValid;
}
</script>

</body>

</html>