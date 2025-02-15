<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctorpannel.aspx.cs" Inherits="Careconnect.Doctorpannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Panel</title>
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
                        background-color: #2d4542;
                        border-radius: 5px;
                    }

            .navbar .signout-btn {
                background-color: #007bff;
                color: white;
                font-weight: bold;
                border: none;
                padding: 8px 15px;
                text-decoration: none;
                font-size: 1rem;
                cursor: pointer;
                border-radius: 5px;
                transition: background-color 0.3s;
            }

                .navbar .signout-btn:hover {
                    background-color: #0056b3;
                }

        .container {
            background-color: rgba(0, 123, 255, 0.50);
            padding: 20px;
            border-radius: 20px;
            text-align: center;
            color: white;
            width: 50%;
            margin: 90px auto;
            border: 2px solid white;
        }

        /* Search bar with custom icon */
        .search-box {
            display: flex;
            align-items: center;
            background-color: white;
            padding: 5px 10px;
            border-radius: 20px;
            width: 250px;
            margin: auto;
            border: 2px solid green;
            position: relative;
        }

            .search-box input {
                border: none;
                outline: none;
                padding: 8px;
                font-size: 1rem;
                width: 100%;
            }

            .search-box::after {
                content: "\1F50D"; /* Unicode magnifying glass */
                font-size: 1.2rem;
                color: green;
                position: absolute;
                right: 10px;
            }

        .search-container {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

            .search-container input {
                flex: 1;
                padding: 8px 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 1rem;
            }

                .search-container input:hover {
                    border-color: #1d6f43; /* Dark green when focused */
                    box-shadow: 0 0 5px rgba(29, 111, 67, 0.5); /* Green shadow */
                }

            .search-container button {
                padding: 8px 15px;
                background-color: #0b302c;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
        /* Table styling */
        .appointments-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            overflow: hidden;
            border: 2px solid green;
        }

            .appointments-table th, .appointments-table td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .appointments-table th {
                background: #0b302c;
                color: white;
            }

            .appointments-table tr:hover {
                background: rgba(0, 100, 0, 0.2);
            }

        /* Status colors */
        .status-confirmed {
            color: green;
            font-weight: bold;
        }

        .status-pending {
            color: orange;
            font-weight: bold;
        }

        .status-cancelled {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar">
                <a href="#" class="brand">CareConnect Hospital</a>
                <div class="links">
                    <a href="Home.aspx">Home</a>
                    <a href="#">View Appointments</a>
                </div>
                <a href="Home.aspx" class="signout-btn">Sign out</a>
            </nav>

            <div class="container">
                <!-- Search bar with custom green icon -->
                <div class="search-container">
                    <input type="text" placeholder="Search by name" />
                    <button>Search</button>
                </div>

                <p>No of appointments: <strong>23</strong></p>

                <!-- Table for appointments -->
                <table class="appointments-table">
                    <thead>
                        <tr>
                            <th>Patient Name</th>
                            <th>Appointment Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>John Doe</td>
                            <td>Feb 15, 2025</td>
                            <td class="status-confirmed">Confirmed</td>
                        </tr>
                        <tr>
                            <td>Jane Smith</td>
                            <td>Feb 18, 2025</td>
                            <td class="status-pending">Pending</td>
                        </tr>
                        <tr>
                            <td>Michael Johnson</td>
                            <td>Feb 20, 2025</td>
                            <td class="status-cancelled">Cancelled</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
