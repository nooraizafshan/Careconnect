using System;
using System.Web.UI;

namespace Careconnect
{
    public partial class Creconnectfeesubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialization code (if needed)
        }

        protected void processPayment_Click(object sender, EventArgs e)
        {
            // Set the success message
            lblSuccessMessage.Text = "Payment processed successfully!";
            lblSuccessMessage.Visible = true; // Make the label visible
        }
    }
}