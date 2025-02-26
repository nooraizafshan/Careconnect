<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectManagepatientpannel.aspx.cs" Inherits="Careconnect.CareconnectManagepatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .header {
            text-align: center;
            margin-bottom: 20px;
            display: flex;
            flex-direction: row;
        }

            .header h1 {
                font-size: 2.5rem;
                color: #003B32;
            }

            .header h2 {
                font-size: 2rem;
                color: #00594D;
            }

        .box-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 90px;
        }

        .box2, .box3 {
            background-color: rgba(0, 123, 255, 0.50);
            height: 100px;
            width: 200px;
            font-size: 22px;
            font-weight: 900;
            padding: 20px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

            .box2 a, .box3 a {
                text-decoration: none;
                color: white;
            }

            .box2:hover, .box3:hover {
                background-color: rgba(0, 123, 255, 0.70);
                transform: scale(1.05);
                transition: background-color 0.3s, transform 0.3s;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h2>Manage Patient</h2>
    </div>
    <div class="box-container">
        <asp:Panel ID="Panel1" runat="server" CssClass="box2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CareconnectAdmitform.aspx" Text="Admit Patient" CssClass="box2-link"></asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="box3">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="CareconnectManagePatients.aspx" Text="Manage Patient" CssClass="box3-link"></asp:HyperLink>
        </asp:Panel>
    </div>
</asp:Content>
