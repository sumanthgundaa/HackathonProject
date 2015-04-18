using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisableElements : System.Web.UI.Page
{
    HackathonService daobj = new HackathonService();
    static int EId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        divError21.Visible = false;
        divError22.Visible = false;
        divSuccess1.Visible = false;
        disabledTextInput.Visible = false;
        div1.Visible = false;
        div2.Visible = false;
        div3.Visible = false;
    }
    protected void gvElementsList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int ret;
        if (e.CommandName == "Disable")
        {
            int index = Convert.ToInt32(e.CommandArgument.ToString());
            GridViewRow row = gvElementsList.Rows[index];
            int ElementId = Convert.ToInt32(row.Cells[0].Text);
            ret = daobj.DisableElement(ElementId);
            if (ret == 1)
            {
                divError21.Visible = true;
            }
            else if (ret == 2)
            {
                divSuccess1.Visible = true;
            }
            else
            {
                divError22.Visible = true;
            }
        }
        else if (e.CommandName == "Change")
        {
            lblHeading2.Visible = true;
            lblElementName2.Visible = true;
            lblElementDisplayName2.Visible = true;
            txtElementName2.Visible = true;
            txtElementDisplayName2.Visible = true;
            lblElementId.Visible = true;
            btnUpdate.Visible = true;
            disabledTextInput.Visible = true;
             int index = Convert.ToInt32(e.CommandArgument.ToString());
            GridViewRow row = gvElementsList.Rows[index];
            string ElementDisplayName = row.Cells[2].Text;
            string ElementName = row.Cells[1].Text;
            int ElementId = Convert.ToInt32(row.Cells[0].Text);
            txtElementDisplayName2.Text = ElementDisplayName;
            txtElementName2.Text = ElementName;
            disabledTextInput.Value = ElementId.ToString();
            EId = ElementId;
        }
        gvElementsList.DataBind();
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
        int ElementId = EId;
        ret = daobj.UpdateElement(ElementId, txtElementName2.Text, txtElementDisplayName2.Text, TimeZone, Session["UserName"].ToString());

        if (ret == 1)
        {
            div1.Visible = true;
            lblElementId.Visible = false;
            disabledTextInput.Visible = false;
        }
        else if (ret == 2)
        {
            div3.Visible = true;
            lblElementId.Visible = false;
            disabledTextInput.Visible = false;
            gvElementsList.DataBind();
        }
        else 
        {
            div2.Visible = true;
            lblElementId.Visible = false;
            disabledTextInput.Visible = false;
        }
    }
}