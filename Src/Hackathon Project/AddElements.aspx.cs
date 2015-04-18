using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddElements : System.Web.UI.Page
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
        TimeZoneInfo z = TimeZoneInfo.Local;
        string s = z.StandardName;
        string TimeZone = "";
        int i = 0;
        int ret = 0;
        foreach (var part in s.Split(' '))
        {
            if (i == 0 || i == 2)
            {
                TimeZone += part.Substring(0, 1);
            }
            i++;
        }
        ret = daobj.AddElement(txtElementName.Text,txtElementDisplayName.Text,ddlTool.SelectedValue,TimeZone,Session["UserName"].ToString());
        if (ret == 1)
        {
            diverror1.Visible = true;
        }
        else if (ret == 2)
        {
            divsuccess.Visible = true;
        }
        else
        {
            diverror2.Visible = true;
        }
        txtElementDisplayName.Text = "";
        txtElementName.Text = "";
        ddlTool.ClearSelection();
    }
}