package com.weddingplanner.servlets;

import com.weddingplanner.services.AuthService;
import com.weddingplanner.services.AuthService.AuthResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet for handling login requests
 * Authenticates users and redirects based on role
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    private AuthService authService;
    
    @Override
    public void init() throws ServletException {
        // Initialize the authentication service with servlet context
        authService = new AuthService(getServletContext());
    }
    
    /**
     * Handles login form submissions
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Validate inputs (simple check for empty fields)
        if (email == null || email.trim().isEmpty() || 
            password == null || password.trim().isEmpty()) {
            
            // Send back to login page with error message
            request.setAttribute("errorMessage", "email and password are required");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }
        
        // Attempt authentication
        AuthResult result = authService.authenticate(email, password);
        
        if (result.isAuthenticated()) {
            // Create session and store user information
            HttpSession session = request.getSession(true);
            session.setAttribute("authenticated", true);
            session.setAttribute("email", email);
            session.setAttribute("role", result.getRole());
            
            // Redirect based on role
            if ("admin".equals(result.getRole())) {
                // Redirect to admin dashboard
                response.sendRedirect(request.getContextPath() + "/admin/dashboard.jsp");
            } else {
                // Redirect to user home page
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            }
        } else {
            // Authentication failed
            request.setAttribute("errorMessage", "Invalid email or password");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
    
    /**
     * Handles direct GET requests to the login page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Check if user is already logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("authenticated") != null) {
            // User is already logged in, redirect based on role
            String role = (String) session.getAttribute("role");
            if ("admin".equals(role)) {
                response.sendRedirect(request.getContextPath() + "/admin/dashboard.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            }
            return;
        }
        
        // Show login page
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
}