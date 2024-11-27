<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - YourTube</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Sidebar styles */
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 250px;
            background-color: #343a40;
            color: white;
            padding-top: 20px;
            padding-left: 20px;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            margin-bottom: 10px;
        }

        .sidebar a:hover {
            background-color: #575757;
        }

        /* Main content area */
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }

        /* Video Thumbnail */
        .video-thumbnail {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .video-card {
            margin-bottom: 20px;
        }

        .video-title {
            font-size: 16px;
            font-weight: bold;
        }

        .video-description {
            font-size: 14px;
            color: #555555;
        }

        /* Add margin-top to search bar to avoid overlap with fixed navbar */
        .search-bar {
            margin-top: 80px; /* Adjust this value based on navbar height */
        }
    </style>
</head>

<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">YourTube</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="upload.jsp">Upload Video</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Menu</h3>
        <a href="history.jsp">History</a>
        <a href="your-videos.jsp">Your Videos</a>
        <a href="watch-later.jsp">Watch Later</a>
        <a href="liked-videos.jsp">Liked Videos</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Search Bar -->
        <div class="container search-bar">
            <div class="row">
                <div class="col-12">
                    <form action="search" method="GET">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Search for videos..." name="query" aria-label="Search" aria-describedby="button-search">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit" id="button-search">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Welcome Message -->
        <div class="row">
            <div class="col-12">
                <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
                <p>Discover amazing videos and channels!</p>
            </div>
        </div>

        <!-- Video Thumbnails -->
        <div class="row">
            <c:forEach var="video" items="${videoDetailsList}">
                <div class="col-md-4 video-card">
                    <iframe class="video-thumbnail" src="${video.embedUrl}" frameborder="0" allowfullscreen></iframe>
                    <div class="video-info">
                        <h5 class="video-title">${video.title}</h5>
                        <p class="video-description">${video.description}</p>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>

    <!-- Bootstrap JS and Dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
