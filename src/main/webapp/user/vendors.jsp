<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/components/header.jsp" %>
<%
    // Set page title
    request.setAttribute("pageTitle", "Wedding Vendors");
%>

<!-- Hero Section -->
<div class="container-fluid vendor-hero py-5 mb-5">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-8 col-lg-6">
                <div class="bg-white bg-opacity-75 p-4 rounded-3 slide-in-left">
                    <h1 class="display-4 fw-bold text-primary mb-4">Find Perfect Wedding Vendors</h1>
                    <p class="lead mb-4">Discover top-rated professionals who will make your special day unforgettable</p>

                    <!-- Search Form -->
                    <form class="mb-3">
                        <div class="input-group">
                            <span class="input-group-text bg-white border-end-0">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </span>
                            <input type="text" class="form-control border-start-0" placeholder="Search vendors...">
                            <button class="btn btn-primary" type="submit">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Filters Section -->
<div class="container mb-5">
    <div class="card shadow-sm fade-in-up">
        <div class="card-body">
            <div class="row">
                <div class="col-md-3 mb-3 mb-md-0">
                    <label class="form-label"><i class="fa-solid fa-filter me-2"></i>Category</label>
                    <select class="form-select">
                        <option value="">All Categories</option>
                        <option value="venues">Venues</option>
                        <option value="catering">Catering</option>
                        <option value="photography">Photography</option>
                        <option value="decor">Decor & Flowers</option>
                        <option value="music">Music & Entertainment</option>
                        <option value="beauty">Beauty & Makeup</option>
                    </select>
                </div>
                <div class="col-md-3 mb-3 mb-md-0">
                    <label class="form-label"><i class="fa-solid fa-location-dot me-2"></i>Location</label>
                    <select class="form-select">
                        <option value="">All Locations</option>
                        <option value="north">North Region</option>
                        <option value="south">South Region</option>
                        <option value="east">East Region</option>
                        <option value="west">West Region</option>
                        <option value="central">Central Region</option>
                    </select>
                </div>
                <div class="col-md-3 mb-3 mb-md-0">
                    <label class="form-label"><i class="fa-solid fa-star me-2"></i>Rating</label>
                    <select class="form-select">
                        <option value="">Any Rating</option>
                        <option value="5">5 Stars</option>
                        <option value="4">4+ Stars</option>
                        <option value="3">3+ Stars</option>
                    </select>
                </div>
                <div class="col-md-3 mb-3 mb-md-0">
                    <label class="form-label"><i class="fa-solid fa-dollar-sign me-2"></i>Price Range</label>
                    <select class="form-select">
                        <option value="">Any Price</option>
                        <option value="budget">Budget Friendly</option>
                        <option value="moderate">Moderate</option>
                        <option value="premium">Premium</option>
                        <option value="luxury">Luxury</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Featured Vendors Section -->
<div class="container mb-5">
    <div class="d-flex align-items-center mb-4">
        <h2 class="mb-0"><i class="fas fa-award text-primary me-2"></i> Featured Vendors</h2>
        <hr class="flex-grow-1 ms-3">
    </div>

    <div class="row">
        <!-- Featured Vendor 1 -->
        <div class="col-lg-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card slide-in-left" data-delay="100">
                <div class="row g-0">
                    <div class="col-md-5">
                        <div class="vendor-image-wrapper">
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3">Featured</span>
                            <img src="https://images.unsplash.com/photo-1519167758481-83f550bb49b3" class="img-fluid h-100 w-100 object-fit-cover" alt="Royal Palace Venue">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="badge bg-primary">Venue</span>
                                <div class="vendor-rating">
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <span class="ms-1">5.0 (48 reviews)</span>
                                </div>
                            </div>
                            <h4 class="card-title">Royal Palace Wedding Venue</h4>
                            <p class="card-text"><i class="fas fa-map-marker-alt me-2 text-secondary"></i>Riverside Gardens, Central City</p>
                            <p class="card-text text-truncate-3">Luxury wedding venue with stunning garden views, grand ballroom, and exceptional service for up to 400 guests.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <div class="price">
                                    <span class="text-primary fw-bold">$5,000 - $15,000</span>
                                </div>
                                <a href="#" class="btn btn-sm btn-primary">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Featured Vendor 2 -->
        <div class="col-lg-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card slide-in-right" data-delay="100">
                <div class="row g-0">
                    <div class="col-md-5">
                        <div class="vendor-image-wrapper">
                            <span class="badge bg-danger position-absolute top-0 start-0 m-3">Featured</span>
                            <img src="https://images.unsplash.com/photo-1414235077428-338989a2e8c0" class="img-fluid h-100 w-100 object-fit-cover" alt="Gourmet Catering">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="badge bg-success">Catering</span>
                                <div class="vendor-rating">
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star-half-alt text-warning"></i>
                                    <span class="ms-1">4.7 (36 reviews)</span>
                                </div>
                            </div>
                            <h4 class="card-title">Elegance Gourmet Catering</h4>
                            <p class="card-text"><i class="fas fa-map-marker-alt me-2 text-secondary"></i>Downtown, Central City</p>
                            <p class="card-text text-truncate-3">Award-winning catering service specializing in multi-cultural cuisine, custom menus, and impeccable presentation.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <div class="price">
                                    <span class="text-primary fw-bold">$85 - $150</span>
                                    <small class="text-muted">per person</small>
                                </div>
                                <a href="#" class="btn btn-sm btn-primary">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- All Vendors Section -->
<div class="container mb-5">
    <div class="d-flex align-items-center mb-4">
        <h2 class="mb-0"><i class="fas fa-store text-primary me-2"></i> All Vendors</h2>
        <hr class="flex-grow-1 ms-3">
    </div>

    <div class="row">
        <!-- Vendor 1 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card fade-in-up" data-delay="100">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1604017011039-925286b3e11b" class="card-img-top" alt="Moments Photography">
                    <div class="vendor-category">
                        <span class="badge bg-info">
                            <i class="fas fa-camera me-1"></i> Photography
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Eternal Moments Photography</h5>
                        <div class="vendor-rating small">
                            <i class="fas fa-star text-warning"></i>
                            <span>4.9</span>
                        </div>
                    </div>
                    <p class="card-text text-truncate-3">Capturing your precious moments with artistic style and attention to detail. Specializing in candid photography and cinematic videos.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span class="text-primary fw-bold">$1,800 - $3,500</span>
                        </div>
                        <a href="#" class="btn btn-outline-primary btn-sm">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 2 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card fade-in-up" data-delay="200">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1561673034-2ad21e67c96b" class="card-img-top" alt="Floral Designs">
                    <div class="vendor-category">
                        <span class="badge bg-success">
                            <i class="fas fa-leaf me-1"></i> Florist
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Blooming Paradise Florals</h5>
                        <div class="vendor-rating small">
                            <i class="fas fa-star text-warning"></i>
                            <span>4.8</span>
                        </div>
                    </div>
                    <p class="card-text text-truncate-3">Exquisite floral arrangements that bring your wedding vision to life. From bouquets to venue decorations, we create stunning designs.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span class="text-primary fw-bold">$800 - $3,000</span>
                        </div>
                        <a href="#" class="btn btn-outline-primary btn-sm">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 3 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card fade-in-up" data-delay="300">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1470225620780-dba8ba36b745" class="card-img-top" alt="DJ Services">
                    <div class="vendor-category">
                        <span class="badge bg-danger">
                            <i class="fas fa-music me-1"></i> Entertainment
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Rhythm Masters DJ Services</h5>
                        <div class="vendor-rating small">
                            <i class="fas fa-star text-warning"></i>
                            <span>4.7</span>
                        </div>
                    </div>
                    <p class="card-text text-truncate-3">Professional DJs and MCs to keep your celebration lively and entertaining. Customized playlists and state-of-the-art sound systems.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span class="text-primary fw-bold">$1,200 - $2,500</span>
                        </div>
                        <a href="#" class="btn btn-outline-primary btn-sm">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 4 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card fade-in-up" data-delay="400">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1549451371-64aa98a6f660" class="card-img-top" alt="Wedding Cake">
                    <div class="vendor-category">
                        <span class="badge bg-warning">
                            <i class="fas fa-birthday-cake me-1"></i> Cake & Desserts
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Sweet Delights Bakery</h5>
                        <div class="vendor-rating small">
                            <i class="fas fa-star text-warning"></i>
                            <span>4.9</span>
                        </div>
                    </div>
                    <p class="card-text text-truncate-3">Artisan wedding cakes and dessert tables that taste as amazing as they look. Custom designs to match your wedding theme.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span class="text-primary fw-bold">$500 - $1,500</span>
                        </div>
                        <a href="#" class="btn btn-outline-primary btn-sm">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 5 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card fade-in-up" data-delay="500">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1606800052052-a08af7148866" class="card-img-top" alt="Wedding Planner">
                    <div class="vendor-category">
                        <span class="badge bg-primary">
                            <i class="fas fa-clipboard-list me-1"></i> Planner
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Perfect Day Planners</h5>
                        <div class="vendor-rating small">
                            <i class="fas fa-star text-warning"></i>
                            <span>5.0</span>
                        </div>
                    </div>
                    <p class="card-text text-truncate-3">Full-service wedding planning team that handles everything from concept to execution. Let us take care of the details while you enjoy your day.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span class="text-primary fw-bold">$2,500 - $8,000</span>
                        </div>
                        <a href="#" class="btn btn-outline-primary btn-sm">Details</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Vendor 6 -->
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100 border-0 shadow-sm vendor-card fade-in-up" data-delay="600">
                <div class="vendor-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1522673607200-164d1b3ce551" class="card-img-top" alt="Bridal Makeup">
                    <div class="vendor-category">
                        <span class="badge bg-info">
                            <i class="fas fa-paint-brush me-1"></i> Beauty
                        </span>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-2">
                        <h5 class="card-title mb-0">Glamour Bridal Makeup</h5>
                        <div class="vendor-rating small">
                            <i class="fas fa-star text-warning"></i>
                            <span>4.8</span>
                        </div>
                    </div>
                    <p class="card-text text-truncate-3">Professional makeup artists specializing in bridal beauty. We enhance your natural beauty and ensure your look lasts all day.</p>
                    <div class="d-flex justify-content-between align-items-end mt-3">
                        <div class="price">
                            <span class="text-primary fw-bold">$300 - $800</span>
                        </div>
                        <a href="#" class="btn btn-outline-primary btn-sm">Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Pagination -->
    <nav class="mt-4">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                    <i class="fas fa-chevron-left"></i>
                </a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">
                    <i class="fas fa-chevron-right"></i>
                </a>
            </li>
        </ul>
    </nav>
</div>

<!-- Call to Action Section -->
<div class="container-fluid bg-light py-5 mb-5">
    <div class="container text-center py-3">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="zoom-in">
                    <h3 class="mb-4">Are you a wedding vendor?</h3>
                    <p class="lead mb-4">Join our platform to showcase your services to thousands of couples planning their special day</p>
                    <a href="#" class="btn btn-primary btn-lg">
                        <i class="fas fa-handshake me-2"></i> Partner with Us
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Custom styles for vendors page */
    .vendor-hero {
        background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)), url('https://images.unsplash.com/photo-1519741497674-611481863552');
        background-size: cover;
        background-position: center;
        color: white;
    }

    .vendor-image-wrapper {
        position: relative;
        height: 200px;
        overflow: hidden;
    }

    .vendor-image-wrapper img {
        height: 100%;
        width: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
    }

    .vendor-card:hover .vendor-image-wrapper img {
        transform: scale(1.05);
    }

    .vendor-category {
        position: absolute;
        bottom: 10px;
        left: 10px;
    }

    .text-truncate-3 {
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
        height: 4.5em;
    }

    /* Animation triggers for scroll */
    .vendor-card {
        opacity: 0;
    }

    .vendor-card.animated {
        opacity: 1;
    }
</style>

<script>
    // Animation on scroll
    document.addEventListener("DOMContentLoaded", function() {
        // Initial check for elements in viewport
        animateElementsInViewport();

        // Check on scroll
        window.addEventListener('scroll', function() {
            animateElementsInViewport();
        });

        function animateElementsInViewport() {
            const elements = document.querySelectorAll('.fade-in-up, .slide-in-left, .slide-in-right, .zoom-in, .vendor-card');

            elements.forEach(element => {
                const position = element.getBoundingClientRect();

                // If element is in viewport
                if(position.top < window.innerHeight && position.bottom >= 0) {
                    // Add animation class if not already animated
                    if (!element.classList.contains('animated')) {
                        element.classList.add('animated');

                        // Add delay if specified
                        const delay = element.getAttribute('data-delay');
                        if (delay) {
                            element.style.animationDelay = delay + 'ms';
                        }
                    }
                }
            });
        }
    });
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>