using System;
using System.Web.UI.WebControls;

namespace Careconnect
{
    public partial class CareconnectDoctordetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic (if needed)
        }

        protected void BtnBookAppointment_Click(object sender, EventArgs e)
        {
            // Retrieve the LinkButton that triggered the event
            LinkButton btn = (LinkButton)sender;

            // Get the CommandArgument value
            string commandArgument = btn.CommandArgument;

            // Split the CommandArgument into its components
            string[] args = commandArgument.Split('|');
            string doctorName = args[0];
            string availability = args[1];
            string specialization = args[2];
            string daysAvailable = args[3]; // Add this line to retrieve days available

            // Perform actions based on the button clicked
            // Redirect to the booking page with query string parameters
            Response.Redirect($"CareconnectbookAppointment.aspx?DoctorName={doctorName}&Availability={availability}&Specialization={specialization}&DaysAvailable={daysAvailable}");
        }
    }
}