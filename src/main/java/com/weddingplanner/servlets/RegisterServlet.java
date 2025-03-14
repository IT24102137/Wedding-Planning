package com.weddingplanner.servlets;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet for handling user registration
 * Creates new user records in users.json
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    
    private static final String USERS_FILE = "/WEB-INF/data/users.json";
    
    /**
     * Handles registration form submission
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        
        // Validate inputs
        String errorMessage = validateInputs(username, password, confirmPassword, email);
        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        
        // Check if username already exists
        if (isUsernameTaken(username)) {
            request.setAttribute("errorMessage", "Username already taken");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        
        // Register the new user
        boolean success = registerUser(username, password, name, email, phone, address);
        
        if (success) {
            // Registration successful, redirect to login page with success message
            response.sendRedirect(request.getContextPath() + "/login.jsp?registered=true");
        } else {
            // Registration failed
            request.setAttribute("errorMessage", "Registration failed. Please try again.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
    
    /**
     * Validates user input for registration
     * @return Error message if invalid, null if valid
     */
    private String validateInputs(String username, String password, String confirmPassword, String email) {
        if (username == null || username.trim().isEmpty()) {
            return "Username is required";
        }
        
        if (password == null || password.trim().isEmpty()) {
            return "Password is required";
        }
        
        if (!password.equals(confirmPassword)) {
            return "Passwords do not match";
        }
        
        if (email == null || email.trim().isEmpty()) {
            return "Email is required";
        }
        
        // Simple email validation
        if (!email.contains("@") || !email.contains(".")) {
            return "Invalid email format";
        }
        
        return null; // No errors found
    }
    
    /**
     * Checks if a username already exists
     */
    private boolean isUsernameTaken(String username) {
        try {
            String realPath = getServletContext().getRealPath(USERS_FILE);
            File file = new File(realPath);
            if (!file.exists()) {
                return false; // File doesn't exist, so username is not taken
            }
            
            JsonArray users = JsonParser.parseReader(new FileReader(file)).getAsJsonArray();
            
            for (JsonElement element : users) {
                JsonObject user = element.getAsJsonObject();
                String existingUsername = user.get("username").getAsString();
                
                if (username.equals(existingUsername)) {
                    return true; // Username already exists
                }
            }
            
            return false; // Username not found
            
        } catch (IOException e) {
            System.err.println("Error checking username: " + e.getMessage());
            return true; // Assume username is taken to prevent registration in case of errors
        }
    }
    
    /**
     * Registers a new user by adding to the users.json file
     */
    private boolean registerUser(String username, String password, String name, 
                                String email, String phone, String address) {
        try {
            String realPath = getServletContext().getRealPath(USERS_FILE);
            File file = new File(realPath);
            JsonArray users;
            
            // Create file if it doesn't exist
            if (!file.exists()) {
                File parentDir = file.getParentFile();
                if (!parentDir.exists()) {
                    parentDir.mkdirs(); // Create directories if they don't exist
                }
                users = new JsonArray();
            } else {
                users = JsonParser.parseReader(new FileReader(file)).getAsJsonArray();
            }
            
            // Get max ID for new user ID assignment
            int maxId = 0;
            for (JsonElement element : users) {
                JsonObject user = element.getAsJsonObject();
                int id = user.get("id").getAsInt();
                if (id > maxId) {
                    maxId = id;
                }
            }
            
            // Create new user object
            JsonObject newUser = new JsonObject();
            newUser.addProperty("id", maxId + 1);
            newUser.addProperty("username", username);
            newUser.addProperty("password", password);
            newUser.addProperty("name", name);
            newUser.addProperty("email", email);
            newUser.addProperty("phone", phone);
            newUser.addProperty("address", address);
            
            // Add current date as registration date
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            newUser.addProperty("registrationDate", dateFormat.format(new Date()));
            
            // Add to array and write back to file
            users.add(newUser);
            
            try (FileWriter writer = new FileWriter(file)) {
                Gson gson = new GsonBuilder().setPrettyPrinting().create();
                gson.toJson(users, writer);
                return true;
            }
            
        } catch (IOException e) {
            System.err.println("Error registering user: " + e.getMessage());
            return false;
        }
    }
    
    /**
     * Handles direct GET requests to the registration page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Show registration form
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }
}