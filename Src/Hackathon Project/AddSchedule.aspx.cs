using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddSchedule : System.Web.UI.Page
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
        ret = daobj.AddSchedule(txtScheduleName.Text, Convert.ToInt32(txtStartHour.Text),Convert.ToInt32(txtEndHour.Text), Session["UserName"].ToString());
        if (ret == 1)
        {
            divsuccess.Visible = true;
            
        }
        else if (ret == -1)
        {
            diverror1.Visible = true;
        }
        else
        {
            diverror2.Visible = true;
        }
        txtScheduleName.Text = "";
        txtEndHour.Text = "";
        txtStartHour.Text = "";
    }
}