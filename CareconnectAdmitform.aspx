<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectAdmitform.aspx.cs" Inherits="Careconnect.CareconnectAdmitform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="box1">
     <h2 class="form-header">Admit Patient Form</h2>
     <div class="form-group">
         <label>Patient Name</label>
         <asp:TextBox ID="txtPatientName" runat="server" placeholder="Enter patient name"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvPatientName" runat="server" ControlToValidate="txtPatientName" ErrorMessage="Patient Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
     <div class="form-group">
         <label>Patient Guardian Name</label>
         <asp:TextBox ID="txtGuardianName" runat="server" placeholder="Enter guardian name"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvGuardianName" runat="server" ControlToValidate="txtGuardianName" ErrorMessage="Guardian Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
     <div class="form-group">
         <label>No of Days to Admit</label>
         <asp:TextBox ID="txtDaysToAdmit" runat="server" placeholder="Enter number of days" TextMode="Number"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvDaysToAdmit" runat="server" ControlToValidate="txtDaysToAdmit" ErrorMessage="Number of days is required" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="rvDaysToAdmit" runat="server" ControlToValidate="txtDaysToAdmit" Type="Integer" MinimumValue="1" MaximumValue="365" ErrorMessage="Days must be between 1 and 365" ForeColor="Red"></asp:RangeValidator>
     </div>
     <div class="form-group">
         <label>Total Charges</label>
         <asp:TextBox ID="txtTotalCharges" runat="server" placeholder="Enter total charges" TextMode="Number"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvTotalCharges" runat="server" ControlToValidate="txtTotalCharges" ErrorMessage="Total charges are required" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="rvTotalCharges" runat="server" ControlToValidate="txtTotalCharges" Type="Double" MinimumValue="0" MaximumValue="1000000" ErrorMessage="Charges must be between 0 and 1,000,000" ForeColor="Red"></asp:RangeValidator>
     </div>
     <div class="form-group">
         <label>Phone Number</label>
         <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Enter phone number" TextMode="Phone"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number is required" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ValidationExpression="[0-9]{10}" ErrorMessage="Phone number must be 10 digits" ForeColor="Red"></asp:RegularExpressionValidator>
     </div>
     <asp:Button ID="btnAdmit" runat="server" Text="Admit" CssClass="admit-btn" OnClick="btnAdmit_Click" />
 </div>

</asp:Content>
