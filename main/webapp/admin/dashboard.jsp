<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<% 
    // Set page title
    request.setAttribute("pageTitle", "Admin Dashboard");
%>

<div class="container py-5">
    <div class="row mb-4">
        <div class="col-12">
            <h2 class="text-center mb-4 fade-in-up">
                <i class="fas fa-tachometer-alt me-2"></i> Admin Dashboard
            </h2>
            <p class="text-center text-muted fade-in-up delay-1">
                Manage your wedding planning platform and monitor system performance
            </p>
        </div>
    </div>
    
    <!-- Stats Cards -->
    <div class="row mb-5">
        <div class="col-md-3">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.1s;">
                <div class="card-body text-center">
                    <i class="fas fa-users fa-3x mb-3" style="color: #ff6b6b;"></i>
                    <h5 class="card-title">Total Users</h5>
                    <h2 class="display-4">124</h2>
                    <p class="text-muted"><i class="fas fa-arrow-up"></i> 15% this month</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.2s;">
                <div class="card-body text-center">
                    <i class="fas fa-calendar-check fa-3x mb-3" style="color: #4ecdc4;"></i>
                    <h5 class="card-title">Total Bookings</h5>
                    <h2 class="display-4">87</h2>
                    <p class="text-muted"><i class="fas fa-arrow-up"></i> 23% this month</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.3s;">
                <div class="card-body text-center">
                    <i class="fas fa-store fa-3x mb-3" style="color: #ffb347;"></i>
                    <h5 class="card-title">Active Vendors</h5>
                    <h2 class="display-4">42</h2>
                    <p class="text-muted"><i class="fas fa-arrow-up"></i> 7% this month</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.4s;">
                <div class="card-body text-center">
                    <i class="fas fa-chart-line fa-3x mb-3" style="color: #3498db;"></i>
                    <h5 class="card-title">Revenue</h5>
                    <h2 class="display-4">$18k</h2>
                    <p class="text-muted"><i class="fas fa-arrow-up"></i> 12% this month</p>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Quick Actions -->
    <div class="row mb-4">
        <div class="col-12">
            <div class="card fade-in-up delay-2">
                <div class="card-header bg-white">
                    <h5 class="mb-0"><i class="fas fa-bolt me-2"></i> Quick Actions</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <a href="${pageContext.request.contextPath}/admin/users-management.jsp" class="btn btn-light btn-lg w-100 py-4 animate-icon">
                                <i class="fas fa-user-cog fa-2x mb-3" style="color: #ff6b6b;"></i>
                                <br>Manage Users
                            </a>
                        </div>
                        <div class="col-md-3 mb-3">
                            <a href="${pageContext.request.contextPath}/admin/vendors-management.jsp" class="btn btn-light btn-lg w-100 py-4 animate-icon">
                                <i class="fas fa-store-alt fa-2x mb-3" style="color: #4ecdc4;"></i>
                                <br>Manage Vendors
                            </a>
                        </div>
                        <div class="col-md-3 mb-3">
                            <a href="${pageContext.request.contextPath}/admin/events-management.jsp" class="btn btn-light btn-lg w-100 py-4 animate-icon">
                                <i class="fas fa-calendar-alt fa-2x mb-3" style="color: #ffb347;"></i>
                                <br>Manage Events
                            </a>
                        </div>
                        <div class="col-md-3 mb-3">
                            <a href="#" class="btn btn-light btn-lg w-100 py-4 animate-icon">
                                <i class="fas fa-cog fa-2x mb-3" style="color: #3498db;"></i>
                                <br>System Settings
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Recent Activity and Alerts -->
    <div class="row">
        <!-- Recent Activity -->
        <div class="col-md-7 mb-4">
            <div class="card h-100 zoom-in" style="animation-delay: 0.3s;">
                <div class="card-header bg-white">
                    <h5 class="mb-0"><i class="fas fa-history me-2"></i> Recent Activity</h5>
                </div>
                <div class="card-body">
                    <div class="timeline">
                        <div class="timeline-item">
                            <div class="timeline-point"></div>
                            <div class="timeline-content">
                                <h6 class="mb-1">New vendor registered - Floral Elegance</h6>
                                <p class="text-muted small">Today, 14:32</p>
                            </div>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-point bg-success"></div>
                            <div class="timeline-content">
                                <h6 class="mb-1">Event booking completed - Johnson Wedding</h6>
                                <p class="text-muted small">Today, 12:15</p>
                            </div>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-point bg-warning"></div>
                            <div class="timeline-content">
                                <h6 class="mb-1">User complaint submitted - Vendor no-show</h6>
                                <p class="text-muted small">Yesterday, 20:45</p>
                            </div>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-point bg-info"></div>
                            <div class="timeline-content">
                                <h6 class="mb-1">System maintenance completed</h6>
                                <p class="text-muted small">Yesterday, 03:30</p>
                            </div>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-point bg-primary"></div>
                            <div class="timeline-content">
                                <h6 class="mb-1">New feature deployed - Vendor ratings</h6>
                                <p class="text-muted small">March 10, 2025</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="#" class="btn btn-sm btn-outline-primary">View All Activities</a>
                </div>
            </div>
        </div>
        <!-- Alerts and Notifications -->
        <div class="col-md-5 mb-4">
            <div class="card h-100 zoom-in" style="animation-delay: 0.4s;">
                <div class="card-header bg-white">
                    <h5 class="mb-0"><i class="fas fa-bell me-2"></i> Alerts & Notifications</h5>
                </div>
                <div class="card-body p-0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex align-items-center">
                            <div class="bg-danger rounded-circle p-2 me-3">
                                <i class="fas fa-exclamation-triangle text-white"></i>
                            </div>
                            <div>
                                <h6 class="mb-1">System Update Required</h6>
                                <p class="text-muted mb-0 small">Security patches available</p>
                            </div>
                        </li>
                        <li class="list-group-item d-flex align-items-center">
                            <div class="bg-warning rounded-circle p-2 me-3">
                                <i class="fas fa-user-clock text-white"></i>
                            </div>
                            <div>
                                <h6 class="mb-1">5 Vendors Pending Approval</h6>
                                <p class="text-muted mb-0 small">Waiting for over 24 hours</p>
                            </div>
                        </li>
                        <li class="list-group-item d-flex align-items-center">
                            <div class="bg-info rounded-circle p-2 me-3">
                                <i class="fas fa-money-bill text-white"></i>
                            </div>
                            <div>
                                <h6 class="mb-1">Payments to Process</h6>
                                <p class="text-muted mb-0 small">12 payments waiting for processing</p>
                            </div>
                        </li>
                        <li class="list-group-item d-flex align-items-center">
                            <div class="bg-success rounded-circle p-2 me-3">
                                <i class="fas fa-chart-pie text-white"></i>
                            </div>
                            <div>
                                <h6 class="mb-1">Monthly Report Ready</h6>
                                <p class="text-muted mb-0 small">March 2025 analytics are ready</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="#" class="btn btn-sm btn-outline-primary">View All Alerts</a>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Timeline styles */
    .timeline {
        position: relative;
        padding-left: 30px;
    }
    
    .timeline:before {
        content: '';
        position: absolute;
        left: 10px;
        top: 0;
        height: 100%;
        width: 2px;
        background-color: #e9ecef;
    }
    
    .timeline-item {
        position: relative;
        margin-bottom: 20px;
    }
    
    .timeline-point {
        position: absolute;
        left: -30px;
        width: 12px;
        height: 12px;
        border-radius: 50%;
        background-color: #ff6b6b;
        border: 2px solid #fff;
        margin-top: 5px;
        box-shadow: 0 0 0 3px rgba(255, 107, 107, 0.2);
    }
    
    .animate-icon {
        transition: all 0.3s ease;
    }
    
    .animate-icon:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }
    
    .animate-icon i {
        transition: all 0.3s ease;
    }
    
    .animate-icon:hover i {
        transform: scale(1.2);
    }
</style>

<%@ include file="/WEB-INF/components/footer.jsp" %>