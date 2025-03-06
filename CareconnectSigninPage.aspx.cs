using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Text.RegularExpressions;

namespace Careconnect
{
    public partial class CareconnectSigninPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Clear input fields on initial load
                txtUsername.Text = string.Empty;
                txtPassword.Text = string.Empty;
            }
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            string email = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            lblMessage.Text = "";

            // Email Validation
            if (string.IsNullOrEmpty(email) || !Regex.IsMatch(email, @"^[\w\-.]+@([\w-]+\.)+[\w-]{2,4}$"))
            {
                lblMessage.Text = "Please enter a valid email.";
                return;
            }

            // Password Validation
            if (string.IsNullOrEmpty(password) || password.Length < 6)
            {
                lblMessage.Text = "Password should be at least 6 characters.";
                return;
            }
            if (email == "admin@gmail.com" && password =="123456")
            {
                Response.Redirect("CareconnectAdminpannel.aspx");
            }
            // Database Connection
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Query to retrieve UserId, Username, and Password
                string query = "SELECT UserId, Username, Password FROM PatientsUsers WHERE Email = @Email AND Password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password); // Compare plain-text passwords

                    try
                    {
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Retrieve UserId and Username from the database
                                int userId = reader.GetInt32(0); // UserId
                                string username = reader.GetString(1); // Username

                                // ✅ Store UserId and Username in the session
                                Session["UserId"] = userId;
                                Session["Username"] = username;

                                // Clear input fields
                                txtUsername.Text = string.Empty;
                                txtPassword.Text = string.Empty;

                                // Redirect to dashboard or doctor details page
                                Response.Redirect("CareconnectDoctordetails.aspx", false);
                                Context.ApplicationInstance.CompleteRequest();
                            }
                            else
                            {
                                // Invalid credentials
                                lblMessage.Text = "Invalid email or password.";
                            }
                        }
                    }
                    catch (SqlException ex)
                    {
                        // Handle database errors
                        lblMessage.Text = "Database error: " + ex.Message;
                    }
                    catch (Exception ex)
                    {
                        // Handle other errors
                        lblMessage.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}