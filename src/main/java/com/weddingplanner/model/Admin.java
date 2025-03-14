package com.weddingplanner.model;

import java.util.List;
import java.util.ArrayList;

/**
 * Admin model class for Wedding Planning application
 * Extends User with additional admin-specific properties
 */
public class Admin extends User {
    private String role;
    private List<String> permissions;
    private String lastLogin;
    
    // Default constructor
    public Admin() {
        super();
        this.permissions = new ArrayList<>();
    }
    
    // Parameterized constructor
    public Admin(int id, String username, String password, String name, String email, 
                String phone, String address, String registrationDate,
                String role, List<String> permissions, String lastLogin) {
        super(id, username, password, name, email, phone, address, registrationDate);
        this.role = role;
        this.permissions = permissions;
        this.lastLogin = lastLogin;
    }
    
    // Getters and setters for admin-specific properties
    public String getRole() {
        return role;
    }
    
    public void setRole(String role) {
        this.role = role;
    }
    
    public List<String> getPermissions() {
        return permissions;
    }
    
    public void setPermissions(List<String> permissions) {
        this.permissions = permissions;
    }
    
    public String getLastLogin() {
        return lastLogin;
    }
    
    public void setLastLogin(String lastLogin) {
        this.lastLogin = lastLogin;
    }
    
    // Add a single permission
    public void addPermission(String permission) {
        if (this.permissions == null) {
            this.permissions = new ArrayList<>();
        }
        this.permissions.add(permission);
    }
    
    // Check if admin has a specific permission
    public boolean hasPermission(String permission) {
        return permissions != null && permissions.contains(permission);
    }
    
    // ToString method for debugging and logging
    @Override
    public String toString() {
        return "Admin{" +
                "id=" + getId() +
                ", username='" + getUsername() + '\'' +
                ", name='" + getName() + '\'' +
                ", email='" + getEmail() + '\'' +
                ", role='" + role + '\'' +
                ", permissions=" + permissions +
                ", lastLogin='" + lastLogin + '\'' +
                '}';
    }
}