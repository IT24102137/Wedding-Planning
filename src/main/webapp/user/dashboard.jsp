<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<% 
    // Set page title
    request.setAttribute("pageTitle", "User Dashboard");
    
    // Set date variables for example data
    String currentDate = "2025-03-13 06:12:03";
    String weddingDate = "2025-06-15";
%>

<!-- Hero Section -->
<div class="container-fluid bg-light py-5 mb-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 fade-in-up">
                <h1 class="display-5 fw-bold text-primary mb-3">Welcome, <span class="text-dark">Priya</span></h1>
                <p class="lead mb-4">Your wedding planning dashboard</p>
                <div class="d-flex gap-2">
                    <a href="${pageContext.request.contextPath}/user/events.jsp" class="btn btn-primary">
                        <i class="fas fa-calendar-plus me-2"></i> Plan an Event
                    </a>
                    <a href="${pageContext.request.contextPath}/user/vendors.jsp" class="btn btn-outline-primary">
                        <i class="fas fa-search me-2"></i> Find Vendors
                    </a>
                </div>
            </div>
            <div class="col-md-6 text-center text-md-end fade-in-up delay-1">
                <div class="countdown-wrapper bg-white rounded-3 shadow-sm p-4 d-inline-block">
                    <h5 class="mb-3"><i class="fas fa-hourglass-half text-primary me-2"></i> Wedding Day Countdown</h5>
                    <div class="countdown d-flex justify-content-center gap-3">
                        <div class="countdown-item">
                            <div class="display-6 fw-bold">94</div>
                            <div class="small text-muted">days</div>
                        </div>
                        <div class="countdown-item">
                            <div class="display-6 fw-bold">12</div>
                            <div class="small text-muted">hours</div>
                        </div>
                        <div class="countdown-item">
                            <div class="display-6 fw-bold">47</div>
                            <div class="small text-muted">mins</div>
                        </div>
                        <div class="countdown-item">
                            <div class="display-6 fw-bold">16</div>
                            <div class="small text-muted">secs</div>
                        </div>
                    </div>
                    <p class="mb-0 mt-2 text-center text-muted small">June 15, 2025</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Dashboard Content -->
<div class="container mb-5">
    <div class="row">
        <!-- Left Column - Quick Stats -->
        <div class="col-lg-4">
            <!-- Profile Card -->
            <div class="card border-0 shadow-sm mb-4 fade-in-up">
                <div class="card-body text-center">
                    <div class="avatar-circle mx-auto mb-3">
                        <i class="fas fa-user-circle fa-4x text-primary"></i>
                    </div>
                    <h5>Priya Sharma</h5>
                    <p class="text-muted mb-3">Wedding Date: June 15, 2025</p>
                    <div class="d-grid">
                        <a href="${pageContext.request.contextPath}/user/profile.jsp" class="btn btn-outline-primary btn-sm">
                            <i class="fas fa-user-edit me-1"></i> Edit Profile
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Budget Card -->
            <div class="card border-0 shadow-sm mb-4 fade-in-up delay-1">
                <div class="card-header bg-white py-3">
                    <h5 class="mb-0"><i class="fas fa-money-bill-wave text-success me-2"></i> Budget Overview</h5>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-3">
                        <span>Total Budget:</span>
                        <span class="fw-bold">$25,000</span>
                    </div>
                    <div class="d-flex justify-content-between mb-3">
                        <span>Spent:</span>
                        <span class="fw-bold text-danger">$9,850</span>
                    </div>
                    <div class="d-flex justify-content-between mb-3">
                        <span>Remaining:</span>
                        <span class="fw-bold text-success">$15,150</span>
                    </div>
                    
                    <div class="progress mt-2" style="height: 10px;">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 39%;" aria-valuenow="39" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="text-center mt-2">
                        <small class="text-muted">39% of budget spent</small>
                    </div>
                    
                    <div class="d-grid mt-3">
                        <a href="#" class="btn btn-sm btn-outline-success">
                            <i class="fas fa-chart-pie me-1"></i> Budget Details
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Guest List Stats -->
            <div class="card border-0 shadow-sm mb-4 fade-in-up delay-2">
                <div class="card-header bg-white py-3">
                    <h5 class="mb-0"><i class="fas fa-users text-primary me-2"></i> Guest List</h5>
                </div>
                <div class="card-body">
                    <div class="row text-center">
                        <div class="col-4">
                            <div class="stat-circle mx-auto mb-2">
                                <span class="display-6">120</span>
                            </div>
                            <p class="text-muted small">Invited</p>
                        </div>
                        <div class="col-4">
                            <div class="stat-circle bg-success bg-opacity-10 mx-auto mb-2">
                                <span class="display-6 text-success">68</span>
                            </div>
                            <p class="text-muted small">Confirmed</p>
                        </div>
                        <div class="col-4">
                            <div class="stat-circle bg-danger bg-opacity-10 mx-auto mb-2">
                                <span class="display-6 text-danger">12</span>
                            </div>
                            <p class="text-muted small">Declined</p>
                        </div>
                    </div>
                    <div class="d-grid mt-3">
                        <a href="#" class="btn btn-sm btn-outline-primary">
                            <i class="fas fa-envelope me-1"></i> Send Invitations
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Right Column - Content -->
        <div class="col-lg-8">
            <!-- Tasks Card -->
            <div class="card border-0 shadow-sm mb-4 slide-in-right">
                <div class="card-header bg-white py-3 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0"><i class="fas fa-tasks text-primary me-2"></i> Wedding To-Do List</h5>
                    <button class="btn btn-sm btn-outline-primary">
                        <i class="fas fa-plus me-1"></i> Add Task
                    </button>
                </div>
                <div class="card-body p-0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex align-items-center py-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="task1" checked>
                                <label class="form-check-label text-decoration-line-through" for="task1">
                                    Book wedding venue
                                </label>
                            </div>
                            <span class="badge bg-success ms-auto">Completed</span>
                        </li>
                        <li class="list-group-item d-flex align-items-center py-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="task2" checked>
                                <label class="form-check-label text-decoration-line-through" for="task2">
                                    Hire photographer
                                </label>
                            </div>
                            <span class="badge bg-success ms-auto">Completed</span>
                        </li>
                        <li class="list-group-item d-flex align-items-center py-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="task3">
                                <label class="form-check-label" for="task3">
                                    Order wedding cake
                                </label>
                            </div>
                            <span class="badge bg-warning ms-auto">Due in 2 weeks</span>
                        </li>
                        <li class="list-group-item d-flex align-items-center py-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="task4">
                                <label class="form-check-label" for="task4">
                                    Finalize menu with caterer
                                </label>
                            </div>
                            <span class="badge bg-danger ms-auto">Due this week</span>
                        </li>
                        <li class="list-group-item d-flex align-items-center py-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="task5">
                                <label class="form-check-label" for="task5">
                                    Book honeymoon flights
                                </label>
                            </div>
                            <span class="badge bg-info ms-auto">Due in 1 month</span>
                        </li>
                    </ul>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="#" class="btn btn-link text-decoration-none">View all tasks <i class="fas fa-arrow-right ms-1"></i></a>
                </div>
            </div>
            
            <!-- Upcoming Events -->
            <div class="card border-0 shadow-sm mb-4 slide-in-right delay-1">
                <div class="card-header bg-white py-3">
                    <h5 class="mb-0"><i class="fas fa-calendar-check text-primary me-2"></i> Upcoming Events</h5>
                </div>
                <div class="card-body p-0">
                    <div class="list-group list-group-flush">
                        <!-- Event Item 1 -->
                        <div class="list-group-item p-3">
                            <div class="d-flex">
                                <div class="event-date me-3 text-center">
                                    <div class="month">MAR</div>
                                    <div class="day">20</div>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="mb-1">Venue Tour - Silver Bay Resort</h6>
                                    <p class="mb-1 small text-muted">
                                        <i class="fas fa-clock me-1"></i> 10:00 AM - 12:00 PM
                                    </p>
                                    <p class="mb-0 small text-muted">
                                        <i class="fas fa-map-marker-alt me-1"></i> 1234 Silver Bay Road
                                    </p>
                                </div>
                                <div>
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Event Item 2 -->
                        <div class="list-group-item p-3">
                            <div class="d-flex">
                                <div class="event-date me-3 text-center">
                                    <div class="month">APR</div>
                                    <div class="day">05</div>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="mb-1">Dress Fitting</h6>
                                    <p class="mb-1 small text-muted">
                                        <i class="fas fa-clock me-1"></i> 2:00 PM - 4:00 PM
                                    </p>
                                    <p class="mb-0 small text-muted">
                                        <i class="fas fa-map-marker-alt me-1"></i> Elegant Bridal Boutique
                                    </p>
                                </div>
                                <div>
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Event Item 3 -->
                        <div class="list-group-item p-3">
                            <div class="d-flex">
                                <div class="event-date me-3 text-center">
                                    <div class="month">APR</div>
                                    <div class="day">18</div>
                                </div>
                                <div class="flex-grow-1">
                                    <h6 class="mb-1">Menu Tasting - Elegance Catering</h6>
                                    <p class="mb-1 small text-muted">
                                        <i class="fas fa-clock me-1"></i> 6:00 PM - 8:00 PM
                                    </p>
                                    <p class="mb-0 small text-muted">
                                        <i class="fas fa-map-marker-alt me-1"></i> 789 Gourmet Avenue
                                    </p>
                                </div>
                                <div>
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="${pageContext.request.contextPath}/user/events.jsp" class="btn btn-link text-decoration-none">
                        View all events <i class="fas fa-arrow-right ms-1"></i>
                    </a>
                </div>
            </div>
            
            <!-- Recently Viewed Vendors -->
            <div class="card border-0 shadow-sm slide-in-right delay-2">
                <div class="card-header bg-white py-3">
                    <h5 class="mb-0"><i class="fas fa-store text-primary me-2"></i> Recently Viewed Vendors</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <!-- Vendor Card 1 -->
                        <div class="col-md-6 mb-3">
                            <div class="vendor-card-sm d-flex">
                                <img src="https://images.unsplash.com/photo-1519741347686-c1e0917af82d" 
                                     class="vendor-thumb" alt="Royal Palace Venue">
                                <div class="ps-3">
                                    <h6 class="mb-1">Royal Palace Wedding Venue</h6>
                                    <div class="small mb-2">
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/vendors.jsp?id=1" class="btn btn-sm btn-outline-primary">View</a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Vendor Card 2 -->
                        <div class="col-md-6 mb-3">
                            <div class="vendor-card-sm d-flex">
                                <img src="https://images.unsplash.com/photo-1606800052052-a08af7148866" 
                                     class="vendor-thumb" alt="Perfect Day Planners">
                                <div class="ps-3">
                                    <h6 class="mb-1">Perfect Day Planners</h6>
                                    <div class="small mb-2">
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/vendors.jsp?id=5" class="btn btn-sm btn-outline-primary">View</a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Vendor Card 3 -->
                        <div class="col-md-6 mb-3">
                            <div class="vendor-card-sm d-flex">
                                <img src="https://images.unsplash.com/photo-1604017011039-925286b3e11b" 
                                     class="vendor-thumb" alt="Eternal Moments Photography">
                                <div class="ps-3">
                                    <h6 class="mb-1">Eternal Moments Photography</h6>
                                    <div class="small mb-2">
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star-half-alt text-warning"></i>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/vendors.jsp?id=3" class="btn btn-sm btn-outline-primary">View</a>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Vendor Card 4 -->
                        <div class="col-md-6 mb-3">
                            <div class="vendor-card-sm d-flex">
                                <img src="https://images.unsplash.com/photo-1414235077428-338989a2e8c0" 
                                     class="vendor-thumb" alt="Elegance Gourmet Catering">
                                <div class="ps-3">
                                    <h6 class="mb-1">Elegance Gourmet Catering</h6>
                                    <div class="small mb-2">
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star-half-alt text-warning"></i>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/vendors.jsp?id=2" class="btn btn-sm btn-outline-primary">View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="${pageContext.request.contextPath}/user/vendors.jsp" class="btn btn-link text-decoration-none">
                        Find more vendors <i class="fas fa-arrow-right ms-1"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Dashboard specific styles */
    .avatar-circle {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        background-color: #f8f9fa;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .stat-circle {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        background-color: #f8f9fa;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .countdown-wrapper {
        min-width: 320px;
    }
    
    .countdown-item {
        text-align: center;
        background-color: #f8f9fa;
        border-radius: 8px;
        padding: 10px;
        min-width: 60px;
    }
    
    .event-date {
        background-color: #f8f9fa;
        border-radius: 8px;
        padding: 8px;
        min-width: 60px;
    }
    
    .event-date .month {
        font-size: 0.8rem;
        text-transform: uppercase;
        color: #6c757d;
        font-weight: 600;
    }
    
    .event-date .day {
        font-size: 1.5rem;
        font-weight: 700;
        color: #ff6b6b;
    }
    
    .vendor-thumb {
        width: 70px;
        height: 70px;
        border-radius: 8px;
        object-fit: cover;
    }
    
    .vendor-card-sm {
        padding: 10px;
        border-radius: 8px;
        transition: all 0.3s ease;
    }
    
    .vendor-card-sm:hover {
        background-color: #f8f9fa;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Add event listener to checkboxes to toggle strike-through class
        document.querySelectorAll('.form-check-input').forEach(checkbox => {
            checkbox.addEventListener('change', function() {
                const label = this.nextElementSibling;
                if (this.checked) {
                    label.classList.add('text-decoration-line-through');
                } else {
                    label.classList.remove('text-decoration-line-through');
                }
            });
        });
        
        // Animation on scroll
        function animateElementsInViewport() {
            const elements = document.querySelectorAll('.fade-in-up, .slide-in-left, .slide-in-right, .zoom-in');
            
            elements.forEach(element => {
                const position = element.getBoundingClientRect();
                
                // If element is in viewport
                if(position.top < window.innerHeight && position.bottom >= 0) {
                    // Add animation class if not already animated
                    if (!element.classList.contains('animated')) {
                        element.classList.add('animated');
                    }
                }
            });
        }
        
                // Initial check and scroll event listener
                animateElementsInViewport();
        
        window.addEventListener('scroll', function() {
            animateElementsInViewport();
        });
        
        // Update current datetime in the header
        const headerDatetime = document.querySelector('.navbar-text');
        if (headerDatetime) {
            headerDatetime.innerHTML = '<i class="far fa-clock me-1"></i> 2025-03-13 06:19:51';
        }
        
        // Set user login in the header
        const userDropdown = document.querySelector('#navbarDropdown');
        if (userDropdown) {
            userDropdown.innerHTML = '<i class="fas fa-user-circle me-1"></i> IT24102137';
        }
    });
</script>