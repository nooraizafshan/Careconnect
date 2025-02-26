<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Careconnectsignuppage.aspx.cs" Inherits="Careconnect.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <div class="form-box">
            <div class="home-box">
                <!-- <div class="login-icon"></div>-->
                <!-- Centered Login Icon -->
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message" ForeColor="Red"></asp:Label>

                <h4>Enter Username</h4>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" Placeholder="Enter Username"></asp:TextBox>

                <h4>Enter Gmail</h4>
                <asp:TextBox ID="txtGmail" runat="server" CssClass="input-field" Placeholder="Enter Gmail"></asp:TextBox>

                <h4>Set Password</h4>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Set Password"></asp:TextBox>

                <h4>Confirm Password</h4>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Enter your confirmed Password"></asp:TextBox>

                <asp:Button ID="BtnSignup" runat="server" CssClass="btn-signin" Text="Sign Up" OnClick="BtnSignup_Click" />


                <p>Already have an account? <a href="CareconnectSigninPage.aspx" style="color: #1d6f43;">Sign In</a></p>
            </div>
        </div>
    </div>
</asp:Content>
