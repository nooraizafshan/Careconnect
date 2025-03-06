<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectRegisterdoctor.aspx.cs" Inherits="Careconnect.CareconnectRegisterdoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box1">
        <h2 class="form-header">Register Doctor</h2>

        <div class="form-group">
            <label>Doctor Name</label>
            <asp:TextBox ID="txtDoctorName" runat="server" placeholder="Enter Doctor name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDoctorName" runat="server" ControlToValidate="txtDoctorName" ErrorMessage="Doctor Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Username</label>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Specialization</label>
            <asp:TextBox ID="txtSpecialization" runat="server" placeholder="Enter Specialization"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSpecialization" runat="server" ControlToValidate="txtSpecialization" ErrorMessage="Specialization is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Availability Days</label>
            <asp:TextBox ID="txtDays" runat="server" placeholder="Enter Available Days"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDays" runat="server" ControlToValidate="txtDays" ErrorMessage="Availability Days are required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Date</label>
            <input type="date" id="txtDate" runat="server" required />
        </div>
        <div class="form-group">
            <label>Time</label>
            <input type="time" id="txtTime" runat="server" required />
        </div>
        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="admit-btn" onclick="btnRegister_Click"  />
    </div>
</asp:Content>