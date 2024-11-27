<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to YourTube</title> <!-- Replace 'YourTube' with your application's name -->

    <!-- External CSS and Animation Libraries -->
    <link rel="stylesheet" href="css/styles.css"> <!-- Link to your custom CSS file -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"> <!-- Animate.css for animations -->
    <style>
        /* Custom Styles for Additional Animations */
        .hero-section {
            background: url('images/hero.jpg') no-repeat center center/cover;
            height: 80vh;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            animation: fadeIn 2s ease-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Smooth hover animation */
        .btn-animated {
            transition: transform 0.3s ease;
        }

        .btn-animated:hover {
            transform: scale(1.1);
        }

        /* Card hover effect */
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease-in-out;
        }
    </style>
</head>

<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <a class="navbar-brand animate__animated animate__bounceInLeft" href="#">YourTube</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item animate__animated animate__fadeInDown">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item animate__animated animate__fadeInDown animate__delay-1s">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
                <li class="nav-item animate__animated animate__fadeInDown animate__delay-2s">
                    <a class="nav-link" href="upload.jsp">Upload Video</a>
                </li>
                <li class="nav-item animate__animated animate__fadeInDown animate__delay-3s">
                    <a class="nav-link" href="profile.jsp">Profile</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section text-center animate__animated animate__fadeIn">
        <div class="container">
            <h1 class="display-4 animate__animated animate__fadeInDown">Welcome to YourTube</h1>
            <p class="lead animate__animated animate__fadeInUp">Watch, Upload, and Share Amazing Educational Content!</p>
            <a href="register.jsp" class="btn btn-primary btn-lg mt-3 btn-animated animate__animated animate__pulse animate__infinite">Get Started</a>
        </div>
    </section>

    <!-- Featured Videos Section -->
    <section class="container mt-5">
        <h2 class="text-center mb-4">Featured Videos</h2>
        <div class="row">
            <!-- Example Video Card 1 -->
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm animate__animated animate__fadeInUp">
                    <img src="images/hero.jpg" class="card-img-top" alt="Video Thumbnail">
                    <div class="card-body">
                        <h5 class="card-title">Amazing Travel Vlog</h5>
                        <p class="card-text">Explore the world with this stunning travel video.</p>
                        <a href="video.jsp?id=1" class="btn btn-outline-primary btn-sm btn-animated">Watch Now</a>
                    </div>
                </div>
            </div>
            <!-- Example Video Card 2 -->
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm animate__animated animate__fadeInUp animate__delay-1s">
                    <img src="images/hero.jpg" class="card-img-top" alt="Video Thumbnail">
                    <div class="card-body">
                        <h5 class="card-title">Learn Java in 30 Minutes</h5>
                        <p class="card-text">Master the basics of Java programming quickly and efficiently.</p>
                        <a href="video.jsp?id=2" class="btn btn-outline-primary btn-sm btn-animated">Watch Now</a>
                    </div>
                </div>
            </div>
            <!-- Example Video Card 3 -->
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm animate__animated animate__fadeInUp animate__delay-2s">
                    <img src="images/hero.jpg" class="card-img-top" alt="Video Thumbnail">
                    <div class="card-body">
                        <h5 class="card-title">Cooking Delicious Meals</h5>
                        <p class="card-text">Learn how to cook delicious meals step-by-step.</p>
                        <a href="video.jsp?id=3" class="btn btn-outline-primary btn-sm btn-animated">Watch Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2024 YourTube. All rights reserved.</p>
        <p>
            <a href="#" class="text-white">Privacy Policy</a> |
            <a href="#" class="text-white">Terms of Service</a> |
            <a href="contact.jsp" class="text-white">Contact Us</a>
        </p>
    </footer>

    <!-- Bootstrap JS and Dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
