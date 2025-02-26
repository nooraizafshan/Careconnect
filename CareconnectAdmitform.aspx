<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectAdmitform.aspx.cs" Inherits="Careconnect.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box1">
        <h2 class="form-header">Admit Patient Form</h2>
        <div class="form-group">
            <label>Patient Name</label>
            <asp:TextBox ID="txtPatientName" runat="server" placeholder="Enter patient name" required="true"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Patient Guardian Name</label>
            <asp:TextBox ID="txtGuardianName" runat="server" placeholder="Enter guardian name" required="true"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>No of Days to Admit</label>
            <asp:TextBox ID="txtDaysToAdmit" runat="server" placeholder="Enter number of days" TextMode="Number" min="1" required="true"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Total Charges</label>
            <asp:TextBox ID="txtTotalCharges" runat="server" placeholder="Enter total charges" TextMode="Number" min="0" required="true"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Phone Number</label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Enter phone number" TextMode="Phone" pattern="[0-9]{10}" required="true"></asp:TextBox>
        </div>
        <asp:Button ID="btnAdmit" runat="server" Text="Admit" CssClass="admit-btn"  />
    </div>
</asp:Content>