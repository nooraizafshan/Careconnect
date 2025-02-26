<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Creconnectfeesubmit.aspx.cs" Inherits="Careconnect.Creconnectfeesubmit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .home {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: cover;
            background-position: center;
        }

        .container {
            background-color: rgba(0, 123, 255, 0.50);
            padding: 20px;
            border-radius: 20px;
            flex-direction: column;
            display: flex;
            text-align: center;
            color: white;
            height: auto;
            border: 2px solid white;
            width: auto;
        }

        .numbers {
            font-weight: bold;
            color: #FFD700; /* Gold */
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
        }

        button:hover {
            background-color: #0056b3;
        }

        .heading {
            font-size: 36px;
        }

        p {
            font-size: 64px;
        }

        .success-message {
            color: green;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            margin-top: 20px; /* Adjust as needed */
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblSuccessMessage" runat="server" CssClass="success-message" Visible="false"></asp:Label>

    <div class="home">
        <!-- Success message label -->
        <div class="container">
            <h3 class="heading">Payment Process</h3>
            <p>
                Your fee
                <br />
                charges are <span class="numbers">500</span>
            </p>
            <asp:Button runat="server" ID="processPayment" OnClick="processPayment_Click" Text="Process Payment" CssClass="button" />
        </div>

    </div>
</asp:Content>
