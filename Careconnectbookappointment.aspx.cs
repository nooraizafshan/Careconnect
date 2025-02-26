using System;
using System.Data.SqlClient; // Add this namespace for SQL Server
using System.Web.UI.WebControls;

namespace Careconnect
{
    public partial class Careconnectbookappointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Ensure this logic runs only once when the page is loaded
            {
                // Retrieve query string values
                string doctorName = Request.QueryString["DoctorName"];
                string availability = Request.QueryString["Availability"];
                string specialization = Request.QueryString["Specialization"];
                string daysAvailable = Request.QueryString["DaysAvailable"];

                // Populate doctor details in the respective fields
                if (!string.IsNullOrEmpty(doctorName))
                {
                    doctorNameTextBox.Text = doctorName;
                }
                if (!string.IsNullOrEmpty(availability))
                {
                    doctorAvailability.Text = availability;
                }
                if (!string.IsNullOrEmpty(specialization))
                {
                    doctorSpecialization.Text = specialization;
                }

                // Populate the Preferred Day DropDownList
                if (!string.IsNullOrEmpty(daysAvailable))
                {
                    string[] days = daysAvailable.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                    foreach (string day in days)
                    {
                        preferredDay.Items.Add(new ListItem(day.Trim()));
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve values from the form
            string patientNameValue = patientName.Text;
            string contactNumberValue = contactNumber.Text;
            string dobValue = dob.Text;
            string genderValue = genderFemale.Checked ? "Female" : "Male";
            string reasonForVisitValue = reasonForVisit.Text;
            string diseaseDetailsValue = diseaseDetails.Text;
            string preferredDayValue = preferredDay.SelectedValue;
            string appointmentTypeValue = appointmentType.SelectedValue;

            // Perform validation (e.g., check if required fields are filled)
            if (string.IsNullOrEmpty(patientNameValue) || string.IsNullOrEmpty(contactNumberValue) || string.IsNullOrEmpty(reasonForVisitValue))
            {
                lblMessage.Text = "Please fill in all required fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Save the appointment details to a database
            try
            {
                // Define your connection string (replace with your actual connection string)
                string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";

                // Define the SQL query to insert data
                string query = @"
            INSERT INTO Appointments 
            (PatientName, ContactNumber, DOB, Gender, ReasonForVisit, DiseaseDetails, PreferredDay, AppointmentType, DoctorName, DoctorAvailability, DoctorSpecialization) 
            VALUES 
            (@PatientName, @ContactNumber, @DOB, @Gender, @ReasonForVisit, @DiseaseDetails, @PreferredDay, @AppointmentType, @DoctorName, @DoctorAvailability, @DoctorSpecialization)";

                // Create a connection to the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the connection
                    connection.Open();

                    // Create a command object with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the command
                        command.Parameters.AddWithValue("@PatientName", patientNameValue);
                        command.Parameters.AddWithValue("@ContactNumber", contactNumberValue);
                        command.Parameters.AddWithValue("@DOB", dobValue);
                        command.Parameters.AddWithValue("@Gender", genderValue);
                        command.Parameters.AddWithValue("@ReasonForVisit", reasonForVisitValue);
                        command.Parameters.AddWithValue("@DiseaseDetails", diseaseDetailsValue);
                        command.Parameters.AddWithValue("@PreferredDay", preferredDayValue);
                        command.Parameters.AddWithValue("@AppointmentType", appointmentTypeValue);
                        command.Parameters.AddWithValue("@DoctorName", doctorNameTextBox.Text);
                        command.Parameters.AddWithValue("@DoctorAvailability", doctorAvailability.Text);
                        command.Parameters.AddWithValue("@DoctorSpecialization", doctorSpecialization.Text);

                        // Execute the query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if the insertion was successful
                        if (rowsAffected > 0)
                        {
                            //    // Redirect to the confirmation page with doctor name, appointment date, and appointment time
                            //    string doctorName = doctorNameTextBox.Text;
                            //    string appointmentDate = DateTime.Now.ToString("yyyy-MM-dd"); // Current date
                            //    string appointmentTime = DateTime.Now.ToString("hh:mm tt"); // Current time
                            // Store data in session variables
                            Session["DoctorName"] = doctorNameTextBox.Text;
                            Session["AppointmentDate"] = DateTime.Now.ToString("yyyy-MM-dd"); // Current date
                            Session["AppointmentTime"] = DateTime.Now.ToString("hh:mm tt"); // Current time

                            // Redirect to the confirmation page
                            Response.Redirect("Careconnectscheduleappointment.aspx");
                            // Pass data via query string
                            //string redirectUrl = $"Careconnectscheduleappointment.aspx?DoctorName={Server.UrlEncode(doctorName)}&AppointmentDate={Server.UrlEncode(appointmentDate)}&AppointmentTime={Server.UrlEncode(appointmentTime)}";
                            //Response.Redirect(redirectUrl);
                        }
                        else
                        {
                            lblMessage.Text = "Failed to book the appointment. Please try again.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any errors that occur during database operations
                lblMessage.Text = "An error occurred: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}

