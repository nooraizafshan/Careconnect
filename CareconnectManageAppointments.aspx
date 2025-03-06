<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CareconnectManageAppointments.aspx.cs" Inherits="Careconnect.CareconnectManageAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General styles */
        .search-container {
            margin-bottom: 20px;
            display: flex;
            gap: 10px;
            align-items: center;
            justify-content: flex-start; /* Align to the start (left) */
        }

        .search-container input {
            padding: 8px 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
            flex: 1;
            max-width: 300px; /* Limit search field width */
        }

        .search-container button {
            padding: 8px 15px;
            background-color: #28a745; /* Green color for search button */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s, transform 0.2s;
        }

        .search-container button:hover {
            background-color: #218838; /* Darker green on hover */
            transform: scale(1.05); /* Slight scale effect on hover */
        }

        .gridview-container {
            width: 100%;
            overflow-x: auto;
            margin-top: 20px;
        }

        .appointment-table {
            width: 90%; /* Decreased table width */
            min-width: 800px; /* Adjusted minimum width */
            border-collapse: collapse;
            font-size: 0.9rem; /* Smaller font size */
            margin: 0 auto; /* Center the table */
        }

        .appointment-table th, .appointment-table td {
            padding: 8px; /* Reduced padding */
            border: 1px solid #ddd;
            text-align: left;
            white-space: nowrap;
        }

        .appointment-table th {
            background-color: #003B32; /* Updated table header color */
            color: white; /* White text */
            font-weight: bold;
        }

        .appointment-table tr:hover {
            background-color: #f1f1f1;
        }

        .btn-edit, .btn-delete {
            padding: 5px 10px;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 0.9rem;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn-edit {
            background-color: #28a745; /* Green for Edit */
        }

        .btn-delete {
            background-color: #dc3545; /* Red for Delete */
        }

        .btn-edit:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .btn-delete:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }

        .message-label {
            display: block;
            margin-top: 20px;
            padding: 10px;
            border-radius: 4px;
            font-weight: bold;
            text-align: left; /* Align to the start (left) */
            width: 100%;
            max-width: 90%; /* Match table width */
            margin-left: auto;
            margin-right: auto;
        }

        .message-label.success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .message-label.error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        /* Flexbox layout for column arrangement */
        .content-wrapper {
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* Align items to the start (left) */
            gap: 20px;
            padding: 20px;
            width: 90%; /* Match table width */
            margin: 0 auto; /* Center the content */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
        <!-- Search Container -->
        <div class="search-container">
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Search by patient name"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-button" OnClick="btnSearch_Click" />
        </div>

        <!-- GridView Container -->
        <div class="gridview-container">
            <asp:GridView ID="gvAppointments" runat="server" AutoGenerateColumns="false" CssClass="appointment-table"
                OnRowEditing="gvAppointments_RowEditing" OnRowCancelingEdit="gvAppointments_RowCancelingEdit"
                OnRowUpdating="gvAppointments_RowUpdating" OnRowDeleting="gvAppointments_RowDeleting"
                DataKeyNames="AppointmentID" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvAppointments_PageIndexChanging"
                AllowSorting="true" OnSorting="gvAppointments_Sorting">
                <Columns>
                    <asp:BoundField DataField="AppointmentID" HeaderText="Appointment ID" ReadOnly="true" SortExpression="AppointmentID" />
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" SortExpression="PatientName" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" SortExpression="ContactNumber" />
                    <asp:BoundField DataField="DOB" HeaderText="Date of Birth" SortExpression="DOB" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="ReasonForVisit" HeaderText="Reason for Visit" SortExpression="ReasonForVisit" />
                    <asp:BoundField DataField="DiseaseDetails" HeaderText="Disease Details" SortExpression="DiseaseDetails" />
                    <asp:BoundField DataField="PreferredDay" HeaderText="Preferred Day" SortExpression="PreferredDay" />
                    <asp:BoundField DataField="AppointmentType" HeaderText="Appointment Type" SortExpression="AppointmentType" />
                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" SortExpression="DoctorName" />
                    <asp:BoundField DataField="DoctorAvailability" HeaderText="Doctor Availability" SortExpression="DoctorAvailability" />
                    <asp:BoundField DataField="DoctorSpecialization" HeaderText="Doctor Specialization" SortExpression="DoctorSpecialization" />
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlStatus" runat="server">
                                <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                                <asp:ListItem Text="Confirmed" Value="Confirmed"></asp:ListItem>
                                <asp:ListItem Text="Cancelled" Value="Cancelled"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" ButtonType="Button" ControlStyle-CssClass="btn-edit" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                CssClass="btn-delete" OnClientClick="return confirm('Are you sure you want to delete this appointment?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle CssClass="grid-pager" />
            </asp:GridView>
        </div>

        <!-- Message Label -->
        <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>
    </div>
</asp:Content>