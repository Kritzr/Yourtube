package com.yourtube.util;

import com.yourtube.dao.VideoDAO;
import com.yourtube.util.VideoDetails;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class VideoPlaybackServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the videoId from the request
        String videoId = request.getParameter("videoId");

        // Ensure videoId is provided
        if (videoId == null || videoId.isEmpty()) {
            response.sendRedirect("error.jsp"); // Redirect to an error page if no videoId
            return;
        }

        // Get the username from the session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp"); // Redirect to login if user is not authenticated
            return;
        }
        String username = (String) session.getAttribute("username");

        // Fetch video details from the database
        VideoDAO videoDAO = new VideoDAO();
        VideoDetails video = videoDAO.getVideoById(videoId);

        if (video == null) {
            response.sendRedirect("error.jsp"); // Redirect if video is not found
            return;
        }

        // Add video to the user's watch history
        videoDAO.addHistory(username, videoId);

        // Pass video details to the JSP
        request.setAttribute("video", video);
        request.getRequestDispatcher("VideoPlayback.jsp").forward(request, response);
    }
}
