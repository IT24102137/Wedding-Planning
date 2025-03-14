<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<%
    // Set page title
    request.setAttribute("pageTitle", "My Wedding Events");

    // Set event date for examples
    String weddingDate = "June 15, 2025";
    String currentDateTime = "2025-03-13 06:50:20";
%>

<!-- Hero Section -->
<div class="container-fluid event-hero py-5 mb-5">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-8 col-lg-6">
                <div class="bg-white bg-opacity-75 p-4 rounded-3 slide-in-left">
                    <h1 class="display-4 fw-bold text-primary mb-4">My Wedding Journey</h1>
                    <p class="lead mb-4">Create and manage the special moments leading up to your big day</p>

                    <div class="d-flex mb-3">
                        <a href="#createEvent" class="btn btn-primary me-2 pulse">
                            <i class="fas fa-calendar-plus me-2"></i> Create Event
                        </a>
                        <a href="#timeline" class="btn btn-outline-primary">
                            <i class="fas fa-clock me-2"></i> View Timeline
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Wedding Countdown -->
<div class="container mb-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card border-0 shadow-sm overflow-hidden fade-in-up">
                <div class="row g-0">
                    <div class="col-md-5">
                        <div class="h-100 position-relative">
                            <img src="https://images.unsplash.com/photo-1583939003579-730e3918a45a" class="img-fluid h-100 w-100 object-fit-cover" alt="Couple">
                            <div class="position-absolute bottom-0 start-0 p-3 w-100 bg-gradient-dark text-white">
                                <h5 class="mb-0">Priya & Rahul</h5>
                                <p class="mb-0 small">Getting married on ${weddingDate}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card-body text-center">
                            <h3 class="card-title mb-4">Counting Down to Forever</h3>

                            <div class="countdown d-flex justify-content-center gap-3 mb-4">
                                <div class="countdown-box bg-light rounded text-center p-2">
                                    <div class="display-5 fw-bold text-primary">94</div>
                                    <div class="small text-uppercase fw-bold text-muted">Days</div>
                                </div>
                                <div class="countdown-box bg-light rounded text-center p-2">
                                    <div class="display-5 fw-bold text-primary">12</div>
                                    <div class="small text-uppercase fw-bold text-muted">Hours</div>
                                </div>
                                <div class="countdown-box bg-light rounded text-center p-2">
                                    <div class="display-5 fw-bold text-primary">47</div>
                                    <div class="small text-uppercase fw-bold text-muted">Minutes</div>
                                </div>
                                <div class="countdown-box bg-light rounded text-center p-2">
                                    <div class="display-5 fw-bold text-primary">16</div>
                                    <div class="small text-uppercase fw-bold text-muted">Seconds</div>
                                </div>
                            </div>

                            <a href="#createEvent" class="btn btn-outline-primary">
                                <i class="fas fa-calendar-day me-2"></i> View Wedding Day Schedule
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Event Timeline -->
<div class="container mb-5" id="timeline">
    <div class="d-flex align-items-center mb-4">
        <h2 class="mb-0"><i class="fas fa-clock text-primary me-2"></i> Wedding Timeline</h2>
        <hr class="flex-grow-1 ms-3">
    </div>

    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="card border-0 shadow-sm fade-in-up">
                <div class="card-body p-0">
                    <!-- Timeline Header with Date -->
                    <div class="bg-light p-3 text-center">
                        <h4 class="mb-0">
                            <i class="fas fa-calendar-day me-2"></i>
                            ${weddingDate}
                        </h4>
                        <p class="text-muted mb-0">Saturday</p>
                    </div>

                    <!-- Timeline Content -->
                    <div class="p-4">
                        <div class="timeline-wrapper">
                            <!-- Timeline Item 1 -->
                            <div class="timeline-item slide-in-right" style="animation-delay: 100ms;">
                                <div class="timeline-badge bg-info">
                                    <i class="fas fa-glass-cheers"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <div class="d-flex justify-content-between align-items-center mb-1">
                                            <h5 class="mb-0">Welcome Reception</h5>
                                            <span class="badge bg-info">9:00 AM</span>
                                        </div>
                                        <p class="text-muted"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Garden Area</p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Guests arrive and are welcomed with refreshments. Live music and mingling before the ceremony begins.</p>
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-sm btn-outline-primary me-2">
                                                <i class="fas fa-edit me-1"></i> Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash-alt me-1"></i> Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Timeline Item 2 -->
                            <div class="timeline-item slide-in-left" style="animation-delay: 200ms;">
                                <div class="timeline-badge bg-danger">
                                    <i class="fas fa-heart"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <div class="d-flex justify-content-between align-items-center mb-1">
                                            <h5 class="mb-0">Wedding Ceremony</h5>
                                            <span class="badge bg-danger">11:00 AM</span>
                                        </div>
                                        <p class="text-muted"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Main Hall</p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>The official wedding ceremony where vows will be exchanged. Formal dress code.</p>
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-sm btn-outline-primary me-2">
                                                <i class="fas fa-edit me-1"></i> Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash-alt me-1"></i> Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Timeline Item 3 -->
                            <div class="timeline-item slide-in-right" style="animation-delay: 300ms;">
                                <div class="timeline-badge bg-success">
                                    <i class="fas fa-utensils"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <div class="d-flex justify-content-between align-items-center mb-1">
                                            <h5 class="mb-0">Wedding Lunch</h5>
                                            <span class="badge bg-success">1:00 PM</span>
                                        </div>
                                        <p class="text-muted"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Dining Hall</p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Gourmet three-course meal catered by Elegance Gourmet Catering. Vegetarian options available.</p>
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-sm btn-outline-primary me-2">
                                                <i class="fas fa-edit me-1"></i> Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash-alt me-1"></i> Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Timeline Item 4 -->
                            <div class="timeline-item slide-in-left" style="animation-delay: 400ms;">
                                <div class="timeline-badge bg-warning">
                                    <i class="fas fa-camera"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <div class="d-flex justify-content-between align-items-center mb-1">
                                            <h5 class="mb-0">Photo Session</h5>
                                            <span class="badge bg-warning">3:00 PM</span>
                                        </div>
                                        <p class="text-muted"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Gardens & Lakeside</p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Professional photography session with Eternal Moments Photography. Family photos and couple portraits.</p>
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-sm btn-outline-primary me-2">
                                                <i class="fas fa-edit me-1"></i> Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash-alt me-1"></i> Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Timeline Item 5 -->
                            <div class="timeline-item slide-in-right" style="animation-delay: 500ms;">
                                <div class="timeline-badge bg-primary">
                                    <i class="fas fa-music"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <div class="d-flex justify-content-between align-items-center mb-1">
                                            <h5 class="mb-0">Reception & Dance</h5>
                                            <span class="badge bg-primary">6:00 PM</span>
                                        </div>
                                        <p class="text-muted"><i class="fas fa-map-marker-alt me-2"></i>Silver Bay Resort - Grand Ballroom</p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Evening celebration with DJ music, dancing, and open bar. Special performances and cake cutting ceremony.</p>
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-sm btn-outline-primary me-2">
                                                <i class="fas fa-edit me-1"></i> Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash-alt me-1"></i> Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-center mt-4">
                            <button class="btn btn-primary" id="createEvent">
                                <i class="fas fa-plus me-2"></i> Add New Event
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- My Events Section -->
<div class="container mb-5" id="myEvents">
    <div class="d-flex align-items-center mb-4">
        <h2 class="mb-0"><i class="fas fa-calendar-check text-primary me-2"></i> My Events</h2>
        <hr class="flex-grow-1 ms-3">
    </div>

    <div class="row">
        <!-- Event Card 1 -->
        <div class="col-lg-6 mb-4">
            <div class="card border-0 shadow-sm h-100 fade-in-up" style="animation-delay: 100ms;">
                <div class="card-header bg-primary text-white py-3 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0"><i class="fas fa-glass-cheers me-2"></i> Pre-Wedding Dinner</h5>
                    <span class="badge bg-light text-primary">4 days before</span>
                </div>
                <div class="card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3 text-center">
                            <div class="month">JUN</div>
                            <div class="day">11</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Family Dinner</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 7:00 PM - 10:00 PM</p>
                            <p class="text-muted mb-0"><i class="fas fa-map-marker-alt me-1"></i> Riverside Restaurant</p>
                        </div>
                    </div>
                    <p>Intimate dinner with close family members before the wedding. Special menu prepared by the chef.</p>
                    <div class="row text-center mt-3">
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-user-friends text-secondary"></i></div>
                            <p class="small text-muted mb-0">Attendees</p>
                            <h6>25</h6>
                        </div>
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-check-circle text-success"></i></div>
                            <p class="small text-muted mb-0">Confirmed</p>
                            <h6>20</h6>
                        </div>
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-question-circle text-warning"></i></div>
                            <p class="small text-muted mb-0">Pending</p>
                            <h6>5</h6>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white">
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-outline-primary btn-sm">
                            <i class="fas fa-edit me-1"></i> Edit
                        </button>
                        <button class="btn btn-outline-success btn-sm">
                            <i class="fas fa-paper-plane me-1"></i> Send Reminders
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Event Card 2 -->
        <div class="col-lg-6 mb-4">
            <div class="card border-0 shadow-sm h-100 fade-in-up" style="animation-delay: 200ms;">
                <div class="card-header bg-info text-white py-3 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0"><i class="fas fa-spa me-2"></i> Bridal Shower</h5>
                    <span class="badge bg-light text-info">2 weeks before</span>
                </div>
                <div class="card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3 text-center">
                            <div class="month">JUN</div>
                            <div class="day">01</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Ladies Celebration</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 2:00 PM - 6:00 PM</p>
                            <p class="text-muted mb-0"><i class="fas fa-map-marker-alt me-1"></i> Serene Spa &amp; Resort</p>
                        </div>
                    </div>
                    <p>Relaxing spa day and celebration for the bride and her friends. Includes spa treatments, games, and light refreshments.</p>
                    <div class="row text-center mt-3">
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-user-friends text-secondary"></i></div>
                            <p class="small text-muted mb-0">Attendees</p>
                            <h6>15</h6>
                        </div>
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-check-circle text-success"></i></div>
                            <p class="small text-muted mb-0">Confirmed</p>
                            <h6>12</h6>
                        </div>
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-question-circle text-warning"></i></div>
                            <p class="small text-muted mb-0">Pending</p>
                            <h6>3</h6>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white">
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-outline-primary btn-sm">
                            <i class="fas fa-edit me-1"></i> Edit
                        </button>
                        <button class="btn btn-outline-success btn-sm">
                            <i class="fas fa-paper-plane me-1"></i> Send Reminders
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Event Card 3 -->
        <div class="col-lg-6 mb-4">
            <div class="card border-0 shadow-sm h-100 fade-in-up" style="animation-delay: 300ms;">
                <div class="card-header bg-success text-white py-3 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0"><i class="fas fa-gifts me-2"></i> Gift Opening</h5>
                    <span class="badge bg-light text-success">1 day after</span>
                </div>
                <div class="card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3 text-center">
                            <div class="month">JUN</div>
                            <div class="day">16</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Post-Wedding Brunch</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 11:00 AM - 2:00 PM</p>
                            <p class="text-muted mb-0"><i class="fas fa-map-marker-alt me-1"></i> Silver Bay Resort - Terrace</p>
                        </div>
                    </div>
                    <p>Casual brunch with family and close friends to open wedding gifts and spend time together before departing.</p>
                    <div class="row text-center mt-3">
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-user-friends text-secondary"></i></div>
                            <p class="small text-muted mb-0">Attendees</p>
                            <h6>30</h6>
                        </div>
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-check-circle text-success"></i></div>
                            <p class="small text-muted mb-0">Confirmed</p>
                            <h6>18</h6>
                        </div>
                        <div class="col-4">
                            <div class="mb-1"><i class="fas fa-question-circle text-warning"></i></div>
                            <p class="small text-muted mb-0">Pending</p>
                            <h6>12</h6>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white">
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-outline-primary btn-sm">
                            <i class="fas fa-edit me-1"></i> Edit
                        </button>
                        <button class="btn btn-outline-success btn-sm">
                            <i class="fas fa-paper-plane me-1"></i> Send Reminders
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Event Card 4 -->
        <div class="col-lg-6 mb-4">
            <div class="card border-0 shadow-sm h-100 fade-in-up" style="animation-delay: 400ms;">
                <div class="card-header bg-warning text-dark py-3 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0"><i class="fas fa-suitcase me-2"></i> Honeymoon Departure</h5>
                    <span class="badge bg-light text-warning">2 days after</span>
                </div>
                <div class="card-body">
                    <div class="d-flex align-items-center mb-3">
                        <div class="event-date-badge me-3 text-center">
                            <div class="month">JUN</div>
                            <div class="day">17</div>
                            <div class="year">2025</div>
                        </div>
                        <div>
                            <h5 class="mb-1">Bali Getaway</h5>
                            <p class="text-muted mb-0"><i class="fas fa-clock me-1"></i> 9:00 AM</p>
                            <p class="text-muted mb-0"><i class="fas fa-plane me-1"></i> International Airport, Terminal 3</p>
                        </div>
                    </div>
                    <p>Departure for 2-week honeymoon in Bali. Private car arranged for airport transportation.</p>
                    <div class="d-flex align-items-center mt-3 reminder-box">
                        <i class="fas fa-bell text-warning me-3 fa-2x"></i>
                        <div>
                            <h6 class="mb-1">Important Reminders:</h6>
                            <ul class="mb-0 ps-3 small">
                                <li>Passports and travel documents</li>
                                <li>Confirm hotel reservations</li>
                                <li>Exchange currency</li>
                                <li>Check-in opens 24 hours before flight</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-white">
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-outline-primary btn-sm">
                            <i class="fas fa-edit me-1"></i> Edit
                        </button>
                        <button class="btn btn-outline-primary btn-sm">
                            <i class="fas fa-list me-1"></i> Update Checklist
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="text-center mt-3">
        <button class="btn btn-primary">
            <i class="fas fa-plus me-2"></i> Add New Event
        </button>
        <button class="btn btn-outline-primary ms-2">
            <i class="fas fa-calendar-alt me-2"></i> View Calendar
        </button>
    </div>
</div>

<!-- Create Event Form -->
<div class="container mb-5" id="createEventForm">
    <div class="d-flex align-items-center mb-4">
        <h2 class="mb-0"><i class="fas fa-calendar-plus text-primary me-2"></i> Create New Event</h2>
        <hr class="flex-grow-1 ms-3">
    </div>

    <div class="card border-0 shadow-sm zoom-in">
        <div class="card-body p-4">
            <form>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="eventName" class="form-label">Event Name</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-heading"></i>
                            </span>
                            <input type="text" class="form-control" id="eventName" placeholder="Enter event name">
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="eventType" class="form-label">Event Type</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-tag"></i>
                            </span>
                            <select class="form-select" id="eventType">
                                <option selected disabled>Select event type</option>
                                <option value="ceremony">Ceremony</option>
                                <option value="reception">Reception</option>
                                <option value="rehearsal">Rehearsal Dinner</option>
                                <option value="shower">Bridal Shower</option>
                                <option value="party">Bachelor/Bachelorette Party</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="eventDate" class="form-label">Date</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-calendar"></i>
                            </span>
                            <input type="date" class="form-control" id="eventDate">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="startTime" class="form-label">Start Time</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-clock"></i>
                            </span>
                            <input type="time" class="form-control" id="startTime">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="endTime" class="form-label">End Time</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-hourglass-end"></i>
                            </span>
                            <input type="time" class="form-control" id="endTime">
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="location" class="form-label">Location</label>
                    <div class="input-group">
                        <span class="input-group-text bg-white">
                            <i class="fas fa-map-marker-alt"></i>
                        </span>
                        <input type="text" class="form-control" id="location" placeholder="Enter event location">
                    </div>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <div class="input-group">
                        <span class="input-group-text bg-white">
                            <i class="fas fa-align-left"></i>
                        </span>
                        <textarea class="form-control" id="description" rows="3" placeholder="Describe your event"></textarea>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="guests" class="form-label">Expected Guests</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-user-friends"></i>
                            </span>
                            <input type="number" class="form-control" id="guests" placeholder="Number of guests" min="1">
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="budget" class="form-label">Budget</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-rupee-sign"></i>
                            </span>
                            <input type="number" class="form-control" id="budget" placeholder="Budget amount">
                            <select class="form-select" style="max-width: 120px;">
                                <option value="INR" selected>INR</option>
                                <option value="USD">USD</option>
                                <option value="EUR">EUR</option>
                                <option value="GBP">GBP</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="vendorSelect" class="form-label">Select Vendors</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-store"></i>
                            </span>
                            <select class="form-select" id="vendorSelect">
                                <option selected disabled>Choose a vendor (optional)</option>
                                <option value="1">Royal Palace Wedding Venue</option>
                                <option value="2">Elegance Gourmet Catering</option>
                                <option value="3">Eternal Moments Photography</option>
                                <option value="4">Sweet Delights Bakery</option>
                                <option value="5">Rhythm Masters DJ Services</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="reminderTime" class="form-label">Set Reminder</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-bell"></i>
                            </span>
                            <select class="form-select" id="reminderTime">
                                <option selected disabled>Remind me...</option>
                                <option value="1">1 day before</option>
                                <option value="3">3 days before</option>
                                <option value="7">1 week before</option>
                                <option value="14">2 weeks before</option>
                                <option value="30">1 month before</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="notifyGuests">
                    <label class="form-check-label" for="notifyGuests">Send invitations to guests</label>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-primary">
                        <i class="fas fa-calendar-plus me-2"></i> Create Event
                    </button>
                    <button type="reset" class="btn btn-outline-secondary ms-2">
                        <i class="fas fa-times me-2"></i> Cancel
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- JavaScript for animations and interactions -->
<style>
    /* Hero section */
    .event-hero {
        background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1519741347686-c1e0917af82d');
        background-size: cover;
        background-position: center;
        color: white;
    }

    /* Timeline styles */
    .timeline-wrapper {
        position: relative;
        padding: 20px 0;
    }

    .timeline-wrapper:before {
        content: '';
        position: absolute;
        top: 0;
        bottom: 0;
        width: 4px;
        background: #f8f9fa;
        left: 50%;
        margin-left: -2px;
        border-radius: 2px;
    }

    .timeline-item {
        position: relative;
        margin-bottom: 40px;
    }

    .timeline-badge {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        font-size: 1rem;
        line-height: 40px;
        text-align: center;
        position: absolute;
        left: 50%;
        margin-left: -20px;
        color: white;
        z-index: 1;
    }

    .timeline-panel {
        width: calc(50% - 40px);
        float: left;
        border-radius: 8px;
        padding: 15px;
        position: relative;
        box-shadow: 0 1px 6px rgba(0, 0, 0, 0.1);
        background-color: white;
    }

    .timeline-item:nth-child(even) .timeline-panel {
        float: right;
    }

    .timeline-item:nth-child(odd) .timeline-panel:after {
        content: " ";
        position: absolute;
        top: 15px;
        right: -10px;
        border-top: 10px solid transparent;
        border-left: 10px solid white;
        border-bottom: 10px solid transparent;
    }

    .timeline-item:nth-child(even) .timeline-panel:after {
        content: " ";
        position: absolute;
        top: 15px;
        left: -10px;
        border-top: 10px solid transparent;
        border-right: 10px solid white;
        border-bottom: 10px solid transparent;
    }

    /* Event date badge styles */
    .event-date-badge {
        background-color: #f8f9fa;
        border-radius: 8px;
        padding: 5px 10px;
        text-align: center;
        min-width: 70px;
        border-left: 4px solid #ff6b6b;
    }

    .event-date-badge .month {
        font-size: 0.8rem;
        text-transform: uppercase;
        color: #6c757d;
        font-weight: 600;
    }

    .event-date-badge .day {
        font-size: 1.5rem;
        font-weight: 700;
        color: #ff6b6b;
        line-height: 1;
    }

    .event-date-badge .year {
        font-size: 0.75rem;
        color: #6c757d;
    }

    /* Countdown box styles */
    .countdown-box {
        min-width: 70px;
    }

    /* Reminder box */
    .reminder-box {
        background-color: #fff8e1;
        border-left: 4px solid #ffb300;
        border-radius: 4px;
        padding: 10px;
    }

    /* Background gradient for event cards */
    .bg-gradient-dark {
        background: linear-gradient(to top, rgba(0,0,0,0.8), rgba(0,0,0,0));
    }

    /* Pulse animation for CTA button */
    @keyframes pulse {
        0% {
            box-shadow: 0 0 0 0 rgba(255, 107, 107, 0.7);
        }
        70% {
            box-shadow: 0 0 0 10px rgba(255, 107, 107, 0);
        }
        100% {
            box-shadow: 0 0 0 0 rgba(255, 107, 107, 0);
        }
    }

    .pulse {
        animation: pulse 1.5s infinite;
    }

    /* Animation classes */
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

    @keyframes slideInLeft {
        from {
            opacity: 0;
            transform: translate3d(-50px, 0, 0);
        }
        to {
            opacity: 1;
            transform: translate3d(0, 0, 0);
        }
    }

    @keyframes slideInRight {
        from {
            opacity: 0;
            transform: translate3d(50px, 0, 0);
        }
        to {
            opacity: 1;
            transform: translate3d(0, 0, 0);
        }
    }

    @keyframes zoomIn {
        from {
            opacity: 0;
            transform: scale3d(0.3, 0.3, 0.3);
        }
        50% {
            opacity: 1;
        }
    }

    .fade-in-up {
        opacity: 0;
    }

    .slide-in-left {
        opacity: 0;
    }

    .slide-in-right {
        opacity: 0;
    }

    .zoom-in {
        opacity: 0;
    }

    .fade-in-up.animated {
        animation: fadeInUp 0.5s ease-out forwards;
    }

    .slide-in-left.animated {
        animation: slideInLeft 0.5s ease-out forwards;
    }

    .slide-in-right.animated {
        animation: slideInRight 0.5s ease-out forwards;
    }

    .zoom-in.animated {
        animation: zoomIn 0.5s ease-out forwards;
    }

    /* Delay classes */
    .delay-1 {
        animation-delay: 0.2s !important;
    }

    .delay-2 {
        animation-delay: 0.4s !important;
    }

    .delay-3 {
        animation-delay: 0.6s !important;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
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
            headerDatetime.innerHTML = '<i class="far fa-clock me-1"></i> 2025-03-13 06:53:50';
        }

        // Set user login in the header
        const userDropdown = document.querySelector('#navbarDropdown');
        if (userDropdown) {
            userDropdown.innerHTML = '<i class="fas fa-user-circle me-1"></i> IT24102137';
        }
    });
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>
