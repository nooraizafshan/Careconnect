using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Careconnect
{
    public partial class CareconnectManagePatients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPatients(); // Fetch and bind data on first load
            }
        }

        // Method to fetch data from the database
        private void BindPatients(string searchQuery = "")
        {
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT PatientID, PatientName, GuardianName, DaysToAdmit AS NumberOfDays, TotalCharges, PhoneNumber, AdmissionStatus FROM PatientAdmissions";
                if (!string.IsNullOrEmpty(searchQuery))
                {
                    query += " WHERE PatientName LIKE @SearchQuery";
                }

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (!string.IsNullOrEmpty(searchQuery))
                    {
                        cmd.Parameters.Add("@SearchQuery", SqlDbType.NVarChar).Value = "%" + searchQuery + "%";
                    }

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvPatients.DataSource = dt;
                        gvPatients.DataBind();
                    }
                }
            }
        }

        // Method to handle the search button click
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchQuery = txtSearch.Text.Trim();
            BindPatients(searchQuery);
        }

        // GridView RowEditing event handler
        protected void gvPatients_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPatients.EditIndex = e.NewEditIndex; // Set the row to edit mode
            BindPatients(); // Rebind data
        }

        // GridView RowCancelingEdit event handler
        protected void gvPatients_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPatients.EditIndex = -1; // Cancel edit mode
            BindPatients(); // Rebind data
        }

        // GridView RowUpdating event handler
        protected void gvPatients_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Get the PatientID from the DataKey
            string patientId = gvPatients.DataKeys[e.RowIndex].Value.ToString();

            // Get updated values from the GridView
            string patientName = (gvPatients.Rows[e.RowIndex].FindControl("txtPatientName") as TextBox).Text;
            string guardianName = (gvPatients.Rows[e.RowIndex].FindControl("txtGuardianName") as TextBox).Text;
            string daysToAdmit = (gvPatients.Rows[e.RowIndex].FindControl("txtDaysToAdmit") as TextBox).Text;
            string totalCharges = (gvPatients.Rows[e.RowIndex].FindControl("txtTotalCharges") as TextBox).Text;
            string phoneNumber = (gvPatients.Rows[e.RowIndex].FindControl("txtPhoneNumber") as TextBox).Text;
            string admissionStatus = (gvPatients.Rows[e.RowIndex].FindControl("ddlAdmissionStatus") as DropDownList).SelectedValue;

            // Update the database
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE PatientAdmissions SET PatientName = @PatientName, GuardianName = @GuardianName, DaysToAdmit = @DaysToAdmit, TotalCharges = @TotalCharges, PhoneNumber = @PhoneNumber, AdmissionStatus = @AdmissionStatus WHERE PatientID = @PatientID";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@PatientID", patientId);
                    cmd.Parameters.AddWithValue("@PatientName", patientName);
                    cmd.Parameters.AddWithValue("@GuardianName", guardianName);
                    cmd.Parameters.AddWithValue("@DaysToAdmit", daysToAdmit);
                    cmd.Parameters.AddWithValue("@TotalCharges", totalCharges);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@AdmissionStatus", admissionStatus);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            gvPatients.EditIndex = -1; // Exit edit mode
            BindPatients(); // Refresh GridView
            lblMessage.Text = "Patient details updated successfully!";
        }

        // GridView RowDeleting event handler
        protected void gvPatients_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the PatientID from the DataKey
            string patientId = gvPatients.DataKeys[e.RowIndex].Value.ToString();

            // Delete the record from the database
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM PatientAdmissions WHERE PatientID = @PatientID";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@PatientID", patientId);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            BindPatients(); // Refresh GridView
            lblMessage.Text = "Patient deleted successfully!";
        }

        // GridView PageIndexChanging event handler for pagination
        protected void gvPatients_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPatients.PageIndex = e.NewPageIndex;
            BindPatients(); // Reload data
        }

        // Method to determine the CSS class for the status
        public string GetStatusClass(string status)
        {
            switch (status.ToLower())
            {
                case "confirmed":
                    return "status-confirmed";
                case "pending":
                    return "status-pending";
                case "cancelled":
                    return "status-cancelled";
                default:
                    return "";
            }
        }
    }
}