<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/components/header.jsp" %>
<% 
    // Set page title
    request.setAttribute("pageTitle", "Wedding Events");
    
    // Set event date for examples
    String weddingDate = "June 15, 2025";
    String currentDate = "2025-03-13 05:35:28";
%>

<!-- Hero Section -->
<div class="container-fluid event-hero py-5 mb-5">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-8 col-lg-6">
                <div class="bg-white bg-opacity-75 p-4 rounded-3 slide-in-left">
                    <h1 class="display-4 fw-bold text-primary mb-4">Plan Your Perfect Day</h1>
                    <p class="lead mb-4">Create and manage events for your special celebration</p>
                    
                    <div class="d-flex mb-3">
                        <a href="#createEvent" class="btn btn-primary me-2 pulse">
                            <i class="fas fa-calendar-plus me-2"></i> Create Event
                        </a>
                        <a href="#myEvents" class="btn btn-outline-primary">
                            <i class="fas fa-list-alt me-2"></i> View My Events
                        </a>
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
                            <i class="fas fa-list-check me-1"></i> Update Checklist
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
                                <i class="fas fa-users"></i>
                            </span>
                            <input type="number" class="form-control" id="guests" min="1">
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="reminder" class="form-label">Send Reminder</label>
                        <div class="input-group">
                            <span class="input-group-text bg-white">
                                <i class="fas fa-bell"></i>
                            </span>
                            <select class="form-select" id="reminder">
                                <option value="1day">1 day before</option>
                                <option value="3days">3 days before</option>
                                <option value="1week">1 week before</option>
                                <option value="2weeks">2 weeks before</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <div class="mb-3">
                    <label class="form-label d-block">Color Theme</label>
                    <div class="color-options">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="colorTheme" id="colorPrimary" value="primary" checked style="background-color: var(--bs-primary)">
                            <label class="form-check-label" for="colorPrimary">Blue</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="colorTheme" id="colorSuccess" value="success" style="background-color: var(--bs-success)">
                            <label class="form-check-label" for="colorSuccess">Green</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="colorTheme" id="colorDanger" value="danger" style="background-color: var(--bs-danger)">
                            <label class="form-check-label" for="colorDanger">Red</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="colorTheme" id="colorWarning" value="warning" style="background-color: var(--bs-warning)">
                            <label class="form-check-label" for="colorWarning">Yellow</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="colorTheme" id="colorInfo" value="info" style="background-color: var(--bs-info)">
                            <label class="form-check-label" for="colorInfo">Light Blue</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="colorTheme" id="colorPurple" value="purple" style="background-color: #6f42c1">
                            <label class="form-check-label" for="colorPurple">Purple</label>
                        </div>
                    </div>
                </div>
                
                <div class="d-flex justify-content-end mt-4">
                    <button type="button" class="btn btn-light me-2" onclick="window.location='#myEvents'">
                        <i class="fas fa-times me-1"></i> Cancel
                    </button>
                    <button type="submit" class="btn btn-primary pulse">
                        <i class="fas fa-save me-1"></i> Save Event
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Guest Management Section -->
<div class="container mb-5">
    <div class="d-flex align-items-center mb-4">
        <h2 class="mb-0"><i class="fas fa-users text-primary me-2"></i> Manage Guests</h2>
        <hr class="flex-grow-1 ms-3">
    </div>
    
    <div class="row">
        <div class="col-md-4 mb-4">
            <!-- Guest Stats Card -->
            <div class="card border-0 shadow-sm h-100 fade-in-up" style="animation-delay: 100ms;">
                <div class="card-body">
                    <h5 class="card-title mb-4">Guest Overview</h5>
                    <div class="row text-center">
                        <div class="col-4">
                            <div class="guest-stat-circle bg-light mx-auto mb-2">
                                <span class="display-6">120</span>
                            </div>
                            <p class="text-muted small">Invited</p>
                        </div>
                        <div class="col-4">
                            <div class="guest-stat-circle bg-success bg-opacity-10 mx-auto mb-2">
                                <span class="display-6 text-success">78</span>
                            </div>
                            <p class="text-muted small">Confirmed</p>
                        </div>
                        <div class="col-4">
                            <div class="guest-stat-circle bg-danger bg-opacity-10 mx-auto mb-2">
                                <span class="display-6 text-danger">12</span>
                            </div>
                            <p class="text-muted small">Declined</p>
                        </div>
                    </div>
                    <div class="progress mt-4" style="height: 8px;">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 65%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 10%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="d-flex justify-content-between mt-2 small">
                        <span class="text-success">65% Confirmed</span>
                        <span class="text-danger">10% Declined</span>
                        <span class="text-warning">25% Pending</span>
                    </div>
                    <div class="d-grid gap-2 mt-4">
                        <button class="btn btn-outline-primary">
                            <i class="fas fa-envelope me-2"></i> Send Invitations
                        </button>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-8 mb-4">
            <!-- Guest List Card -->
            <div class="card border-0 shadow-sm h-100 fade-in-up" style="animation-delay: 200ms;">
                <div class="card-header bg-white d-flex justify-content-between align-items-center py-3">
                    <h5 class="mb-0">Recent Guest Responses</h5>
                    <button class="btn btn-sm btn-outline-primary">
                        <i class="fas fa-user-plus me-1"></i> Add Guest
                    </button>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table align-middle mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                    <th>Response Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-circle-sm me-2 bg-primary text-white">JS</div>
                                            <div>John Smith</div>
                                        </div>
                                    </td>
                                    <td>john.smith@example.com</td>
                                    <td><span class="badge bg-success">Confirmed</span></td>
                                    <td>2025-03-12</td>
                                    <td>
                                        <button class="btn btn-sm btn-outline-secondary me-1">
                                            <i class="fas fa-envelope"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-danger">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-circle-sm me-2 bg-info text-white">AJ</div>
                                            <div>Amy Johnson</div>
                                        </div>
                                    </td>
                                    <td>amy.j@example.com</td>
                                    <td><span class="badge bg-success">Confirmed</span></td>
                                    <td>2025-03-10</td>
                                    <td>
                                        <button class="btn btn-sm btn-outline-secondary me-1">
                                            <i class="fas fa-envelope"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-danger">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-circle-sm me-2 bg-warning text-white">RD</div>
                                            <div>Robert Davis</div>
                                        </div>
                                    </td>
                                    <td>robert.d@example.com</td>
                                    <td><span class="badge bg-warning">Pending</span></td>
                                    <td>-</td>
                                    <td>
                                        <button class="btn btn-sm btn-outline-secondary me-1">
                                            <i class="fas fa-envelope"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-danger">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-circle-sm me-2 bg-danger text-white">ML</div>
                                            <div>Maria Lopez</div>
                                        </div>
                                    </td>
                                    <td>maria.l@example.com</td>
                                    <td><span class="badge bg-danger">Declined</span></td>
                                    <td>2025-03-09</td>
                                    <td>
                                        <button class="btn btn-sm btn-outline-secondary me-1">
                                            <i class="fas fa-envelope"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-danger">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer bg-white text-center">
                    <button class="btn btn-sm btn-outline-primary">
                        <i class="fas fa-list me-1"></i> View All Guests
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    /* Event Hero */
    .event-hero {
        background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1519741347686-c1e0917af82d');
        background-size: cover;
        background-position: center;
        color: white;
    }
    
    /* Timeline Styles */
    .timeline-wrapper {
        position: relative;
        padding: 20px 0;
    }
    
    .timeline-item {
        position: relative;
        margin-bottom: 30px;
    }
    
    .timeline-badge {
        position: absolute;
        left: 0;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        text-align: center;
        color: #fff;
        line-height: 30px;
        z-index: 10;
    }
    
    .timeline-panel {
        position: relative;
        margin-left: 60px;
        padding: 15px;
        border-radius: 6px;
        border: 1px solid #e9ecef;
        background-color: #fff;
        box-shadow: 0 1px 6px rgba(0, 0, 0, 0.05);
    }
    
    .timeline-panel:after {
        right: 100%;
        top: 15px;
        border: solid transparent;
        content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
        border-right-color: #fff;
        border-width: 10px;
        margin-top: -10px;
    }
    
    /* Date Badge */
    .event-date-badge {
        background-color: #f8f9fa;
        border-radius: 4px;
        padding: 5px;
        min-width: 60px;
        box-shadow: 0 1px 3px rgba(0,0,0,0.1);
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
        line-height: 1;
        color: #495057;
    }
    
    .event-date-badge .year {
        font-size: 0.7rem;
        color: #6c757d;
    }
    
    /* Guest Stats Circle */
    .guest-stat-circle {
        width: 70px;
        height: 70px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    /* Avatar Circles */
    .avatar-circle-sm {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.8rem;
        font-weight: 600;
    }
    
    /* Reminder Box */
    .reminder-box {
        background-color: #fff8e1;
        border-left: 4px solid #ffc107;
        padding: 12px;
        border-radius: 4px;
    }
    
    /* Animation styles */
    .slide-in-left.animated {
        animation: slideInLeft 0.5s ease forwards;
    }
    
    .slide-in-right.animated {
        animation: slideInRight 0.5s ease forwards;
    }
    
    .zoom-in.animated {
        animation: zoomIn 0.5s ease forwards;
    }
    
    .fade-in-up.animated {
        animation: fadeInUp 0.5s ease forwards;
    }
    
    @keyframes slideInLeft {
        from {
            transform: translateX(-50px);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes slideInRight {
        from {
            transform: translateX(50px);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes zoomIn {
        from {
            transform: scale(0.95);
            opacity: 0;
        }
        to {
            transform: scale(1);
            opacity: 1;
        }
    }
    
    @keyframes fadeInUp {
        from {
            transform: translateY(20px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }
</style>

<script>
    // Add current datetime to footer
    document.addEventListener('DOMContentLoaded', function() {
        // Update current datetime in the header
        const headerDatetime = document.querySelector('.navbar-text');
        if (headerDatetime) {
            headerDatetime.innerHTML = '<i class="far fa-clock me-1"></i> 2025-03-13 05:41:00';
        }
        
        // Set user login in the header
        const userDropdown = document.querySelector('#navbarDropdown');
        if (userDropdown) {
            userDropdown.innerHTML = '<i class="fas fa-user-circle me-1"></i> IT24102137';
        }
        
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
                        
                        // Add delay if specified
                        const delay = element.getAttribute('style');
                        if (delay && delay.includes('animation-delay')) {
                            // Delay is already set in the style attribute
                        }
                    }
                }
            });
        }
        
        // Initial check for elements in viewport
        animateElementsInViewport();
        
        // Check on scroll
        window.addEventListener('scroll', function() {
            animateElementsInViewport();
        });
    });
</script>

<%@ include file="/WEB-INF/components/footer.jsp" %>