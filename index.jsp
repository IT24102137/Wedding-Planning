<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Wedding Planner</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <style>
        /* Navbar styles */
        .navbar {
            background-color: rgba(255, 255, 255, 0.95) !important;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
        }
        
        .navbar-brand {
            font-weight: 700;
            color: #ff6b6b !important;
        }
        
        .nav-link {
            color: #333;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        .nav-link:hover {
            color: #ff6b6b;
        }
        
        /* Hero section styles */
        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('assets/images/wedding-backgrounds/hero.jpg') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 120px 0;
            text-align: center;
        }
        
        .hero-section h1 {
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }
        
        .hero-section p {
            font-size: 1.25rem;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
        }
        
        .btn-primary {
            background-color: #ff6b6b;
            border-color: #ff6b6b;
            border-radius: 20px;
            padding: 10px 20px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .btn-primary:hover {
            background-color: #ff5252;
            border-color: #ff5252;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 107, 107, 0.4);
        }
        
        .btn-outline-light {
            border-radius: 20px;
            padding: 10px 20px;
            font-weight: 600;
        }
        
        /* Animations */
        .fade-in-up {
            animation: fadeInUp 0.6s ease forwards;
            opacity: 0;
        }
        
        .delay-1 { animation-delay: 0.1s; }
        .delay-2 { animation-delay: 0.2s; }
        .delay-3 { animation-delay: 0.3s; }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translate3d(0, 30px, 0);
            }
            to {
                opacity: 1;
                transform: translate3d(0, 0, 0);
            }
        }
        
        .pulse {
            animation: pulse 1.5s infinite;
        }
        
        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.05);
            }
            100% {
                transform: scale(1);
            }
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <i class="fa-solid fa-ring me-2"></i> Wedding Planner
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user/vendors.jsp">Vendors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user/events.jsp">Events</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto text-center">
                    <h1 class="display-4 mb-4 fade-in-up delay-1">Make Your Wedding Day Perfect</h1>
                    <p class="lead mb-4 fade-in-up delay-2">Plan your dream wedding with our expert wedding planners and premium vendors</p>
                    <div class="fade-in-up delay-3">
                        <a href="register.jsp" class="btn btn-primary btn-lg me-3 pulse">
                            <i class="fa-solid fa-user-plus me-2"></i> Get Started
                        </a>
                        <a href="#features" class="btn btn-outline-light btn-lg">
                            <i class="fa-solid fa-chevron-down me-2"></i> Learn More
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5" id="features">
        <div class="container">
            <h2 class="text-center mb-5">Why Choose Our Wedding Planner</h2>
            
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-gem fa-3x mb-3 text-primary"></i>
                            <h3 class="card-title h5">Premium Vendors</h3>
                            <p class="card-text">Access to a curated list of top-rated wedding vendors for every aspect of your special day.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-calendar-check fa-3x mb-3 text-primary"></i>
                            <h3 class="card-title h5">Easy Planning</h3>
                            <p class="card-text">Streamlined planning tools to organize your events, track RSVPs, and manage your budget.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-heart fa-3x mb-3 text-primary"></i>
                            <h3 class="card-title h5">Personal Touch</h3>
                            <p class="card-text">Customizable options to make your wedding uniquely yours with personalized assistance.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5><i class="fa-solid fa-ring me-2"></i> Wedding Planner</h5>
                    <p>Making your special day perfect with expert planning and premium vendors.</p>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.jsp" class="text-white">Home</a></li>
                        <li><a href="user/vendors.jsp" class="text-white">Vendors</a></li>
                        <li><a href="user/events.jsp" class="text-white">Events</a></li>
                        <li><a href="#" class="text-white">About Us</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact Us</h5>
                    <p>
                        <i class="fa-solid fa-envelope me-2"></i> info@weddingplanner.com<br>
                        <i class="fa-solid fa-phone me-2"></i> +1 (123) 456-7890<br>
                        <i class="fa-solid fa-location-dot me-2"></i> 123 Wedding Street, City
                    </p>
                </div>
            </div>
            <hr class="my-3">
            <div class="text-center">
                <p>&copy; 2025 Wedding Planner. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>