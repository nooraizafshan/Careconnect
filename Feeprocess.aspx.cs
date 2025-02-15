using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class RescheduleAppointment : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any initialization logic
        }

        protected void btnReschedule_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
