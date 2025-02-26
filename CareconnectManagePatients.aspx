<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectManagePatients.aspx.cs" Inherits="Careconnect.CareconnectManagePatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main-content {
            flex: 1;
            padding: 30px;
        }

        .content-header {
            margin-bottom: 20px;
        }

            .content-header h1 {
                font-size: 2.5rem;
                color: #003B32;
                margin-bottom: 10px;
                font-weight: bold;
            }

            .content-header h2 {
                font-size: 1.8rem;
                color: #00594D;
                margin-bottom: 20px;
            }

        .search-container {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

            .search-container input {
                flex: 1;
                padding: 8px 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 1rem;
            }

                .search-container input:hover {
                    border-color: #1d6f43; /* Dark green when focused */
                    box-shadow: 0 0 5px rgba(29, 111, 67, 0.5); /* Green shadow */
                }

            .search-container button {
                padding: 8px 15px;
                background-color: #0b302c;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                display: flex;
                align-items: center;
                gap: 8px;
            }

                .search-container button:hover {
                    background-color: #00594D;
                }

                .search-container button i {
                    font-size: 16px;
                }

        /* Table Box Placeholder */
        .table-box {
            background: white;
            border-radius: 8px;
            padding: 2px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }

        /* Table styling */
        .Patient-table {
            width: 100%;
            margin: 0px auto;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            overflow: hidden;
            border: 2px solid green;
        }

            .Patient-table th, .Patient-table td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .Patient-table th {
                background: #003B32;
                color: white;
            }

            .Patient-table tr:hover {
                background: rgba(0, 100, 0, 0.2);
            }

            .Patient-table .status-confirmed {
                color: green;
                font-weight: bold;
            }

            .Patient-table .status-pending {
                color: orange;
                font-weight: bold;
            }

            .Patient-table .status-cancelled {
                color: red;
                font-weight: bold;
            }

        .action-buttons {
            display: flex;
            gap: 10px;
            justify-content: flex-start;
            padding: 0 20px;
        }

            .action-buttons button {
                padding: 8px 30px;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
                transition: background-color 0.3s;
            }

            .action-buttons .btn-update {
                background-color: #0b302c;
            }

                .action-buttons .btn-update:hover {
                    background-color: #007bff;
                }

            .action-buttons .btn-delete {
                background-color: #dc3545; /* Red color for delete button */
            }

                .action-buttons .btn-delete:hover {
                    background-color: #c82333; /* Darker red on hover */
                }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="content-header">
            <h1>CareConnect Hospital</h1>
            <h2>Manage Patient</h2>
            <div class="search-container">
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Search by name"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-button">
                </asp:Button>
            </div>
        </div>
        <div class="table-box">
            <asp:GridView ID="gvPatients" runat="server" CssClass="Patient-table" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                    <asp:BoundField DataField="GuardianName" HeaderText="Patient Guardian Name" />
                    <asp:BoundField DataField="NumberOfDays" HeaderText="Number of Days" />
                    <asp:BoundField DataField="TotalCharges" HeaderText="Total Charges" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="Enter Phone Number" />
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <span class='<%# GetStatusClass(Eval("Status").ToString()) %>'>
                                <%# Eval("Status") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="action-buttons">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn-update" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn-delete" />
        </div>
    </div>
</asp:Content>


