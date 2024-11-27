package com.yourtube.util;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.List;

public class SearchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the search query from the URL's query parameters
        String query = request.getParameter("query");
        System.out.println("Received query: " + query);

        // Create an instance of YouTubeService to fetch search results
        YouTubeService youtubeService = new YouTubeService();

        // Fetch the video details list using the search query
        List<VideoDetails> videoDetailsList = youtubeService.searchVideos(query);

        // Store the list of VideoDetails in the request scope
        request.setAttribute("searchResults", videoDetailsList);
        System.out.println("Search results: " + videoDetailsList.toString());

        // Forward to SearchResults.jsp to display the results
        RequestDispatcher dispatcher = request.getRequestDispatcher("/SearchResults.jsp");
        dispatcher.forward(request, response);
    }
}
