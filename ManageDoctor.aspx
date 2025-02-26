<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDoctor.aspx.cs" Inherits="Careconnect.ManageDoctor" %>

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

        .main-content {
            flex: 1;
            padding: 30px;
        }

        .content-header {
            margin-bottom: 20px;
        }

            .content-header h2 {
                color: #0b302c;
                margin-bottom: 15px;
                font-size: 1.5rem;
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

        /* Table Box Placeholder */
        .Doc-box {
            background: white;
            border-radius: 8px;
            padding: 2px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            height: 250px;
            margin-bottom: 20px;
        }
        /* Table styling */
        .Doc-table {
            width: 100%;
            margin: 0px auto;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            overflow: hidden;
            border: 2px solid green;
        }

            .Doc-table th, .Doc-table td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .Doc-table th {
                background: #003B32;
                color: white;
            }

            .Doc-table tr:hover {
                background: rgba(0, 100, 0, 0.2);
            }

        .action-buttons {
            display: flex;
            gap: 10px;
            justify-content: flex-start;
            padding: 0 20px;
        }

            .action-buttons button {
                padding: 8px 30px;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
                background-color: #0b302c;
                transition: background-color 0.3s;
            }

                .action-buttons button:hover {
                    background-color: #007bff;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <button class="btn-sidebar" aria-autocomplete="none">Manage patient</button>
                    <button class="btn-sidebar">Manage Doctors</button>
                    <button class="btn-sidebar">Manage Appointments</button>
                </div>
                <div class="main-content">
                    <div class="content-header">
                        <h2>Manage Doctors</h2>
                        <div class="search-container">
                            <input type="text" placeholder="Search by name" />
                            <button>Search</button>
                        </div>
                    </div>
                    <div class="Doc-box">
                        <table class="Doc-table">
                            <thead>
                                <tr>
                                    <th>Doctor Name</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Specialization</th>
                                    <th>Availability days</th>
                                    <th>Availability Date </th>
                                    <th>Time </th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>John Doe</td>
                                    <td>ass455</td>
                                    <td>5739393</td>
                                    <td>Mon , tues, thursday</td>
                                    <td>1,4,6,7,8</td>
                                    <td>7:00pm-4:00am</td>




                                </tr>
                                <tr>
                                    <td>John Doe</td>
                                    <td>ass455</td>
                                    <td>5739393</td>
                                    <td>Mon , tues, thursday</td>
                                    <td>1,4,6,7,8</td>
                                    <td>7:00pm-4:00am</td>


                                </tr>
                                <tr>
                                    <td>John Doe</td>
                                    <td>ass455</td>
                                    <td>5739393</td>
                                    <td>Mon , tues, thursday</td>
                                    <td>1,4,6,7,8</td>
                                    <td>7:00pm-4:00am</td>


                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="action-buttons">
                        <button>Update</button>
                        <button>Delete</button>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>

