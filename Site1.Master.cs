using System;
using System.Web.Security; // For FormsAuthentication

namespace Careconnect
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Ensure controls are not null before accessing them
                if (loggedInUser != null && btnSignUp != null && btnSignIn != null && btnSignOut != null)
                {
                    // Check if the user is authenticated or session exists
                    if (Request.IsAuthenticated || Session["Username"] != null)
                    {
                        // User is logged in
                        loggedInUser.Visible = true;

                        // Display the username from the session
                        loggedInUser.InnerText = "Welcome, " + Session["Username"].ToString();

                        // Show Sign Out button
                        btnSignOut.Visible = true;

                        // Hide Sign Up and Sign In buttons
                        btnSignUp.Visible = false;
                        btnSignIn.Visible = false;
                    }
                    else
                    {
                        // User is not logged in
                        loggedInUser.Visible = false;

                        // Show Sign Up and Sign In buttons
                        btnSignUp.Visible = true;
                        btnSignIn.Visible = true;

                        // Hide Sign Out button
                        btnSignOut.Visible = false;
                    }
                }
                else
                {
                    // Log or handle the case where controls are not found
                    throw new Exception("One or more controls are not initialized.");
                }
            }
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            // Sign out the user
            FormsAuthentication.SignOut();

            // Clear the session
            Session.Clear();

            // Redirect to the home page or login page
            Response.Redirect("CareconnectHomepage.aspx");
        }
    }
}