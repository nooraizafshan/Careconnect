using System;

namespace Careconnect
{
    public partial class Careconnectscheduleappointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve data from session variables
                string doctorName = Session["DoctorName"] as string;
                string appointmentDate = Session["AppointmentDate"] as string;
                string appointmentTime = Session["AppointmentTime"] as string;

                // Display the values in the labels
                if (!string.IsNullOrEmpty(doctorName))
                {
                    lblDoctorName.Text = doctorName;
                }
                if (!string.IsNullOrEmpty(appointmentDate))
                {
                    lblAppointmentDate.Text = appointmentDate;
                }
                if (!string.IsNullOrEmpty(appointmentTime))
                {
                    lblAppointmentTime.Text = appointmentTime;
                }

                // Clear session variables (optional)
                Session.Remove("DoctorName");
                Session.Remove("AppointmentDate");
                Session.Remove("AppointmentTime");
            }
        }
        protected void btnOK_Click(object sender, EventArgs e)
        {
            // Redirect to the home page or any other page
            Response.Redirect("~/Home.aspx");
        }
    }
}