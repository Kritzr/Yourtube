package com.yourtube.util;

import com.yourtube.util.YouTubeService;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Example list of video IDs. You can dynamically generate this from a database or API.
        List<String> videoIds = List.of("dQw4w9WgXcQ", "3JZ_D3ELwOQ", "lY2H2ZP6rOE");  // Replace with actual video IDs

        // Fetch details for each video using the YouTubeService
        List<VideoDetails> videoDetailsList = YouTubeService.getVideoDetails(videoIds);

        // Set the list of video details as an attribute to pass to the JSP
        request.setAttribute("videoDetailsList", videoDetailsList);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
        dispatcher.forward(request, response);
    }
}
