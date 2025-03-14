<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<%
    // Set page title
    request.setAttribute("pageTitle", "Your Dashboard");

    // Get current date for wedding countdown - normally would come from database
    String weddingDate = "June 15, 2025";
    String currentDate = "2025-03-13"; // From user input
%>

<div class="container py-5">
    <!-- Welcome Banner -->
    <div class="row mb-5">
        <div class="col-12">
            <div class="card">
                <div class="card-body bg-light p-4 text-center fade-in-up">
                    <h2 class="mb-3">Welcome, Priya Sharma!</h2>
                    <p class="text-muted mb-0">User ID: IT24102137</p>
                    <p class="lead mb-4 fade-in-up delay-1">Your wedding day is our priority. Explore our services to make your special day perfect.</p>
                    <div class="mt-4 fade-in-up delay-2">
                        <a href="${pageContext.request.contextPath}/user/vendors.jsp" class="btn btn-primary me-2 pulse">
                            <i class="fas fa-store-alt me-2"></i> Browse Vendors
                        </a>
                        <a href="${pageContext.request.contextPath}/user/events.jsp" class="btn btn-outline-primary">
                            <i class="fas fa-calendar-plus me-2"></i> Plan Event
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Quick Stats -->
    <div class="row mb-5">
        <div class="col-md-4 mb-4">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.1s;">
                <div class="card-body text-center">
                    <div class="rounded-circle bg-light p-3 mb-3 mx-auto" style="width: 80px; height: 80px;">
                        <i class="fas fa-calendar-day fa-3x" style="color: #ff6b6b;"></i>
                    </div>
                    <h4 class="card-title">Wedding Date</h4>
                    <p class="card-text fs-5">June 15, 2025</p>
                    <p class="text-muted">94 days remaining</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.2s;">
                <div class="card-body text-center">
                    <div class="rounded-circle bg-light p-3 mb-3 mx-auto" style="width: 80px; height: 80px;">
                        <i class="fas fa-clipboard-list fa-3x" style="color: #4ecdc4;"></i>
                    </div>
                    <h4 class="card-title">Planning Progress</h4>
                    <div class="progress mb-2" style="height: 8px;">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 65%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="text-muted">65% tasks completed</p>
                    <p class="text-muted small">Last updated: March 13, 2025</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card h-100 slide-in-left" style="animation-delay: 0.3s;">
                <div class="card-body text-center">
                    <div class="rounded-circle bg-light p-3 mb-3 mx-auto" style="width: 80px; height: 80px;">
                        <i class="fas fa-user-check fa-3x" style="color: #ffb347;"></i>
                    </div>
                    <h4 class="card-title">Confirmed Guests</h4>
                    <p class="card-text fs-5">78 / 120</p>
                    <p class="text-muted">42 responses pending</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Recent Bookings and To-Do Tasks -->
    <div class="row">
        <!-- Recent Bookings -->
        <div class="col-md-6 mb-4">
            <div class="card h-100 zoom-in" style="animation-delay: 0.2s;">
                <div class="card-header bg-white">
                    <h5 class="mb-0"><i class="fas fa-bookmark me-2"></i> Your Bookings</h5>
                </div>
                <div class="card-body p-0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <img src="${pageContext.request.contextPath}/assets/images/vendor-images/venue.jpg" class="rounded" alt="Venue" width="70" height="70">
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h6 class="mb-1">Silver Bay Resort</h6>
                                        <span class="badge bg-success">Confirmed</span>
                                    </div>
                                    <p class="text-muted mb-0 small">Venue | June 15, 2025</p>
                                    <div class="mt-2">
                                        <a href="#" class="btn btn-sm btn-outline-primary">Details</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <img src="${pageContext.request.contextPath}/assets/images/vendor-images/catering.jpg" class="rounded" alt="Catering" width="70" height="70">
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h6 class="mb-1">Gourmet Delights</h6>
                                        <span class="badge bg-success">Confirmed</span>
                                    </div>
                                    <p class="text-muted mb-0 small">Catering | June 15, 2025</p>
                                    <p class="text-muted mb-0 small">Booked on: March 10, 2025</p>
                                    <div class="mt-2">
                                        <a href="#" class="btn btn-sm btn-outline-primary">Details</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <img src="${pageContext.request.contextPath}/assets/images/vendor-images/photography.jpg" class="rounded" alt="Photography" width="70" height="70">
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h6 class="mb-1">Eternal Moments Photography</h6>
                                        <span class="badge bg-warning">Pending</span>
                                    </div>
                                    <p class="text-muted mb-0 small">Photography | June 15, 2025</p>
                                    <p class="text-muted mb-0 small">Requested on: March 13, 2025</p>
                                    <div class="mt-2">
                                        <a href="#" class="btn btn-sm btn-outline-primary">Details</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="${pageContext.request.contextPath}/user/vendors.jsp" class="btn btn-sm btn-primary">
                        <i class="fas fa-plus me-1"></i> Book More Services
                    </a>
                </div>
            </div>
        </div>

        <!-- To-Do Tasks -->
        <div class="col-md-6 mb-4">
            <div class="card h-100 zoom-in" style="animation-delay: 0.3s;">
                <div class="card-header bg-white d-flex justify-content-between align-items-center">
                    <h5 class="mb-0"><i class="fas fa-tasks me-2"></i> Planning Checklist</h5>
                    <a href="#" class="btn btn-sm btn-outline-primary">
                        <i class="fas fa-plus"></i>
                    </a>
                </div>
                <div class="card-body">
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="task1" checked>
                        <label class="form-check-label text-decoration-line-through" for="task1">
                            Book wedding venue
                        </label>
                        <span class="badge bg-info float-end">3 months ago</span>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="task2" checked>
                        <label class="form-check-label text-decoration-line-through" for="task2">
                            Hire a photographer
                        </label>
                        <span class="badge bg-info float-end">March 13, 2025</span>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="task3" checked>
                        <label class="form-check-label text-decoration-line-through" for="task3">
                            Choose catering service
                        </label>
                        <span class="badge bg-info float-end">March 10, 2025</span>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="task4">
                        <label class="form-check-label" for="task4">
                            Send out invitations
                        </label>
                        <span class="badge bg-danger float-end">Due in 7 days</span>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="task5">
                        <label class="form-check-label" for="task5">
                            Schedule final dress fitting
                        </label>
                        <span class="badge bg-warning float-end">Due in 14 days</span>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="task6">
                        <label class="form-check-label" for="task6">
                            Arrange transportation for the day
                        </label>
                        <span class="badge bg-warning float-end">Due in 21 days</span>
                    </div>
                </div>
                <div class="card-footer bg-white">
                    <div class="progress" style="height: 5px;">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 65%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="d-flex justify-content-between mt-2">
                        <small class="text-muted">13 of 20 tasks completed</small>
                        <a href="#" class="text-decoration-none small">View All Tasks</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Wedding Countdown and Budget Overview -->
    <div class="row">
        <!-- Wedding Countdown -->
        <div class="col-md-6 mb-4">
            <div class="card h-100 slide-in-right" style="animation-delay: 0.2s;">
                <div class="card-body text-center">
                    <h5 class="card-title"><i class="fas fa-clock me-2"></i> Wedding Countdown</h5>
                    <div class="row mt-4">
                        <div class="col-3">
                            <div class="bg-light rounded-circle p-3 mx-auto" style="width: 70px; height: 70px;">
                                <h3 class="mb-0">94</h3>
                            </div>
                            <p class="mt-2">Days</p>
                        </div>
                        <div class="col-3">
                            <div class="bg-light rounded-circle p-3 mx-auto" style="width: 70px; height: 70px;">
                                <h3 class="mb-0">19</h3>
                            </div>
                            <p class="mt-2">Hours</p>
                        </div>
                        <div class="col-3">
                            <div class="bg-light rounded-circle p-3 mx-auto" style="width: 70px; height: 70px;">
                                <h3 class="mb-0">03</h3>
                            </div>
                            <p class="mt-2">Minutes</p>
                        </div>
                        <div class="col-3">
                            <div class="bg-light rounded-circle p-3 mx-auto" style="width: 70px; height: 70px;">
                                <h3 class="mb-0">30</h3>
                            </div>
                            <p class="mt-2">Seconds</p>
                        </div>
                    </div>
                    <p class="mt-4 pulse">Your wedding journey begins on <strong>June 15, 2025</strong></p>
                    <p class="text-muted small">Current date: March 13, 2025 04:56:30</p>
                </div>
            </div>
        </div>

        <!-- Budget Overview -->
        <div class="col-md-6 mb-4">
            <div class="card h-100 slide-in-right" style="animation-delay: 0.3s;">
                <div class="card-header bg-white">
                    <h5 class="mb-0"><i class="fas fa-money-bill-wave me-2"></i> Budget Overview</h5>
                </div>
                <div class="card-body">
                    <div class="row align-items-center mb-4">
                        <div class="col-md-6">
                            <div class="d-flex align-items-center">
                                <div class="circle-progress" data-value="0.70" data-size="100" data-thickness="10" data-color="#ff6b6b">
                                    <strong class="text-primary">70%</strong>
                                </div>
                                <div class="ms-3">
                                    <h6 class="mb-0">Total Budget</h6>
                                    <p class="mb-0">$21,000 of $30,000</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="small text-muted mb-1">Budget Allocation</div>
                            <div class="mb-2">
                                <span>Venue & Catering</span>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <small>$12,000</small>
                                    <small>40%</small>
                                </div>
                            </div>
                            <div class="mb-2">
                                <span>Photography</span>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 20%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <small>$6,000</small>
                                    <small>20%</small>
                                </div>
                            </div>
                            <div>
                                <span>Other Services</span>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 10%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <small>$3,000</small>
                                    <small>10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <p class="mb-1">Remaining Budget</p>
                            <h4 class="text-success mb-0">$9,000</h4>
                        </div>
                        <div class="col-md-6 text-end">
                            <p class="mb-1">Last Updated</p>
                            <p class="text-muted mb-0">March 13, 2025</p>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white text-center">
                    <a href="#" class="btn btn-sm btn-outline-primary">Manage Budget</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript for Circle Progress -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Circle progress animation
        document.querySelectorAll('.circle-progress').forEach(function(el) {
            let value = el.getAttribute('data-value');
            let size = el.getAttribute('data-size');
            let thickness = el.getAttribute('data-thickness');
            let color = el.getAttribute('data-color');

            el.style.width = size + 'px';
            el.style.height = size + 'px';
            el.style.position = 'relative';

            let circle = document.createElement('canvas');
            circle.width = size;
            circle.height = size;
            el.appendChild(circle);

            let ctx = circle.getContext('2d');

            // Background circle
            ctx.beginPath();
            ctx.arc(size/2, size/2, size/2 - thickness/2, 0, 2 * Math.PI);
            ctx.strokeStyle = '#f1f1f1';
            ctx.lineWidth = thickness;
            ctx.stroke();

            // Progress circle animation
            let startAngle = -0.5 * Math.PI;
            let endAngle = startAngle;
            let targetAngle = startAngle + (value * 2 * Math.PI);

            function animateCircle() {
                ctx.clearRect(0, 0, size, size);

                // Background circle
                ctx.beginPath();
                ctx.arc(size/2, size/2, size/2 - thickness/2, 0, 2 * Math.PI);
                ctx.strokeStyle = '#f1f1f1';
                ctx.lineWidth = thickness;
                ctx.stroke();

                // Progress circle
                ctx.beginPath();
                ctx.arc(size/2, size/2, size/2 - thickness/2, startAngle, endAngle);
                ctx.strokeStyle = color;
                ctx.lineWidth = thickness;
                ctx.stroke();

                if (endAngle < targetAngle) {
                    endAngle += 0.05;
                    requestAnimationFrame(animateCircle);
                }
            }

            // Position the percentage text in the center
            let strongEl = el.querySelector('strong');
            if (strongEl) {
                strongEl.style.position = 'absolute';
                strongEl.style.top = '50%';
                strongEl.style.left = '50%';
                strongEl.style.transform = 'translate(-50%, -50%)';
                strongEl.style.fontSize = (size / 4) + 'px';
                strongEl.style.fontWeight = '600';
            }

            setTimeout(animateCircle, 500);
        });
    });
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>