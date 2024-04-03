<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Charging Route Planner</title>
    <link rel="stylesheet" href="route.css">
    <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <style>
        #map {
            width: 999px;
            height: 999px;
        }

        .leaflet-container {
            width: 100%;
            height: 100%;
        }

        .leaflet-marker-icon {
            border-radius: 50%;
            overflow: hidden;
        }

        .leaflet-marker-icon img {
            width: 100%;
            height: 100%;
        }

        .error-message {
            color: red;
            font-size: 12px;
        }
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
            <li><a href="index.html" >Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="news.html" >News</a></li>
            <li><a href="blog.php">Blog</a></li>
            <li><a href="info.php" >Services</a></li>
            <li><a href="contact1.html">Contact</a></li>
            <li><a href="feedback.php">Feedback</a></li>
            <li><a href="profile.php" >Profile</a></li>
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
        <input type="text" id="source" placeholder="Enter source location"> <span id="source-error"
            class="error-message"></span><br>
        <input type="text" id="destination" placeholder="Enter destination location"> <span id="destination-error"
            class="error-message"></span><br>
        <button id="find-route">Find Route</button>
    </div>
    <div id="route-details">

        <div id="map"></div>
        <audio id="audio" src="news.mp3" </audio>

            <script>

                document.addEventListener("DOMContentLoaded", function () {

                    var audio = document.getElementById("audio");


                    var navLinks = document.querySelectorAll(".nav-links a[href='news.html']");
                    navLinks.forEach(function (link) {
                        link.addEventListener("click", function (event) {
                            event.preventDefault(); // Prevent the default link behavior
                            var targetUrl = this.getAttribute("href"); // Get the href attribute of the clicked link

                            // Play the audio
                            audio.play();

                            // Redirect after a short delay, adjust the delay to match your audio clip length
                            setTimeout(function () {
                                window.location.href = targetUrl;
                            }, 3000); // Delay in milliseconds, adjust according to the length of your audio clip
                        });
                    });
                });




                document.addEventListener('DOMContentLoaded', () => {
                    const canvas = document.getElementById('carCanvas');
                    const ctx = canvas.getContext('2d');

                    // Adjust canvas size based on header height and car size
                    const headerHeight = document.querySelector('.header').offsetHeight;
                    const carHeight = 100; // Adjust car height as needed
                    canvas.width = window.innerWidth;
                    canvas.height = headerHeight + carHeight + 20; // Add some padding

                    let carX = 0; // Initial X position of the car
                    let moveRight = true; // Flag to indicate the car's movement direction

                    function drawCar() {
                        ctx.clearRect(0, 0, canvas.width, canvas.height);

                        // Draw car
                        ctx.fillStyle = 'darkslategray';
                        ctx.fillRect(carX, headerHeight, 200, 50); // Adjust car size
                        ctx.fillRect(carX + 20, headerHeight - 30, 160, 30); // Adjust car size

                        ctx.fillStyle = 'lightgray';
                        ctx.fillRect(carX + 30, headerHeight - 20, 40, 20); // Adjust car size
                        ctx.fillRect(carX + 90, headerHeight - 20, 40, 20); // Adjust car size

                        ctx.fillStyle = '#303030';
                        ctx.beginPath();
                        ctx.arc(carX + 50, headerHeight + 20, 20, 0, Math.PI * 2, true); // Adjust car size
                        ctx.arc(carX + 150, headerHeight + 20, 20, 0, Math.PI * 2, true); // Adjust car size
                        ctx.fill();

                        // Update car position
                        if (moveRight) {
                            carX += 2; // Move the car right by 2 pixels
                        } else {
                            carX -= 2; // Move the car left by 2 pixels
                        }

                        // Reverse direction when the car reaches the right or left edge of the canvas
                        if (carX >= canvas.width - 200) {
                            moveRight = false;
                        } else if (carX <= 0) {
                            moveRight = true;
                        }

                        requestAnimationFrame(drawCar);
                    }

                    drawCar(); // Initial call to start the animation


                    // Function to validate form
                    function validateForm() {
                        var source = document.getElementById("source").value.trim();
                        var destination = document.getElementById("destination").value.trim();
                        var numbers = /[0-9]/;
                        var specialCharacters = /[^A-Za-z0-9\s]/;
                        // Clear previous error messages
                        document.getElementById("source-error").innerText = "";
                        document.getElementById("destination-error").innerText = "";

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
                        // else if (source.length < 5) {
                        //     document.getElementById("source-error").innerText = "Source must have a minimum length of 5 characters.";
                        //     if (destination.length < 5) {
                        //         document.getElementById("destination-error").innerText = "Destination must have a minimum length of 5 characters.";
                        //     }
                        //     return false;
                        // }

                        // Validation 4: Source and destination must not be empty
                        else if (source === "") {
                            document.getElementById("source-error").innerText = "Source cannot be empty.";
                            if (destination === "") {
                                document.getElementById("destination-error").innerText = "Destination cannot be empty.";
                            }
                            return false;
                        }

                        // Validation 5: Source and destination must not contain any special characters except spaces
                        else if (specialCharacters.test(source)) {
                            document.getElementById("source-error").innerText = "Source cannot contain special characters except spaces.";
                            if (specialCharacters.test(destination)) {
                                document.getElementById("destination-error").innerText = "Destination cannot contain special characters except spaces.";
                            }
                            return false;
                        }
                        else
                            try {

                                if (numbers.test(source)) {
                                    throw new Error("sourceError");
                                    if (numbers.test(destination)) {
                                    throw new Error("destinationError");
                                }
                                }
                               
                                // Continue with your code if no errors are thrown
                            }
                            catch (error) {
                                if (error.message === "sourceError") {
                                    document.getElementById("source-error").innerText = "Source cannot contain numbers.";
                                    if (error.message === "destinationError") {
                                        document.getElementById("destination-error").innerText = "Destination cannot contain numbers.";
                                    }
                                }
                                // Optionally, return false or handle the error in another way
                                return false;
                            }

                        // If no errors, return true
                        return true;
                    }

                    // Function to add charging stations
                    function addChargingStations() {
                        var chargingStations = [
                            { name: "Electric Vehicle Charger, Near NDMC Office, Fire B...", lat: 28.6304482, lng: 77.2255578, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Near Bikanervala, Yashwa...", lat: 28.5838828, lng: 77.163408, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Khan Market, Rabindra Na...", lat: 28.6003333, lng: 77.2268889, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Outside Devinder Collection", lat: 28.633675, lng: 77.2234929, iconUrl: 'evcar.jpg' },
                            { name: "Mahipalpur, Delhi", lat: 28.5449, lng: 77.1281, iconUrl: 'src.png' },
                            { name: "Seelapur, Delhi", lat: 28.664, lng: 77.2712, iconUrl: 'dest.png' },
                            { name: "Electric Vehicle Charger, Prithviraj Market, Rabin...", lat: 28.6007255, lng: 77.2262524, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Opposite Dory Pharmacy", lat: 28.5826538, lng: 77.2200872, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Charger 2, SDMC Parking", lat: 28.553693, lng: 77.19925, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Charger 1, Sector 2", lat: 28.5875036, lng: 77.31269, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Charger 2, Sector 2", lat: 28.5355161, lng: 77.3910265, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Charger 1, Sector 3", lat: 28.5355161, lng: 77.3910265, iconUrl: 'evcar.jpg' },
                            { name: "Electric Vehicle Charger, Charger 2, Sector 16", lat: 28.5773799, lng: 77.3144936, iconUrl: 'evcar.jpg' },
                        ];

                        chargingStations.forEach(function (station) {
                            var icon = L.icon({
                                iconUrl: station.iconUrl,
                                iconSize: [50, 50],
                                iconAnchor: [25, 50],
                                popupAnchor: [-3, -76]
                            });

                            var marker = L.marker([station.lat, station.lng], { icon: icon });
                            marker.bindPopup(station.name);
                            marker.addTo(map);
                        });
                    }

                    // Function to add route line
                    function addRouteLine(start, end) {
                        var routePoints = [
                            start, // Start point
                            end // End point
                        ];

                        var polyline = L.polyline(routePoints, { color: 'blue' }).addTo(map);
                        map.fitBounds(polyline.getBounds());
                    }

                    // Creating map options
                    var mapOptions = {
                        center: [28.6, 77.2], // Updated center coordinates
                        zoom: 10
                    };

                    // Creating a map object
                    var map = new L.map('map', mapOptions);

                    // Creating a Layer object
                    var layer = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png');

                    // Adding layer to the map
                    map.addLayer(layer);

                    // Function to handle Find Route button click

                    document.getElementById("find-route").addEventListener("click", function () {
                        if (validateForm()) {
                            // Clear existing markers and route line
                            map.eachLayer(function (layer) {
                                if (layer instanceof L.Marker || layer instanceof L.Polyline) {
                                    map.removeLayer(layer);
                                }
                            });

                            // Call functions to add charging stations and route line
                            addChargingStations();
                            addRouteLine([28.5449, 77.1281], [28.664, 77.2712]); // Start and end points
                        }
                        var source = document.getElementById("source").value;
                        var destination = document.getElementById("destination").value;

                        // Send an AJAX request to store_data.php
                        var xhr = new XMLHttpRequest();
                        xhr.open("POST", "store_data.php", true);
                        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                        xhr.onreadystatechange = function () {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                // Display source and destination in route-details section
                                document.getElementById("route-details").innerHTML = "<p>Source: " + source + "</p><p>Destination: " + destination + "</p>";
                            }
                        };
                        var params = "source=" + source + "&destination=" + destination;
                        xhr.send(params);
                    });

                });
            </script>

</body>

</html>