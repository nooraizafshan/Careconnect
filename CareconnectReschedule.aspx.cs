using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Careconnect
{
    public partial class CareconnectReschedule : System.Web.UI.Page
    {
        // Database connection string (replace with your actual connection string)
        string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialization code (if needed)
            }
        }

        protected void btnReschedule_Click(object sender, EventArgs e)
        {
            // Get the selected date and time from the TextBox
            string rescheduleDateTime = txtRescheduleDateTime.Text;

            // Validate the input
            if (string.IsNullOrEmpty(rescheduleDateTime))
            {
                lblDoctorName.Text = "Please select a valid date and time.";
                return;
            }

            // Get the AppointmentID from the session
            if (Session["AppointmentID"] == null)
            {
                lblDoctorName.Text = "Appointment ID not found. Please log in again.";
                return;
            }

            int appointmentId = Convert.ToInt32(Session["AppointmentID"]);

            // Update the database
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // SQL query to update the appointment date and time for the user
                    string query = "UPDATE Appointments SET AppointmentDateTime = @AppointmentDateTime WHERE AppointmentID = @AppointmentID";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the query
                        command.Parameters.AddWithValue("@AppointmentDateTime", rescheduleDateTime);
                        command.Parameters.AddWithValue("@AppointmentID", appointmentId);

                        // Execute the query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if the update was successful
                        if (rowsAffected > 0)
                        {
                            lblDoctorName.Text = "Appointment rescheduled successfully for " + rescheduleDateTime;
                        }
                        else
                        {
                            lblDoctorName.Text = "No appointment found for the user.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any errors
                lblDoctorName.Text = "An error occurred: " + ex.Message;
            }
        }

        // Method to get the current user's ID (optional, if needed elsewhere)
        private int GetUserId()
        {
            if (Session["UserId"] != null)
            {
                return Convert.ToInt32(Session["UserId"]);
            }
            else
            {
                // Redirect to the login page if the user ID is not found
                Response.Redirect("CareconnectSigninPage.aspx");
                return -1; // Return an invalid ID (optional)
            }
        }
    }
}