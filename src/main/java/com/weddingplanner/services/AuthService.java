package com.weddingplanner.services;

import java.io.FileReader;
import java.io.IOException;
import javax.servlet.ServletContext;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Authentication service for Wedding Planning application
 * Handles user and admin authentication using JSON files
 */
public class AuthService {
    
    // File paths for JSON storage
    private static final String USERS_FILE = "/WEB-INF/data/users.json";
    private static final String ADMINS_FILE = "/WEB-INF/data/admins.json";
    
    private ServletContext context;
    
    public AuthService(ServletContext context) {
        this.context = context;
    }
    
    /**
     * Authenticates a user based on username and password
     * @param username The username to authenticate
     * @param password The password to verify
     * @return AuthResult object containing authentication status and user role
     */
    public AuthResult authenticate(String email, String password) {
        // Try to authenticate as admin first
        AuthResult adminResult = authenticateFromFile(email, password, ADMINS_FILE, "admin");
        if (adminResult.isAuthenticated()) {
            return adminResult;
        }
        
        // If not admin, try to authenticate as regular user
        return authenticateFromFile(email, password, USERS_FILE, "user");
    }
    
    /**
     * Checks credentials against a specific JSON file
     * @param email Username to check
     * @param password Password to verify
     * @param filePath Path to JSON file
     * @param role Role type (admin or user)
     * @return AuthResult with authentication status
     */
    private AuthResult authenticateFromFile(String username, String password, String filePath, String role) {
        try {
            String realPath = context.getRealPath(filePath);
            JsonArray users = JsonParser.parseReader(new FileReader(realPath)).getAsJsonArray();
            
            for (JsonElement element : users) {
                JsonObject user = element.getAsJsonObject();
                String storedUsername = user.get("username").getAsString();
                String storedPassword = user.get("password").getAsString();
                
                if (storedUsername.equals(username) && storedPassword.equals(password)) {
                    // Found matching credentials
                    return new AuthResult(true, role, user);
                }
            }
            
            // No matching credentials found
            return new AuthResult(false, null, null);
            
        } catch (IOException e) {
            System.err.println("Error reading authentication file: " + e.getMessage());
            return new AuthResult(false, null, null);
        }
    }
    
    /**
     * Inner class to represent authentication result
     */
    public class AuthResult {
        private boolean authenticated;
        private String role;
        private JsonObject userData;
        
        public AuthResult(boolean authenticated, String role, JsonObject userData) {
            this.authenticated = authenticated;
            this.role = role;
            this.userData = userData;
        }
        
        public boolean isAuthenticated() {
            return authenticated;
        }
        
        public String getRole() {
            return role;
        }
        
        public JsonObject getUserData() {
            return userData;
        }
    }
}