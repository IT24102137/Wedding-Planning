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
    
    <!-- AOS - Animate On Scroll Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <style>
        /* Variables for consistent theming */
        :root {
            --primary: #ff6b6b;
            --primary-dark: #ff5252;
            --secondary: #6c5ce7;
            --light: #f8f9fa;
            --dark: #333;
            --text-light: #fff;
            --gradient-primary: linear-gradient(135deg, #ff6b6b, #ff8e8e);
            --gradient-secondary: linear-gradient(135deg, #6c5ce7, #a594f9);
            --gradient-overlay: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.7));
            --box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            --box-shadow-hover: 0 10px 25px rgba(0, 0, 0, 0.15);
            --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        }
        
        /* General styles */
        body {
            font-family: 'Poppins', sans-serif;
            color: var(--dark);
            overflow-x: hidden;
            scroll-behavior: smooth;
        }
        
        h1, h2, h3, h4, h5, h6 {
            font-weight: 700;
        }
        
        section {
            position: relative;
            overflow: hidden;
        }
        
        /* Navbar styles - Enhanced */
        .navbar {
            background-color: rgba(255, 255, 255, 0.98) !important;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
            transition: var(--transition);
            z-index: 1000;
        }
        
        .navbar.scrolled {
            padding: 10px 0;
        }
        
        .navbar-brand {
            font-weight: 700;
            color: var(--primary) !important;
            display: flex;
            align-items: center;
            transition: var(--transition);
        }
        
        .navbar-brand:hover {
            transform: translateY(-2px);
        }
        
        .navbar-brand i {
            margin-right: 8px;
            font-size: 1.5rem;
            transition: var(--transition);
        }
        
        .navbar-brand:hover i {
            transform: rotate(15deg);
        }
        
        .nav-link {
            color: var(--dark);
            font-weight: 500;
            position: relative;
            padding: 0.5rem 1rem;
            margin: 0 0.25rem;
            transition: var(--transition);
        }
        
        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: var(--transition);
            transform: translateX(-50%);
        }
        
        .nav-link:hover {
            color: var(--primary);
        }
        
        .nav-link:hover::after {
            width: 70%;
        }
        
        /* Hero section styles - Enhanced */
        .hero-section {
            background: var(--gradient-overlay), url('assets/images/wedding-backgrounds/hero.jpg') no-repeat center center;
            background-size: cover;
            background-attachment: fixed; /* Parallax effect */
            color: white;
            padding: 180px 0 160px;
            text-align: center;
            position: relative;
        }
        
        .hero-section::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 80px;
            background: linear-gradient(to top, rgba(255,255,255,1) 20%, rgba(255,255,255,0) 100%);
        }
        
        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: 800;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.5);
            margin-bottom: 1.5rem;
            letter-spacing: 1px;
        }
        
        .hero-section p {
            font-size: 1.4rem;
            font-weight: 400;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.6);
            max-width: 800px;
            margin: 0 auto 2.5rem;
        }
        
        /* Enhanced buttons */
        .btn {
            border-radius: 30px;
            padding: 12px 28px;
            font-weight: 600;
            letter-spacing: 0.5px;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        .btn::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
            z-index: -1;
        }
        
        .btn:hover::after {
            width: 300px;
            height: 300px;
        }
        
        .btn-primary {
            background: var(--gradient-primary);
            border: none;
            box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);
        }
        
        .btn-primary:hover, .btn-primary:focus {
            background: var(--gradient-primary);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(255, 107, 107, 0.5);
        }
        
        .btn-outline-light {
            border: 2px solid white;
            background-color: transparent;
        }
        
        .btn-outline-light:hover {
            background-color: white;
            color: var(--primary) !important;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 255, 255, 0.4);
        }
        
        .btn i {
            transition: var(--transition);
        }
        
        .btn:hover i {
            transform: translateX(3px);
        }
        
        /* Enhanced Features Section */
        #features {
            padding: 100px 0;
            background: linear-gradient(180deg, rgba(248,249,250,1) 0%, rgba(255,255,255,1) 100%);
        }
        
        #features h2 {
            font-size: 2.5rem;
            position: relative;
            padding-bottom: 20px;
            margin-bottom: 60px;
        }
        
        #features h2:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: var(--primary);
        }
        
        .card {
            border: none;
            border-radius: 15px;
            padding: 1.5rem;
            height: 100%;
            box-shadow: var(--box-shadow);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }
        
        .card:hover {
            transform: translateY(-10px);
            box-shadow: var(--box-shadow-hover);
        }
        
        .card::before {
            content: '';
            position: absolute;
            top: -100px;
            left: -100px;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background: rgba(255, 107, 107, 0.05);
            transition: var(--transition);
            z-index: 0;
        }
        
        .card:hover::before {
            transform: scale(3);
        }
        
        .card-body {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .card i {
            color: var(--primary);
            background: rgba(255, 107, 107, 0.1);
            width: 80px;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin-bottom: 1.5rem;
            transition: var(--transition);
        }
        
        .card:hover i {
            transform: rotateY(180deg);
            background: var(--primary);
            color: white;
        }
        
        .card-title {
            font-weight: 700;
            margin-bottom: 1rem;
        }
        
        .card-text {
            color: #6c757d;
            text-align: center;
        }
        
        /* Enhanced Footer */
        footer {
            background: linear-gradient(135deg, #333 0%, #222 100%);
            color: white;
            padding: 60px 0 30px;
        }
        
        footer h5 {
            position: relative;
            padding-bottom: 15px;
            margin-bottom: 20px;
        }
        
        footer h5::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 2px;
            background: var(--primary);
        }
        
        footer a {
            color: rgba(255,255,255,0.8);
            transition: var(--transition);
            display: inline-block;
            padding: 4px 0;
            text-decoration: none;
        }
        
        footer a:hover {
            color: var(--primary);
            transform: translateX(5px);
        }
        
        footer .contact-info i {
            width: 25px;
            color: var(--primary);
            margin-right: 10px;
        }
        
        footer .social-icons {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }
        
        footer .social-icons a {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }
        
        footer .social-icons a:hover {
            background: var(--primary);
            transform: translateY(-5px);
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
                box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);
            }
            50% {
                transform: scale(1.05);
                box-shadow: 0 8px 20px rgba(255, 107, 107, 0.6);
            }
            100% {
                transform: scale(1);
                box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);
            }
        }
        
        /* Floating elements animation */
        .floating {
            animation: floating 3s ease-in-out infinite;
        }
        
        @keyframes floating {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }
        
        /* Text highlight for testimonial section */
        .highlight {
            color: var(--primary);
            position: relative;
            display: inline-block;
        }
        
        .highlight::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 8px;
            background: rgba(255, 107, 107, 0.2);
            bottom: 0;
            left: 0;
            z-index: -1;
        }
        
        /* Additional section - Testimonials */
        .testimonials {
            padding: 100px 0;
            background: linear-gradient(180deg, #fff 0%, #f8f9fa 100%);
        }
        
        .testimonial-quote {
            font-size: 24px;
            line-height: 1.6;
            font-style: italic;
            position: relative;
            padding: 0 20px;
        }
        
        .testimonial-quote::before, 
        .testimonial-quote::after {
            content: '"';
            font-size: 60px;
            color: var(--primary);
            line-height: 0;
            position: absolute;
        }
        
        .testimonial-quote::before {
            left: -5px;
            top: 30px;
        }
        
        .testimonial-quote::after {
            right: -5px;
            bottom: -10px;
        }
        
        /* Scroll-to-top button */
        .scroll-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 45px;
            height: 45px;
            background: var(--primary);
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
            z-index: 999;
        }
        
        .scroll-to-top.active {
            opacity: 1;
            visibility: visible;
        }
        
        .scroll-to-top:hover {
            background: var(--primary-dark);
            transform: translateY(-3px);
        }
        
        /* Custom shapes for design elements */
        .shape-divider {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            overflow: hidden;
            line-height: 0;
        }

        .shape-divider svg {
            position: relative;
            display: block;
            width: calc(100% + 1.3px);
            height: 60px;
        }

        .shape-divider .shape-fill {
            fill: #FFFFFF;
        }
    </style>
</head>
<body>
    <!-- Scroll to top button -->
    <div class="scroll-to-top">
        <i class="fas fa-arrow-up"></i>
    </div>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <i class="fa-solid fa-heart-pulse"></i> Wedding Planner
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp"><i class="fas fa-home me-1"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user/vendors.jsp"><i class="fas fa-store me-1"></i> Vendors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user/events.jsp"><i class="fas fa-calendar-heart me-1"></i> Events</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp"><i class="fas fa-sign-in-alt me-1"></i> Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-sm btn-primary text-white ms-2" href="register.jsp"><i class="fas fa-user-plus me-1"></i> Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 mx-auto text-center">
                    <h1 class="display-4 mb-4 fade-in-up delay-1" data-aos="fade-up">Make Your <span class="highlight">Wedding Day</span> Perfect</h1>
                    <p class="lead mb-4 fade-in-up delay-2" data-aos="fade-up" data-aos-delay="100">Plan your dream wedding with our expert wedding planners and premium vendors</p>
                    <div class="fade-in-up delay-3" data-aos="fade-up" data-aos-delay="200">
                        <a href="register.jsp" class="btn btn-primary btn-lg me-3 pulse">
                            <i class="fa-solid fa-heart me-2"></i> Get Started
                        </a>
                        <a href="#features" class="btn btn-outline-light btn-lg scroll-btn">
                            <i class="fa-solid fa-chevron-down me-2"></i> Learn More
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="shape-divider">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
            </svg>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5" id="features">
        <div class="container">
            <h2 class="text-center mb-5" data-aos="fade-up">Why Choose Our Wedding Planner</h2>
            
            <div class="row">
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-gem fa-3x mb-3"></i>
                            <h3 class="card-title h5">Premium Vendors</h3>
                            <p class="card-text">Access to a curated list of top-rated wedding vendors for every aspect of your special day.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-calendar-check fa-3x mb-3"></i>
                            <h3 class="card-title h5">Easy Planning</h3>
                            <p class="card-text">Streamlined planning tools to organize your events, track RSVPs, and manage your budget.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="card h-100">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-heart fa-3x mb-3"></i>
                            <h3 class="card-title h5">Personal Touch</h3>
                            <p class="card-text">Customizable options to make your wedding uniquely yours with personalized assistance.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Testimonials Section - New -->
    <section class="testimonials">
        <div class="container">
            <h2 class="text-center mb-5" data-aos="fade-up">What Our Couples Say</h2>
            
            <div class="row">
                <div class="col-lg-8 mx-auto text-center" data-aos="fade-up">
                    <div class="testimonial-quote mb-4">
                        Planning our wedding was stress-free and amazing with Wedding Planner. Everything was perfect!
                    </div>
                    <div class="d-flex align-items-center justify-content-center">
                        <div class="avatar me-3">
                            <img src="https://via.placeholder.com/60" alt="Testimonial" class="rounded-circle">
                        </div>
                        <div class="text-start">
                            <h5 class="mb-0">Rahul & Priya</h5>
                            <small class="text-muted">Colombo, Sri Lnaka</small>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="text-center mt-5" data-aos="fade-up">
                <a href="#" class="btn btn-outline-primary">
                    <i class="fas fa-star me-2"></i> Read More Stories
                </a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4 mb-md-0" data-aos="fade-up">
                    <h5><i class="fa-solid fa-heart-pulse me-2"></i> Wedding Planner</h5>
                    <p class="mb-3">Making your special day perfect with expert planning and premium vendors.</p>
                    <div class="social-icons">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-pinterest"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col-md-4 mb-4 mb-md-0" data-aos="fade-up" data-aos-delay="100">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.jsp"><i class="fas fa-chevron-right me-2"></i>Home</a></li>
                        <li><a href="user/vendors.jsp"><i class="fas fa-chevron-right me-2"></i>Vendors</a></li>
                        <li><a href="user/events.jsp"><i class="fas fa-chevron-right me-2"></i>Events</a></li>
                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i>About Us</a></li>
                    </ul>
                </div>
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <h5>Contact Us</h5>
                    <div class="contact-info">
                        <p>
                            <i class="fa-solid fa-envelope"></i> janithmihijaya123@gmail.com
                        </p>
                        <p>
                            <i class="fa-solid fa-phone"></i> +94703638365
                        </p>
                        <p>
                            <i class="fa-solid fa-location-dot"></i> 123 Home ,Homagama , Sri Lanka
                        </p>
                    </div>
                </div>
            </div>
            <hr class="my-4">
            <div class="text-center" data-aos="fade-up">
                <p>&copy; 2025 Janith Deshan. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- AOS - Animate On Scroll -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        $(document).ready(function() {
            // Initialize AOS
            AOS.init({
                duration: 800,
                easing: 'ease-in-out',
                once: true
            });
            
            // Navbar scroll effect
            $(window).scroll(function() {
                if($(window).scrollTop() > 50) {
                    $('.navbar').addClass('scrolled');
                } else {
                    $('.navbar').removeClass('scrolled');
                }
                
                // Show/hide scroll-to-top button
                if($(window).scrollTop() > 300) {
                    $('.scroll-to-top').addClass('active');
                } else {
                    $('.scroll-to-top').removeClass('active');
                }
            });
            
            // Scroll to top functionality
            $('.scroll-to-top').click(function() {
                $('html, body').animate({scrollTop: 0}, 800);
                return false;
            });
            
            // Smooth scroll to sections
            $('.scroll-btn').click(function(e) {
                e.preventDefault();
                var target = $($(this).attr('href'));
                
                if(target.length) {
                    $('html, body').animate({
                        scrollTop: target.offset().top - 80
                    }, 800);
                }
            });
            
            // Card hover effects
            $('.card').hover(
                function() {
                    $(this).find('i').addClass('fa-bounce');
                },
                function() {
                    $(this).find('i').removeClass('fa-bounce');
                }
            );
            
            // Nav link hover effects
            $('.nav-link').hover(
                function() {
                    $(this).find('i').addClass('fa-bounce');
                },
                function() {
                    $(this).find('i').removeClass('fa-bounce');
                }
            );
            
            // Floating animation for specific elements
            setInterval(function() {
                $('.pulse').toggleClass('floating');
            }, 3000);
            
            // Animated counter (for statistics if you add them)
            function animateCounter(element) {
                var currentValue = 0;
                var target = parseInt($(element).attr('data-target'));
                var increment = target / 70; // Speed of count
                
                var interval = setInterval(function() {
                    currentValue += increment;
                    $(element).text(Math.floor(currentValue));
                    
                    if(currentValue >= target) {
                        clearInterval(interval);
                        $(element).text(target);
                    }
                }, 20);
            }
            
            // Only start counter animation when element is in viewport
            $('.counter').each(function() {
                var element = this;
                var waypoint = new Waypoint({
                    element: element,
                    handler: function() {
                        animateCounter(element);
                        this.destroy();
                    },
                    offset: '90%'
                });
            });
            
            // Parallax effect for hero section
            $(window).scroll(function() {
                var scrollPosition = $(window).scrollTop();
                $('.hero-section').css({
                    'background-position': '50% ' + (50 + (scrollPosition * 0.05)) + '%'
                });
            });
        });
    </script>
</body>
</html>