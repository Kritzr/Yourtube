<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <!-- Add Bootstrap CDN for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #343a40;
        }

        .video-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 30px;
            transition: transform 0.2s ease-in-out;
        }

        .video-card:hover {
            transform: translateY(-10px);
        }

        .video-thumbnail {
            max-width: 100%;
            border-radius: 8px;
        }

        .video-info {
            padding-top: 15px;
        }

        .video-title {
            font-size: 1.25rem;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 10px;
        }

        .video-description {
            font-size: 0.9rem;
            color: #6c757d;
            margin-bottom: 15px;
        }

        .btn-watch {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-watch:hover {
            background-color: #0056b3;
        }

        .back-button {
            display: block;
            text-align: center;
            margin-top: 50px;
            font-size: 1.1rem;
        }

        .back-button a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            background-color: #28a745;
            padding: 10px 30px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .back-button a:hover {
            background-color: #218838;
        }

        .back-button a:focus {
            outline: none;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Search Results</h1>

        <div class="row">
            <!-- Loop through the search results and display the video information -->
            <c:forEach var="video" items="${searchResults}">
                <div class="col-md-4">
                    <div class="video-card">
                        <img src="${video.thumbnailUrl}" alt="${video.title}" class="video-thumbnail">
                        <div class="video-info">
                            <h3 class="video-title">${video.title}</h3>
                            <p class="video-description">${video.description}</p>
                            <a href="play?videoId=${video.videoId}" class="btn-watch">Watch Video</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- Back to Home button -->
        <div class="back-button">
            <a href="home.jsp">Back to Home</a>
        </div>
    </div>

    <!-- Add Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
