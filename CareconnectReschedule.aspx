<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CareconnectReschedule.aspx.cs" Inherits="Careconnect.CareconnectReschedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            background-color: rgba(0, 123, 255, 0.50);
            padding: 20px;
            display:flex;
            flex-direction:column;
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

        .button {
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

            .button:hover {
                background-color: #0056b3;
            }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        .input-field {
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content for ContentPlaceHolder1 (if any) -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <h3>Reschedule appointment with <asp:Label ID="lblDoctorName" runat="server" Text="Doctor"></asp:Label></h3>

        <div class="input-group">
            <label>Reschedule Date & Time</label>
            <asp:TextBox ID="txtRescheduleDateTime" runat="server" CssClass="input-field" TextMode="DateTimeLocal"></asp:TextBox>
        </div>

        <asp:Button ID="btnReschedule" runat="server" CssClass="button" Text="Reschedule" OnClick="btnReschedule_Click" />
    </div>
</asp:Content>