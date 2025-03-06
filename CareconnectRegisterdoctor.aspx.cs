using System;
using System.Data.SqlClient;

namespace Careconnect
{
    public partial class CareconnectRegisterdoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
                // Replace with your actual connection string

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Doctors (DoctorName, Username, Password, Specialization, AvailabilityDays, Date, Time) VALUES (@DoctorName, @Username, @Password, @Specialization, @AvailabilityDays, @Date, @Time)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters with values from the form
                        cmd.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text);
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                        cmd.Parameters.AddWithValue("@Specialization", txtSpecialization.Text);
                        cmd.Parameters.AddWithValue("@AvailabilityDays", txtDays.Text);
                        cmd.Parameters.AddWithValue("@Date", Convert.ToDateTime(txtDate.Value)); // Convert HTML input date to DateTime
                        cmd.Parameters.AddWithValue("@Time", TimeSpan.Parse(txtTime.Value)); // Convert HTML input time to TimeSpan

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }

                // Optionally, you can show a success message or redirect the user
                Response.Write("<script>alert('Doctor registered successfully!');</script>");
            }
        }
    }
}