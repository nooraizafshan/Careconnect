<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dullDoctor details.aspx.cs" Inherits="Careconnect.Doctor_details" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Details - CareConnect Hospital</title>
    <link rel="stylesheet" href="Content/StyleSheet2.css" />

    <style>
        body {
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

        .btn-appointment {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0A2C29;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            border: 2px solid white;
            text-align: center;
            text-decoration: none;
        }

        .btn-appointment:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar">
            <div class="container">
                <a href="#" class="logo">CareConnect Hospital</a>
                <ul class="nav-links">
                    <li><a href="Home.aspx">Home</a></li>
                    <li>Book Appointment</li>
                    <li><a href="Signin.aspx" class="btn-signin">Sign in</a></li>
                    <li><a href="Signup.aspx" class="btn-signup">Sign up</a></li>
                </ul>
            </div>
        </nav>

        <!-- Doctor Details Section -->
        <div class="doctor-details">
            <h2>Doctor Details</h2>
            <div class="doctor-cards">
                <div class="card">
                    <p><strong>Doctor Name:</strong> Dr. John Doe</p>
                    <p><strong>Availability:</strong> 9 AM - 5 PM</p>
                    <p><strong>Specialization:</strong> Cardiology</p>
                    <a href="BookAppointment.aspx" class="btn-appointment">Book Appointment</a>
                </div>
                <div class="card">
                    <p><strong>Doctor Name:</strong> Dr. Jane Smith</p>
                    <p><strong>Availability:</strong> 10 AM - 6 PM</p>
                    <p><strong>Specialization:</strong> Neurology</p>
                    <a href="BookAppointment.aspx" class="btn-appointment">Book Appointment</a>
                </div>
                <div class="card">
                    <p><strong>Doctor Name:</strong> Dr. Mark Wilson</p>
                    <p><strong>Availability:</strong> 8 AM - 4 PM</p>
                    <p><strong>Specialization:</strong> Orthopedics</p>
                    <a href="BookAppointment.aspx" class="btn-appointment">Book Appointment</a>
                </div>
                <div class="card">
                    <p><strong>Doctor Name:</strong> Dr. Emily Brown</p>
                    <p><strong>Availability:</strong> 11 AM - 7 PM</p>
                    <p><strong>Specialization:</strong> Pediatrics</p>
                    <a href="BookAppointment.aspx" class="btn-appointment">Book Appointment</a>
                </div>
                <div class="card">
                    <p><strong>Doctor Name:</strong> Dr. Michael Green</p>
                    <p><strong>Availability:</strong> 12 PM - 8 PM</p>
                    <p><strong>Specialization:</strong> Dermatology</p>
                    <a href="BookAppointment.aspx" class="btn-appointment">Book Appointment</a>
                </div>
                <div class="card">
                    <p><strong>Doctor Name:</strong> Dr. Lisa White</p>
                    <p><strong>Availability:</strong> 7 AM - 3 PM</p>
                    <p><strong>Specialization:</strong> General Medicine</p>
                    <a href="BookAppointment.aspx" class="btn-appointment">Book Appointment</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
