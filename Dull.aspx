<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareConnect Hospital</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #e9f7f0;
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
            Blue background color: white;
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
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="container">
            <a class="logo" href="#">CareConnect Hospital</a>
            <ul class="nav-links">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Doctor details.aspx">Book Appointment</a></li>
                <li><a class="btn-signup" href="Signup.aspx">Sign Up</a></li>
                <li><a class="btn-signin" href="Signin.aspx">Sign In</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="hero-section">
        <div class="info-box">
            CareConnect Hospital ensures seamless appointment scheduling and quality healthcare with a secure, technology-driven system.
        </div>
    </div>

</body>
</html>
