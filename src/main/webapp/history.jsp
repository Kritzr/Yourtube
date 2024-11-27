<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History - YourTube</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <div class="container mt-5">
        <h2>Your Watch History</h2>
        <div class="row">
            <c:forEach var="video" items="${historyVideos}">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="${video.thumbnailUrl}" class="card-img-top" alt="Thumbnail">
                        <div class="card-body">
                            <h5 class="card-title">${video.title}</h5>
                            <p class="card-text">${video.description}</p>
                            <a href="watchVideo.jsp?videoId=${video.videoId}" class="btn btn-primary">Watch Again</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>

</html>
