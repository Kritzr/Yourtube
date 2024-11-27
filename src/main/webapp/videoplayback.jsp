<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Playback - YourTube</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f9f9f9;
        }

        .video-container {
            margin: 40px auto;
            text-align: center;
        }

        iframe {
            width: 80%;
            height: 400px;
            border-radius: 10px;
        }

        .actions {
            margin-top: 20px;
        }

        .btn-action {
            margin: 5px;
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

    <!-- Video Playback Section -->
    <div class="container video-container">
        <h2>${video.title}</h2>
        <iframe src="https://www.youtube.com/embed/${video.videoId}" frameborder="0" allowfullscreen></iframe>
        <p class="mt-3">${video.description}</p>
        <div class="actions">
            <form action="VideoActionsServlet" method="POST">
                <input type="hidden" name="videoId" value="${video.videoId}">
                <input type="hidden" name="action" value="watchHistory">
                <button class="btn btn-primary btn-action" type="submit">Add to Watch History</button>
            </form>
            <form action="VideoActionsServlet" method="POST" class="d-inline-block">
                <input type="hidden" name="videoId" value="${video.videoId}">
                <input type="hidden" name="action" value="saveToWatchLater">
                <button class="btn btn-success btn-action" type="submit">Save to Watch Later</button>
            </form>
            <form action="VideoActionsServlet" method="POST" class="d-inline-block">
                <input type="hidden" name="videoId" value="${video.videoId}">
                <input type="hidden" name="action" value="like">
                <button class="btn btn-info btn-action" type="submit">Like</button>
            </form>
            <form action="VideoActionsServlet" method="POST" class="d-inline-block">
                <input type="hidden" name="videoId" value="${video.videoId}">
                <input type="hidden" name="action" value="dislike">
                <button class="btn btn-danger btn-action" type="submit">Dislike</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and Dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
