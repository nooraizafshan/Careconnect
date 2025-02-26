using System;
using System.Data;

namespace Careconnect
{
    public partial class CareconnectManagePatients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("PatientName");
            dt.Columns.Add("GuardianName");
            dt.Columns.Add("NumberOfDays");
            dt.Columns.Add("TotalCharges");
            dt.Columns.Add("PhoneNumber");
            dt.Columns.Add("Status");

            // Add sample data
            dt.Rows.Add("John Doe", "Jane Smith", "5", "$500", "1234567890", "Confirmed");
            dt.Rows.Add("Jane Smith", "John Doe", "3", "$300", "0987654321", "Pending");
            dt.Rows.Add("Michael Johnson", "Jane Smith", "7", "$700", "1122334455", "Cancelled");

            gvPatients.DataSource = dt;
            gvPatients.DataBind();
        }

        public string GetStatusClass(string status)
        {
            switch (status.ToLower())
            {
                case "confirmed":
                    return "status-confirmed";
                case "pending":
                    return "status-pending";
                case "cancelled":
                    return "status-cancelled";
                default:
                    return "";
            }
        }
    }
}