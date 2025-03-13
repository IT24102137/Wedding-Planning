<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Wedding Planner</title>

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
        .login-container {
            width: 400px;
            margin: 100px auto;
            padding: 35px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: all 0.3s ease;
        }
        .login-container:hover {
            transform: translateY(-5px);
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3);
        }
        .input-group {
            position: relative;
            margin-bottom: 20px;
        }
        .input-group i {
            position: absolute;
            left: 15px;
            top: 12px;
            color: #6c757d;
            z-index: 3;
            transition: all 0.3s ease;
        }
        .input-group input:focus + i {
            color: #ff6b6b;
        }
        .form-control {
            border-radius: 20px;
            padding-left: 40px;
            border: 1px solid #ced4da;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #ff6b6b;
            box-shadow: 0 0 0 0.25rem rgba(255, 107, 107, 0.25);
        }
        .btn-primary {
            border-radius: 20px;
            background-color: #ff6b6b;
            border-color: #ff6b6b;
            padding: 10px 20px;
            font-weight: 600;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #ff5252;
            border-color: #ff5252;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 107, 107, 0.4);
        }
        .login-icon {
            font-size: 45px;
            color: #ff6b6b;
            margin-bottom: 15px;
        }
        h3 {
            font-weight: 600;
            color: #333;
            margin-bottom: 25px;
        }
        a {
            color: #ff6b6b;
            text-decoration: none;
            transition: all 0.3s;
        }
        a:hover {
            color: #ff5252;
            text-decoration: underline;
        }
        /* Animation effects */
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
        .login-container > * {
            animation: fadeInUp 0.5s ease forwards;
            opacity: 0;
        }
        .login-icon { animation-delay: 0.1s; }
        h3 { animation-delay: 0.2s; }
        .input-group:nth-child(1) { animation-delay: 0.3s; }
        .input-group:nth-child(2) { animation-delay: 0.4s; }
        .btn-primary {
            animation-delay: 0.5s;
            animation: fadeInUp 0.5s ease 0.5s forwards;
            opacity: 0;
        }
        p {
            animation-delay: 0.6s;
            animation: fadeInUp 0.5s ease 0.6s forwards;
            opacity: 0;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="login-container">
            <i class="fa-solid fa-user-circle login-icon"></i>
            <h3>Welcome Back</h3>

            <form id="loginForm">
                <div class="input-group">
                    <input type="email" class="form-control" id="email" placeholder="Email Address" required>
                    <i class="fa-solid fa-envelope"></i>
                </div>

                <div class="input-group">
                    <input type="password" class="form-control" id="password" placeholder="Password" required>
                    <i class="fa-solid fa-lock"></i>
                </div>

                <button type="submit" class="btn btn-primary w-100">
                    Login <i class="fa-solid fa-arrow-right ms-2"></i>
                </button>
            </form>

            <p class="mt-4">
                Don't have an account? <a href="register.jsp">Sign Up</a>
            </p>

            <div id="loginMessage" class="mt-3"></div>
        </div>
    </div>

    <!-- jQuery for AJAX -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            $("#loginForm").submit(function(event) {
                event.preventDefault();

                // Add loading state to button
                const submitBtn = $(this).find('button[type="submit"]');
                const originalText = submitBtn.html();
                submitBtn.html('<i class="fa fa-spinner fa-spin"></i> Logging in...');
                submitBtn.prop('disabled', true);

                $.ajax({
                    type: "POST",
                    url: "LoginServlet",
                    data: {
                        email: $("#email").val(),
                        password: $("#password").val()
                    },
                    success: function(response) {
                        if(response.success) {
                            $("#loginMessage").html(
                                '<div class="alert alert-success">' + response.message + '</div>'
                            );
                            // Redirect based on role
                            setTimeout(function() {
                                window.location.href = response.redirect;
                            }, 1000);
                        } else {
                            $("#loginMessage").html(
                                '<div class="alert alert-danger">' + response.message + '</div>'
                            );
                            submitBtn.html(originalText);
                            submitBtn.prop('disabled', false);
                        }
                    },
                    error: function(xhr) {
                        let errorMsg = "Login failed. Please try again.";
                        try {
                            if(xhr.responseJSON && xhr.responseJSON.message) {
                                errorMsg = xhr.responseJSON.message;
                            }
                        } catch(e) {
                            console.error("Error parsing response", e);
                        }
                        $("#loginMessage").html(
                            '<div class="alert alert-danger">' + errorMsg + '</div>'
                        );
                        submitBtn.html(originalText);
                        submitBtn.prop('disabled', false);
                    }
                });
            });
        });
    </script>
</body>
</html>