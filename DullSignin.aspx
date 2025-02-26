<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareConnect Hospital - Sign In</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #1E1E1E;
        }


        .navbar {
            display: flex;
            justify-content: center;
            background-color: #003B32;
            color: white;
            padding: 15px 0;
        }


        .container {
            width: 90%;
            max-width: 1200px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }


        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }


        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
            padding: 0;
            margin: 0;
        }

            .nav-links li {
                display: inline;
            }

                .nav-links li a {
                    color: white;
                    text-decoration: none;
                    font-size: 1rem;
                    padding: 8px 12px;
                    transition: background 0.3s;
                }

                    .nav-links li a:hover {
                        background-color: #00594D;
                        border-radius: 5px;
                    }


        .btn-signup {
            background-color: #0D6EFD;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        .btn-signin {
            background-color: transparent;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            border: 1px solid white;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
            cursor: pointer;
        }

            .btn-signin:hover {
                background-color: white;
                color: #003B32;
            }


        .hero-section {
            background: url('/images/hospital.jpg') no-repeat center center/cover;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
        }


        .info-box {
            background: rgba(13, 110, 253, 0.9);
            color: white;
            padding: 20px;
            border-radius: 8px;
            width: 80%;
            max-width: 350px;
            font-weight: bold;
            position: absolute;
            left: 15%;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }


        @media (max-width: 768px) {
            .navbar {
                flex-wrap: wrap;
                justify-content: center;
            }

            .container {
                flex-direction: column;
                align-items: center;
            }

            .nav-links {
                flex-direction: column;
                align-items: center;
                gap: 10px;
                margin-top: 10px;
            }

            .hero-section {
                height: 300px;
            }

            .info-box {
                width: 90%;
                left: 5%;
            }
        }
        /* Hero section styling */
        .home-box {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            height: 100vh; /* Full height */
            background-color: #e9f7f0; /* Light green background */
            padding: 20px;
        }

        /* Styling for the login icon */
        .login-icon {
            width: 80px;
            height: 80px;
            background-color: #00594D;
            /* Dark green */
            border-radius: 50%;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 10px;
        }

            .login-icon:hover {
                background-color: #006f5e;
            }

            .login-icon::before {
                content: "";
                width: 30px;
                height: 30px;
                background-color: white;
                border-radius: 50%;
                position: absolute;
                top: 15px;
            }

            .login-icon::after {
                content: "";
                width: 50px;
                height: 25px;
                background-color: white;
                position: absolute;
                bottom: 10px;
                border-radius: 50px 50px 0 0;
            }

        /* Styling for input fields */
        .input-field {
            width: 100%;
            max-width: 300px;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #a8d8a1; /* Lighter green border */
            border-radius: 5px;
            font-size: 16px;
            outline: none;
            transition: 0.3s;
        }

            .input-field:focus {
                border-color: #1d6f43; /* Dark green when focused */
                box-shadow: 0 0 5px rgba(29, 111, 67, 0.5); /* Green shadow */
            }

        /* Styling for headings */
        h4 {
            font-size: 18px;
            color: #00594D; /* Dark green */
            margin-bottom: 8px;
            font-weight: bold;
        }

        /* Button styling */
        .btn-signin {
            width: 100%;
            max-width: 300px;
            padding: 10px;
            background-color: #003B32;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

            .btn-signin:hover {
                background-color: #006f5e; /* Green button */
            }

        /* Responsive adjustments */
        @media (max-width: 600px) {
            .input-field, .btn-signin {
                max-width: 90%;
            }
        }
    </style>

</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="container">
            <a href="Home.aspx" class="logo" style="color: #ffff;">CareConnect Hospital</a>
            <ul class="nav-links">
                <li><a href="Home.aspx" style="color: #fff;">Home</a></li>
                <li><a href="Signup.aspx" class="btn-signup">Sign Up</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Container -->
    <div class="form-container">
        <div class="form-box">
            <div class="home-box">
                <div class="login-icon"></div>
                <!-- Centered Login Icon -->

                <h4>Enter Your Email</h4>
                <input type="text" Id="txtUsername"class="input-field" placeholder="Enter Username">

                <h4>Enter Your Password</h4>
                <input type="password"Id="txtPassword" class="input-field" placeholder="Enter Password">

                <button class="btn-signin">Sign In</button>

                <p>Don't have an account? <a href="Signup.aspx" style="color: #1d6f43;">Sign up</a></p>
            </div>
        </div>
    </div>
</body>
</html>
