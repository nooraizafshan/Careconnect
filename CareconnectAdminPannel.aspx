<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectAdminPannel.aspx.cs" Inherits="Careconnect.CareconnectAdminPannel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
        }

        .dashboard-card {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            flex: 1 1 calc(33.333% - 40px);
            min-width: 200px;
        }

        .dashboard-card h3 {
            margin: 0;
            font-size: 1.5rem;
            color: #003B32;
        }

        .dashboard-card p {
            font-size: 2rem;
            font-weight: bold;
            color: #00594D;
        }

        .circle {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #003B32;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 2rem;
            font-weight: bold;
        }

        .doctor-list {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        .doctor-list h3 {
            margin: 0 0 20px;
            font-size: 1.5rem;
            color: #003B32;
        }

        .doctor-list ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .doctor-list li {
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }

        .doctor-list li:last-child {
            border-bottom: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-container">
        <!-- Number of Appointments -->
        <div class="dashboard-card">
            <div class="circle">
                <asp:Label ID="lblAppointments" runat="server" Text="150"></asp:Label>
            </div>
            <h3>Appointments</h3>
        </div>

        <!-- Number of Registered Patients -->
        <div class="dashboard-card">
            <div class="circle">
                <asp:Label ID="lblPatients" runat="server" Text="1,805"></asp:Label>
            </div>
            <h3>Registered Patients</h3>
        </div>

        <!-- Available Doctors -->
        <div class="dashboard-card">
            <div class="circle">
                <asp:Label ID="lblDoctors" runat="server" Text="25"></asp:Label>
            </div>
            <h3>Available Doctors</h3>
        </div>
    </div>

    <!-- Doctor Details -->
    <div class="doctor-list">
        <h3>Available Doctors</h3>
        <ul>
            <li>Dr. John Doe - Cardiology</li>
            <li>Dr. Jane Smith - Neurology</li>
            <li>Dr. Emily Davis - Pediatrics</li>
            <li>Dr. Michael Brown - Orthopedics</li>
        </ul>
    </div>
</asp:Content>