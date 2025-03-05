using System;
using System.Data.SqlClient;

namespace Careconnect
{
    public partial class CareconnectAdmitform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void btnAdmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";
                // Replace with your actual connection string

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO PatientAdmissions (PatientName, GuardianName, DaysToAdmit, TotalCharges, PhoneNumber) VALUES (@PatientName, @GuardianName, @DaysToAdmit, @TotalCharges, @PhoneNumber)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PatientName", txtPatientName.Text);
                        cmd.Parameters.AddWithValue("@GuardianName", txtGuardianName.Text);
                        cmd.Parameters.AddWithValue("@DaysToAdmit", Convert.ToInt32(txtDaysToAdmit.Text));
                        cmd.Parameters.AddWithValue("@TotalCharges", Convert.ToDecimal(txtTotalCharges.Text));
                        cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }

                // Optionally, you can show a success message or redirect the user
                Response.Write("<script>alert('Patient admitted successfully!');</script>");
            }
        }
    }
}