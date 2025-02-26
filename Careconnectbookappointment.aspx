<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Careconnectbookappointment.aspx.cs" Inherits="Careconnect.Careconnectbookappointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            background-color: rgba(0, 123, 255, 0.50);
            padding: 20px;
            border-radius: 20px;
            text-align: center;
            color: white;
            display: flex;
            flex-direction: column;
            width: 80%;
            margin: auto;
            margin-top: 50px;
            border: 2px solid white;
        }

        .box1, .box2 {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .input-group {
            width: 48%;
        }

        label {
            display: block;
            font-weight: bold;
            color: #fff;
        }

        input, select {
            width: 90%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 12px;
            border: 2px solid white;
            background-color: #e9f7f0;
            font-size: 16px;
        }

        .input-field {
            border-radius: 14px;
        }

        .input-field:hover {
            border-color: #1d6f43;
            box-shadow: 0 0 18px rgba(29, 111, 67, 0.5);
        }

        .radio-group {
            display: flex;
            align-items: center;
            gap: 5px;
            margin-top: 5px;
        }

        .button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #003B32;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 80%;
            font-size: 16px;
        }

        .button:hover {
            background-color: #00594D;
        }

        h3 {
            color: #fff;
            font-weight: 700;
            margin-bottom: 20px;
        }

        @media screen and (max-width: 768px) {
            .input-group {
                width: 100%;
            }

            .container {
                width: 95%;
            }
        }

        @media screen and (max-width: 480px) {
            .button {
                width: 100%;
            }

            .radio-group {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="message"></asp:Label>
    <div class="container">
        <h3>Book Your Appointment</h3>
        <div class="box1">
            <div class="input-group">
                <label for="patientName">Patient Name</label>
                <asp:TextBox ID="patientName" runat="server" CssClass="input-field" Text="" ></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="contactNumber">Contact Number</label>
                <asp:TextBox ID="contactNumber" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="dob">Date of Birth</label>
                <asp:TextBox ID="dob" runat="server" CssClass="input-field" TextMode="Date"></asp:TextBox>
            </div>
            <div class="input-group">
                <label>Gender</label>
                <div class="radio-group">
                    <asp:RadioButton ID="genderFemale" runat="server" GroupName="gender" Text="Female" />
                    <asp:RadioButton ID="genderMale" runat="server" GroupName="gender" Text="Male" />
                </div>
            </div>
        </div>

        <h3>Appointment Details</h3>
        <div class="box2">
            <div class="input-group">
                <label for="doctorName">Doctor Name</label>
                <asp:TextBox ID="doctorNameTextBox" runat="server" CssClass="input-field" Text="" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="doctorAvailability">Doctor Availability</label>
                <asp:TextBox ID="doctorAvailability" runat="server" CssClass="input-field" Text="" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="doctorSpecialization">Doctor Specialization</label>
                <asp:TextBox ID="doctorSpecialization" runat="server" CssClass="input-field" Text="" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="preferredDay">Preferred Day</label>
                <asp:DropDownList ID="preferredDay" runat="server" CssClass="input-field"></asp:DropDownList>
            </div>
            <div class="input-group">
                <label for="reasonForVisit">Reason for Visit</label>
                <asp:TextBox ID="reasonForVisit" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="diseaseDetails">Disease Details</label>
                <asp:TextBox ID="diseaseDetails" runat="server" CssClass="input-field"></asp:TextBox>
            </div>
          
            <div class="input-group">
                <label for="appointmentType">Type of Appointment</label>
                <asp:DropDownList ID="appointmentType" runat="server" CssClass="input-field">
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>In-Person</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <!-- Submit Button -->
        <asp:Button ID="btnSubmit" runat="server" Text="Book Appointment" CssClass="button" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>