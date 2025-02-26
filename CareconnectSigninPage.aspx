<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CareconnectSigninPage.aspx.cs" Inherits="Careconnect.CareconnectSigninPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <div class="form-box">
            <div class="home-box">
                <div class="login-icon"></div>
                <!-- Centered Login Icon -->
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message" ForeColor="Red"></asp:Label>

                <h4>Enter Your Email</h4>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" Placeholder="Enter Username"></asp:TextBox>

                <h4>Enter Your Password</h4>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" Placeholder="Enter Password"></asp:TextBox>

                <asp:Button ID="btnSignin" runat="server" CssClass="btn-signin" Text="Sign In" OnClick="btnSignin_Click" />

                <p>Don't have an account? <a href="CareconnectSignuppage.aspx" style="color: #1d6f43;">Sign up</a></p>
            </div>
        </div>
    </div>
</asp:Content>
