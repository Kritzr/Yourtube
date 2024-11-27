package com.yourtube.servlet;

import com.yourtube.util.VideoDetails;
import com.yourtube.dao.VideoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/history")
public class HistoryServlet extends HttpServlet {
    private VideoDAO videoDAO = new VideoDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the logged-in user's username from the session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        String username = (String) session.getAttribute("username");

        // Fetch history for the user
        List<VideoDetails> historyVideos = videoDAO.getUserHistory(username);

        // Set the history videos in request attribute
        request.setAttribute("historyVideos", historyVideos);

        // Forward to the history.jsp page
        request.getRequestDispatcher("history.jsp").forward(request, response);
    }
}
