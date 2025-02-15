<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterDoctor.aspx.cs" Inherits="Careconnect.RegisterDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

        .sidebar {
            height: auto;
            width: 20%;
            background-color: rgba(0, 123, 255, 0.50);
            display: flex;
            flex-direction: column;
            border: 2px solid white;
        }

        .boxes {
            display: flex;
            flex-direction: row;
        }

        .btn-sidebar {
            width: 200px;
            height: 50px;
            border: 2px solid #fff;
            margin: 16px;
            padding: 10px;
            font-weight: bold;
            font-size: 16px;
            color: white;
            background-color: #003B32;
        }

            .btn-sidebar:hover {
                background-color: #00594D;
                border-radius: 5px;
                border-color: white;
            }

        .content-center {
            display: flex;
            flex-direction: row;
            margin-top: 40px;
            margin-left: 40px;
            position: relative;
            gap: 20px;
        }

        .box1 {
            background-color: #fff;
            height: auto;
            width: 800px;
            font-size: 22px;
            font-weight: 900;
            padding: 50px;
            box-shadow: 0 0 5px rgba(29, 111, 67, 0.5);
        }

            .box1:hover {
                border-color: #1d6f43; /* Dark green when focused */
            }
        /* Admission Form */
        .admission-form {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        .form-header {
            color: #0b302c;
            font-size: 1.8rem;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

            .form-group label {
                display: block;
                color: #0b302c;
                font-weight: bold;
                margin-bottom: 8px;
                font-size: 1.1rem;
            }

            .form-group input {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 1rem;
                transition: border-color 0.3s;
            }

        input:hover {
            border-color: #1d6f43; /* Dark green when focused */
            box-shadow: 0 0 5px rgba(29, 111, 67, 0.5); /* Green shadow */
        }

        .form-group input:focus {
            border-color: #0b302c;
            outline: none;
            box-shadow: 0 0 0 2px rgba(11, 48, 44, 0.1);
        }

        .admit-btn {
            background-color: #0b302c;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
            margin-top: 10px;
        }

            .admit-btn:hover {
                background-color: #0056b3;
            }

        /* Responsive input styling */
        input[type="number"]::-webkit-inner-spin-button,
        input[type="number"]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
         <nav class="navbar">
      <div class="container">
          <a href="Home.aspx" class="logo" style="color: #ffff;">CareConnect Hospital</a>
          <ul class="nav-links">
              <li><a href="#" style="color: #fff;">Dashboard</a></li>
              <li><a href="Home.aspx" class="btn-signup">Sign Out</a></li>
          </ul>
      </div>
  </nav>

        <div class="boxes">
            <div class="sidebar">
                <button class="btn-sidebar">Manage Patients</button>
                <button class="btn-sidebar">Manage Doctors</button>
                <button class="btn-sidebar">Manage Appointments</button>
            </div>

            <div class="content-center">
                <div class="box1">
                    <h2 class="form-header">Register Doctor</h2>

                    <div class="form-group">
                        <label>Doctor Name</label>
                        <input type="text" placeholder="Enter Doctor Name" required />
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" placeholder="Enter Username" required />
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" placeholder="Enter Password" required />
                    </div>
                    <div class="form-group">
                        <label>Specialization</label>
                        <input type="text" placeholder="Enter Specialization" required />
                    </div>
                    <div class="form-group">
                        <label>Availability Days</label>
                        <input type="text" placeholder="Enter Available Days" required />
                    </div>
                    <div class="form-group">
                        <label>Date</label>
                        <input type="date" required />
                    </div>
                    <div class="form-group">
                        <label>Time</label>
                        <input type="time" required />
                    </div>
                    <button class="admit-btn">Register</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
