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
        /* Search Button */
        .search-button {
            padding: 12px 20px; /* Adjusted padding for consistent size */
            background-color: #007bff; /* Blue color for search button */
            color: white; /* White text color */
            border: none;
            border-radius: 6px; /* Slightly larger border radius */
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: background-color 0.3s, transform 0.2s; /* Added transform for hover effect */
            font-size: 1rem; /* Larger font size */
            font-weight: bold; /* Bold text */
            min-width: 120px; /* Minimum width for better appearance */
            height: 40px; /* Fixed height for consistency */
        }

            .search-button:hover {
                background-color: #0056b3; /* Darker blue on hover */
                transform: scale(1.05); /* Slightly enlarge on hover */
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
            }

        /* Action Buttons */
        .action-buttons {
            display: flex;
            gap: 15px; /* Increased gap between buttons */
            justify-content: flex-start;
            padding: 0 20px;
        }

        .btn-update, .btn-delete {
            padding: 12px 20px; /* Adjusted padding for consistent size */
            color: white; /* White text color */
            border: none;
            border-radius: 6px; /* Slightly larger border radius */
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s; /* Added transform for hover effect */
            font-size: 1rem; /* Larger font size */
            min-width: 120px; /* Minimum width for better appearance */
            height: 40px; /* Fixed height for consistency */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .btn-update {
            background-color: #007bff; /* Blue color for update button */
        }

            .btn-update:hover {
                background-color: #0056b3; /* Darker blue on hover */
                transform: scale(1.05); /* Slightly enlarge on hover */
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
            }

        .btn-delete {
            background-color: #007bff; /* Blue color for delete button */
        }
        /* CommandField Buttons Styling */
        .btn-edit,
        .btn-delete {
            padding: 8px 12px; /* Padding for buttons */
            color: white; /* Text color */
            border: none; /* Remove border */
            border-radius: 4px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor on hover */
            font-size: 0.9rem; /* Font size */
            font-weight: bold; /* Bold text */
            transition: background-color 0.3s, transform 0.2s, box-shadow 0.3s; /* Smooth transitions */
        }

        .btn-edit {
            background-color: #007bff; /* Blue for Edit button */
        }

        .btn-delete {
            background-color: #dc3545; /* Red for Delete button */
        }

        .btn-edit:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05); /* Slightly enlarge */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow */
        }

        .btn-delete:hover {
            background-color: #c82333; /* Darker red on hover */
            transform: scale(1.05); /* Slightly enlarge */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow */
        }

        .btn-delete:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05); /* Slightly enlarge on hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="content-header">
            <h2>Manage Patient</h2>
            <div class="search-container">
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Search by name"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-button" OnClick="btnSearch_Click" />
            </div>
        </div>

        <div class="table-box">
            <asp:GridView ID="gvPatients" runat="server" AutoGenerateColumns="false" CssClass="Patient-table"
                OnPageIndexChanging="gvPatients_PageIndexChanging" OnRowEditing="gvPatients_RowEditing"
                OnRowCancelingEdit="gvPatients_RowCancelingEdit" OnRowUpdating="gvPatients_RowUpdating"
                OnRowDeleting="gvPatients_RowDeleting" DataKeyNames="PatientID">
                <Columns>
                    <asp:BoundField DataField="PatientID" HeaderText="Patient ID" ReadOnly="true" />
                    <asp:TemplateField HeaderText="Patient Name">
                        <ItemTemplate>
                            <asp:Label ID="lblPatientName" runat="server" Text='<%# Eval("PatientName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPatientName" runat="server" Text='<%# Bind("PatientName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Guardian Name">
                        <ItemTemplate>
                            <asp:Label ID="lblGuardianName" runat="server" Text='<%# Eval("GuardianName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtGuardianName" runat="server" Text='<%# Bind("GuardianName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Days to Admit">
                        <ItemTemplate>
                            <asp:Label ID="lblDaysToAdmit" runat="server" Text='<%# Eval("NumberOfDays") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDaysToAdmit" runat="server" Text='<%# Bind("NumberOfDays") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Charges">
                        <ItemTemplate>
                            <asp:Label ID="lblTotalCharges" runat="server" Text='<%# Eval("TotalCharges") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTotalCharges" runat="server" Text='<%# Bind("TotalCharges") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number">
                        <ItemTemplate>
                            <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <span class='<%# GetStatusClass(Eval("AdmissionStatus").ToString()) %>'>
                                <%# Eval("AdmissionStatus") %>
                            </span>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlAdmissionStatus" runat="server">
                                <asp:ListItem Text="Confirmed" Value="confirmed"></asp:ListItem>
                                <asp:ListItem Text="Pending" Value="pending"></asp:ListItem>
                                <asp:ListItem Text="Cancelled" Value="cancelled"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" ButtonType="Button" ControlStyle-CssClass="btn-edit" />
                    <asp:CommandField ShowDeleteButton="true" ButtonType="Button" ControlStyle-CssClass="btn-delete" />
                </Columns>
                <HeaderStyle BackColor="#003B32" ForeColor="White" Font-Bold="True" />
                <RowStyle BackColor="#FFFFFF" BorderColor="Green" BorderWidth="2px" />
                <AlternatingRowStyle BackColor="#E6FFE6" />
                <SelectedRowStyle BackColor="#00594D" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="#0b302c" ForeColor="White" HorizontalAlign="Center" />
            </asp:GridView>

        </div>

        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="message-label"></asp:Label>
    </div>
</asp:Content>
