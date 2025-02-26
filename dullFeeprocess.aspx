<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dullFeeprocess.aspx.cs" Inherits="YourNamespace.RescheduleAppointment" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareConnect Navbar</title>
    <style>
        /* Custom Navbar Styles */
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
        .home {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover;
            background-position: center;
/*            background-image:url('data:image/jpeg;base64,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');
            */
        }
        .container {
            background-color:rgba(0, 123, 255, 0.50);
            padding: 20px;
            border-radius: 20px;
            text-align: center;
            color: white;
            height:auto;
            border: 2px solid white;
            width:auto;
        }
        .numbers {
            font-weight: bold;
            color: #FFD700; /* Gold */
        }
        button {
            padding: 10px 20px;
            background-color: #0A2C29;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            border:2px solid white;
        }
        button:hover {
            background-color: #0056b3;
        }
        .heading{
            font-size:36px;
        }
        p{
            font-size:64px;
        }
    </style>
</head>
<body>

    <div class="home">
        <div class="container">
            <h3 class="heading">Payment Process</h3>
            <p>Your fee <br />charges are <span class="numbers">500</span></p>
<asp:Button runat="server" ID="processPayment" OnClick="processPayment_Click" Text="Process Payment" CssClass="button" />        </div>
    </div>
</body>
</html>
