<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookappointment.aspx.cs" Inherits="Careconnect.Bookappointment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Appointment</title>
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

            .navbar .links a {
                text-decoration: none;
                color: white;
                padding: 5px 10px;
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
            width: 80%;
            margin: auto;
            margin-top: 50px;
            border: 2px solid white;
        }

        /* Flexbox for rows */
        .box1, .box2 {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        /* Each input group contains label + input */
        .input-group {
            width: 48%; /* Two fields in one row */
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

        .radio-group {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 5px;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #0A2C29;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar">
            <a href="#" class="brand">CareConnect Hospital</a>
            <div class="links">
                <a href="Home.aspx">Home</a>
            </div>
            <a href="Doctor details.aspx" class="cancel-btn">Cancel</a>
        </nav>

        <div class="container">
            <h3>Book Your Appointment</h3>

            <div class="box1">
                <div class="input-group">
                    <label>Patient Name</label>
                    <input class="input-field" type="text" value="Already added data coming from user signup details time" readonly />
                </div>

                <div class="input-group">
                    <label>Contact Number</label>
                    <input class="input-field" type="text" />
                </div>

                <div class="input-group">
                    <label>Date of Birth</label>
                    <input class="input-field" type="date" />
                </div>

                <div class="input-group">
                    <label>Gender</label>
                    <div class="radio-group">
                        <input type="radio" name="gender" value="female" />
                        Female
                        <input type="radio" name="gender" value="male" />
                        Male
                    </div>
                </div>
            </div>

            <h3>Appointment Details</h3>

            <div class="box2">
                <div class="input-group">
                    <label>Doctor Name</label>
                    <input class="input-field" type="text" value="Already added data" readonly />
                </div>

                <div class="input-group">
                    <label>Reason for Visit</label>
                    <input class="input-field" type="text" />
                </div>

                <div class="input-group">
                    <label>Disease Details</label>
                    <input class="input-field" type="text" />
                </div>

                <div class="input-group">
                    <label>Preferred Date & Time</label>
                    <input class="input-field" type="datetime-local" />
                </div>

                <div class="input-group">
                    <label>Type of Appointment</label>
                    <select>
                        <option>Online</option>
                        <option>In-Person</option>
                    </select>
                </div>
            </div>

            <button type="submit">Book Appointment</button>
        </div>
    </form>
</body>
</html>
