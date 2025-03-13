<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Wedding Planner</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            background: url('assets/images/wallpaper.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
        }
        .register-container {
            width: 450px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .form-control {
            border-radius: 20px;
            margin-bottom: 15px;
        }
        .btn-primary {
            border-radius: 20px;
            background-color: #ff6b6b;
            border-color: #ff6b6b;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #ff5252;
            border-color: #ff5252;
            transform: translateY(-3px);
        }
        .register-icon {
            font-size: 40px;
            color: #ff6b6b;
            margin-bottom: 15px;
        }
        .input-group {
            position: relative;
            margin-bottom: 15px;
        }
        .input-group i {
            position: absolute;
            left: 15px;
            top: 12px;
            color: #6c757d;
            z-index: 3;
        }
        .input-group .form-control {
            padding-left: 40px;
        }
        /* Animation for form elements */
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
        form div {
            animation: fadeInUp 0.5s ease forwards;
            opacity: 0;
        }
        form div:nth-child(1) { animation-delay: 0.1s; }
        form div:nth-child(2) { animation-delay: 0.2s; }
        form div:nth-child(3) { animation-delay: 0.3s; }
        form div:nth-child(4) { animation-delay: 0.4s; }
        form button {
            animation-delay: 0.5s;
            animation: fadeInUp 0.5s ease 0.5s forwards;
            opacity: 0;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="register-container">
            <i class="fa-solid fa-user-plus register-icon"></i>
            <h3 class="mb-4">Create Your Account</h3>

            <form id="registerForm">
                <div class="input-group">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Full Name" required>
                </div>

                <div class="input-group">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email Address" required>
                </div>

                <div class="input-group">
                    <i class="fa-solid fa-phone"></i>
                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="Phone Number" required>
                </div>

                <div class="input-group">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Create Password" required>
                </div>

                <div class="input-group">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
                </div>

                <div class="form-check text-start mb-3">
                    <input class="form-check-input" type="checkbox" id="terms" required>
                    <label class="form-check-label" for="terms">
                        I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                    </label>
                </div>

                <button type="submit" class="btn btn-primary w-100 py-2">
                    <i class="fa-solid fa-user-plus me-2"></i> Register Now
                </button>
            </form>

            <p class="mt-3">
                Already have an account? <a href="login.jsp">Login</a>
            </p>

            <div id="registerMessage" class="mt-3"></div>
        </div>
    </div>

    <!-- jQuery for AJAX -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            // Password match validation
            $("#confirmPassword").on("keyup", function() {
                if($("#password").val() !== $(this).val()) {
                    $(this).addClass("is-invalid");
                } else {
                    $(this).removeClass("is-invalid").addClass("is-valid");
                }
            });

            // Form submission with AJAX
            $("#registerForm").submit(function(event) {
                event.preventDefault();

                // Validate password match
                if($("#password").val() !== $("#confirmPassword").val()) {
                    $("#registerMessage").html(
                        '<div class="alert alert-danger">Passwords do not match!</div>'
                    );
                    return;
                }

                // Add loading state to button
                const submitBtn = $(this).find('button[type="submit"]');
                const originalText = submit