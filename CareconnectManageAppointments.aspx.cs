using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Careconnect
{
    public partial class CareconnectManageAppointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAppointments(); // Load appointments on first page load
            }
        }

        // Method to bind appointments to the GridView
        private void BindAppointments(string searchQuery = "")
        {
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
            string query = "SELECT * FROM Appointments";
            if (!string.IsNullOrEmpty(searchQuery))
            {
                query += " WHERE PatientName LIKE @SearchQuery";
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (!string.IsNullOrEmpty(searchQuery))
                    {
                        command.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");
                    }

                    using (SqlDataAdapter da = new SqlDataAdapter(command))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvAppointments.DataSource = dt;
                        gvAppointments.DataBind();
                    }
                }
            }
        }

        // Search button click event
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchQuery = txtSearch.Text.Trim();
            BindAppointments(searchQuery);
        }

        // GridView RowEditing event handler
        protected void gvAppointments_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvAppointments.EditIndex = e.NewEditIndex; // Set the row to edit mode
            BindAppointments(); // Rebind data
        }

        // GridView RowCancelingEdit event handler
        protected void gvAppointments_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvAppointments.EditIndex = -1; // Cancel edit mode
            BindAppointments(); // Rebind data
        }

        // GridView RowUpdating event handler
        protected void gvAppointments_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Get the AppointmentID from the DataKey
            int appointmentId = Convert.ToInt32(gvAppointments.DataKeys[e.RowIndex].Value);

            // Get updated values from the GridView
            string status = (gvAppointments.Rows[e.RowIndex].FindControl("ddlStatus") as DropDownList).SelectedValue;

            // Update the database
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
            string query = "UPDATE Appointments SET Status = @Status WHERE AppointmentID = @AppointmentID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Status", status);
                    command.Parameters.AddWithValue("@AppointmentID", appointmentId);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Appointment status updated successfully!";
                        lblMessage.CssClass = "message-label success";
                    }
                    else
                    {
                        lblMessage.Text = "Failed to update appointment status.";
                        lblMessage.CssClass = "message-label error";
                    }
                }
            }

            gvAppointments.EditIndex = -1; // Exit edit mode
            BindAppointments(); // Refresh GridView
        }

        // GridView RowDeleting event handler
        protected void gvAppointments_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the AppointmentID from the DataKey
            int appointmentId = Convert.ToInt32(gvAppointments.DataKeys[e.RowIndex].Value);

            // Delete the record from the database
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
            string query = "DELETE FROM Appointments WHERE AppointmentID = @AppointmentID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@AppointmentID", appointmentId);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Appointment deleted successfully!";
                        lblMessage.CssClass = "message-label success";
                    }
                    else
                    {
                        lblMessage.Text = "Failed to delete appointment.";
                        lblMessage.CssClass = "message-label error";
                    }
                }
            }

            BindAppointments(); // Refresh GridView
        }

        // GridView PageIndexChanging event handler
        protected void gvAppointments_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAppointments.PageIndex = e.NewPageIndex;
            BindAppointments(); // Rebind data
        }

        // GridView Sorting event handler
        protected void gvAppointments_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataTable dt = gvAppointments.DataSource as DataTable;
            if (dt != null)
            {
                dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
                gvAppointments.DataSource = dt;
                gvAppointments.DataBind();
            }
        }

        // Helper method to determine sort direction
        private string GetSortDirection(string column)
        {
            string sortDirection = "ASC";
            string lastSortExpression = ViewState["SortExpression"] as string;
            if (lastSortExpression != null && lastSortExpression == column)
            {
                string lastDirection = ViewState["SortDirection"] as string;
                if (lastDirection == "ASC")
                {
                    sortDirection = "DESC";
                }
            }
            ViewState["SortExpression"] = column;
            ViewState["SortDirection"] = sortDirection;
            return sortDirection;
        }
    }
}