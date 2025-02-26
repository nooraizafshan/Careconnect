<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Careconnectscheduleappointment.aspx.cs" Inherits="Careconnect.Careconnectscheduleappointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 60px); /* Adjust height to account for navbar */
        }

        .confirmation-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        .header {
            background-color: #013220;
            color: white;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            font-weight: bold;
        }

        .buttons {
            margin-top: 20px;
        }

        .blue-btn {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
        }

        .green-btn {
            background-color: #013220;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="confirmation-box">
            <div class="header">CareConnect Hospital</div>
            <p>
                Appointment with <b><asp:Label ID="lblDoctorName" runat="server" Text="Doctor Name"></asp:Label></b><br />
                on <b><asp:Label ID="lblAppointmentDate" runat="server" Text="Date"></asp:Label></b><br />
                at <b><asp:Label ID="lblAppointmentTime" runat="server" Text="Time"></asp:Label></b><br />
                successfully booked.
            </p>
            <div class="buttons">
                <asp:Button ID="btnReschedule" runat="server" CssClass="blue-btn" Text="Reschedule" PostBackUrl="~/CareconnectReschedule.aspx" />
                <asp:Button ID="btnOK" runat="server" CssClass="blue-btn" Text="OK" OnClick="btnOK_Click" />
            </div>
        </div>
    </div>
</asp:Content>