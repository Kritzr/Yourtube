package com.yourtube.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handle POST request for registration
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        String message = null;

        // Validate input fields
        if (username == null || password == null || confirmPassword == null || name == null || email == null ||
                username.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || name.isEmpty() || email.isEmpty()) {
            message = "All fields are required.";
        } else if (!password.equals(confirmPassword)) {
            message = "Passwords do not match.";
        } else {
            // Save the user to the database
            try (Connection conn = DBConnection.getConnection()) {
                if (conn != null) {
                    String sql = "INSERT INTO users (username, password, full_name, email) VALUES (?, ?, ?, ?)";
                    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                        pstmt.setString(1, username);
                        pstmt.setString(2, password); // Hash this password in production
                        pstmt.setString(3, name);
                        pstmt.setString(4, email);

                        int rowsInserted = pstmt.executeUpdate();
                        if (rowsInserted > 0) {
                            message = "Registration successful! You can now <a href='login.jsp'>log in</a>.";
                        } else {
                            message = "Registration failed. Please try again.";
                        }
                    }
                } else {
                    message = "Database connection failed.";
                }
            } catch (SQLException e) {
                if (e.getMessage().contains("Duplicate entry")) {
                    message = "Username or email already exists. Please choose a different one.";
                } else {
                    e.printStackTrace();
                    message = "An error occurred: " + e.getMessage();
                }
            }
        }

        // Forward back to the registration page with the result message
        request.setAttribute("message", message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        dispatcher.forward(request, response);
    }
}
