<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RescheduleAppointment.aspx.cs" Inherits="Careconnect.RescheduleAppointment" %>
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
            justify-content: space-between;
            align-items: center;
            background-color: #0b302c;
            color: white;
            padding: 10px 20px;
        }

            .navbar .brand {
                font-size: 1.5rem;
                font-weight: bold;
                text-decoration: none;
                color: white;
            }

            .navbar .links {
                display: flex;
                gap: 20px;
            }

                .navbar .links a {
                    text-decoration: none;
                    color: white;
                    font-size: 1rem;
                    padding: 5px 10px;
                    transition: background 0.3s;
                }

                    .navbar .links a:hover {
                        background-color: #2d4542; /* Slightly lighter hover effect */
                        border-radius: 5px;
                    }

            .navbar .cancel-btn {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 8px 15px;
                text-decoration: none;
                font-size: 1rem;
                cursor: pointer;
                border-radius: 5px;
                transition: background-color 0.3s;
            }

                .navbar .cancel-btn:hover {
                    background-color: #0056b3; /* Darker blue on hover */
                }

        .container {
            background-color: rgba(0, 123, 255, 0.50);
            padding: 20px;
            border-radius: 20px;
            text-align: left;
            color: white;
            width: 40%;
            margin: auto;
            align-content: center;
            justify-items: center;
            margin-top: 90px;
            border: 2px solid white;
        }

        button {
            padding: 10px 20px;
            background-color: #0A2C29;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            border: 2px solid white;
            margin-top: 12px;
        }

            button:hover {
                background-color: #0056b3;
            }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input, select {
            width: 90%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 12px;
            border: 2px solid white;
            background-color: #e9f7f0;
        }

        .input-field:hover {
            border-color: #1d6f43;
            box-shadow: 0 0 18px rgba(29, 111, 67, 0.5);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Navbar -->
            <nav class="navbar">
                <!-- Brand -->
                <a href="#" class="brand">CareConnect Hospital</a>
                <!-- Navigation Links -->
                <div class="links">
                    <a href="Home.aspx">Home</a>
                </div>
                <!-- Cancel Button -->
                <a href="scheduleappointment.aspx" class="cancel-btn">Cancel</a>
            </nav>
            <div class="container">
                <h3>Reschedule appointment with <label>Doctor</label></h3>

                <div class="input-group">
                    <label>Reschedule Date & Time</label>
                    <input class="input-field" type="datetime-local" />
                </div>
                <button>Reschedule</button>
            </div>
        </div>

    </form>
</body>
</html>
