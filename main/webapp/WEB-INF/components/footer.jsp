<!-- Footer -->
<footer class="bg-light mt-5 py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4 mb-md-0">
                <h5 class="mb-3"><i class="fas fa-heart text-primary me-2"></i> Wedding Planner</h5>
                <p class="text-muted">Making your special day perfect, one detail at a time.</p>
                <div class="social-links">
                    <a href="#" class="me-2"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="me-2"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="me-2"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-pinterest"></i></a>
                </div>
            </div>
            <div class="col-md-2 mb-4 mb-md-0">
                <h6 class="mb-3">Quick Links</h6>
                <ul class="list-unstyled">
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/index.jsp" class="text-decoration-none">Home</a></li>
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/vendors.jsp" class="text-decoration-none">Vendors</a></li>
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/events.jsp" class="text-decoration-none">Events</a></li>
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/dashboard.jsp" class="text-decoration-none">Dashboard</a></li>
                </ul>
            </div>
            <div class="col-md-3 mb-4 mb-md-0">
                <h6 class="mb-3">Wedding Services</h6>
                <ul class="list-unstyled">
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/vendors.jsp?category=venue" class="text-decoration-none">Venues</a></li>
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/vendors.jsp?category=catering" class="text-decoration-none">Catering</a></li>
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/vendors.jsp?category=photography" class="text-decoration-none">Photography</a></li>
                    <li class="mb-2"><a href="${pageContext.request.contextPath}/vendors.jsp?category=decor" class="text-decoration-none">Decorations</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h6 class="mb-3">Contact Us</h6>
                <ul class="list-unstyled">
                    <li class="mb-2"><i class="fas fa-map-marker-alt me-2"></i> 123 Wedding Lane, City</li>
                    <li class="mb-2"><i class="fas fa-phone me-2"></i> (123) 456-7890</li>
                    <li class="mb-2"><i class="fas fa-envelope me-2"></i> info@weddingplanner.com</li>
                </ul>
            </div>
        </div>
        <hr>
        <div class="text-center">
            <p class="mb-0 text-muted">&copy; 2025 Wedding Planner. All rights reserved.</p>
            <small class="text-muted">Designed by IT24102137</small>
        </div>
    </div>
</footer>

<!-- jQuery for AJAX -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap JS Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Custom JavaScript -->
<script src="${pageContext.request.contextPath}/assets/js/scripts.js"></script>
<!-- Custom JavaScript -->
<script>
    // Update date and time in the header
    document.addEventListener('DOMContentLoaded', function() {
        const headerDatetime = document.querySelector('.navbar-text');
        if (headerDatetime) {
            headerDatetime.innerHTML = '<i class="far fa-clock me-1"></i> 2025-03-13 05:47:05';
        }
    });
</script>
</body>
</html>