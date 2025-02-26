using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Careconnect
{
	public partial class Site2 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session.Clear(); // Clear session
            Response.Redirect("CareconnectHomepage.aspx");
        }

        protected void btnManagePatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("CareconnectManagepatientpannel.aspx");

        }

        protected void btnManageDoctors_Click(object sender, EventArgs e)
        {
            Response.Redirect("CareconnectManageDoctor.aspx");

        }

        protected void btnManageAppointments_Click(object sender, EventArgs e)
        {
            Response.Redirect("CareconnectManageAppointments.aspx");

        }
    }
}