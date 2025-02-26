<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CareconnectDoctordetails.aspx.cs" Inherits="Careconnect.CareconnectDoctordetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="doctor-details">
        <h2>Doctor Details</h2>
        <div class="doctor-cards">
            <div class="card">
                <p><strong>Doctor Name:</strong> <asp:Label ID="lblDoctorName1" runat="server" Text="Dr. John Doe" /></p>
                <p><strong>Availability:</strong> <asp:Label ID="lblAvailability1" runat="server" Text="9 AM - 5 PM" /></p>
                <p><strong>Specialization:</strong> <asp:Label ID="lblSpecialization1" runat="server" Text="Cardiology" /></p>
                <p><strong>Days Available:</strong> <asp:Label ID="lblDaysAvailable1" runat="server" Text="Monday, Wednesday, Friday" /></p>
                <asp:LinkButton ID="btnBookAppointment1" runat="server" CssClass="btn-appointment" OnClick="BtnBookAppointment_Click" CommandArgument="Dr. John Doe|9 AM - 5 PM|Cardiology|Monday, Wednesday, Friday">Book Appointment</asp:LinkButton>
            </div>
            <div class="card">
                <p><strong>Doctor Name:</strong> <asp:Label ID="lblDoctorName2" runat="server" Text="Dr. Jane Smith" /></p>
                <p><strong>Availability:</strong> <asp:Label ID="lblAvailability2" runat="server" Text="10 AM - 6 PM" /></p>
                <p><strong>Specialization:</strong> <asp:Label ID="lblSpecialization2" runat="server" Text="Neurology" /></p>
                <p><strong>Days Available:</strong> <asp:Label ID="lblDaysAvailable2" runat="server" Text="Tuesday, Thursday, Saturday" /></p>
                <asp:LinkButton ID="btnBookAppointment2" runat="server" CssClass="btn-appointment" OnClick="BtnBookAppointment_Click" CommandArgument="Dr. Jane Smith|10 AM - 6 PM|Neurology|Tuesday, Thursday, Saturday">Book Appointment</asp:LinkButton>
            </div>
            <!-- Repeat for other doctors -->
        </div>
    </div>
</asp:Content>