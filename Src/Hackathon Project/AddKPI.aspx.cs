using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddKPI : System.Web.UI.Page
{
    HackathonService daobj = new HackathonService();
    protected void Page_Load(object sender, EventArgs e)
    {
        diverror1.Visible = false;
        diverror2.Visible = false;
        divsuccess.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int ret = 0;
        DataTable dt = null;
        int ScheduleId;
        dt = daobj.GetSchedule();
        foreach (DataRow row in dt.Rows)
        {
            ScheduleId = Convert.ToInt32(row[0]);
            ret = daobj.AddKPI(Convert.ToInt32(txtKpid.Text),ScheduleId,Convert.ToInt32(txtDarkGreenValue.Text),Convert.ToInt32(txtGreenValue.Text),Convert.ToInt32(txtYellowValue.Text),Convert.ToInt32(txtOrangeValue.Text),Convert.ToInt32(txtRedValue.Text),txtKpiName.Text,ddlOrder.SelectedValue.ToString(),ddlTool.SelectedValue.ToString(),Session["UserName"].ToString());
        }
        if (ret == 1)
        {
            diverror1.Visible = true;
        }
        else if (ret == 2)
        {
            divsuccess.Visible = true;
            txtKpid.Text = "";
            txtDarkGreenValue.Text = "";
            txtGreenValue.Text = "";
            txtYellowValue.Text = "";
            txtOrangeValue.Text = "";
            txtRedValue.Text = "";
            txtKpiName.Text = "";
            ddlOrder.ClearSelection();
            ddlTool.ClearSelection();
        }
        else
        {
            diverror2.Visible = true;
        }

    }
}