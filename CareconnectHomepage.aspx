<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CareconnectHomepage.aspx.cs" Inherits="Careconnect.CareconnectHomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-us-section {
            display: flex;
            flex-direction: row;
            padding: 12px;
            margin-top:590px;
           color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-section">
        <div class="info-box">
            CareConnect Hospital ensures seamless appointment scheduling and quality healthcare with a secure, technology-driven system.
        </div>
        <div class="about-us-section">
            <asp:Label runat="server">About us </asp:Label>

            <div class="image-box">
                <asp:Image runat="server"/>
            </div>
            <div class="content-box">
                <h1>About us</h1>
                <p>lorem alllodsdkkkkkkkkk kkkkkkkkkkkkkkkkkkkk kkkkkkkkkk kkkkkkkkkkkkkk kkkkkkkkkkkkkkkk kkkkkkkk</p>
                <asp:Button runat="server" Text="Learnmore"/>
            </div>
        </div>
        <div class="footer">

        </div>
    </div>
</asp:Content>
