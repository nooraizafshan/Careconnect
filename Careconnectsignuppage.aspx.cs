using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Text.RegularExpressions;

namespace Careconnect
{
    public partial class WebForm2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string email = txtGmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            lblMessage.Text = ""; // Clear previous messages

            // ✅ Validate Username
            if (string.IsNullOrEmpty(username))
            {
                lblMessage.Text = "Please enter your username.";
                return;
            }

            // ✅ Validate Email
            if (string.IsNullOrEmpty(email))
            {
                lblMessage.Text = "Please enter your email.";
                return;
            }

            if (!Regex.IsMatch(email, @"^[\w\-.]+@([\w-]+\.)+[\w-]{2,4}$"))
            {
                lblMessage.Text = "Please enter a valid email.";
                return;
            }

            // ✅ Validate Password
            if (string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Please set your password.";
                return;
            }

            if (password.Length < 6)
            {
                lblMessage.Text = "Password should be at least 6 characters.";
                return;
            }

            if (string.IsNullOrEmpty(confirmPassword) || password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }

            // ✅ Database Connection String (Replace with your actual credentials)
            string connectionString = "Server=AFSHANNOREEN;Database=Careconnect;User Id=admin;Password=1256;Encrypt=False";

            // ✅ Insert Data into Database
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO PatientsUsers (Username, Email, Password) VALUES (@Username, @Email, @Password)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password); // ❗ Storing password as plain text (not recommended)

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Sign-up successful!";
                        txtUsername.Text = "";
                        txtGmail.Text = "";
                        txtPassword.Text = "";
                        txtConfirmPassword.Text = "";
                        Response.Redirect("CareconnectSigninPage.aspx");

                    }
                    catch (SqlException ex)
                    {
                        lblMessage.Text = "Database error: " + ex.Message;
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}
