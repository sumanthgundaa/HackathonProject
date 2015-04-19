using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisableKPI : System.Web.UI.Page
{
    HackathonService daobj = new HackathonService();
    static int kid;
    static int sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        divError21.Visible = false;
        divError22.Visible = false;
        divSuccess1.Visible = false;
        disabledTextInput.Visible = false;
        disabledTextInput1.Visible = false;
        div2.Visible = false;
        div3.Visible = false;
    }
    protected void gvKPIList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       int ret;
        if (e.CommandName == "Disable")
        {
            int index = Convert.ToInt32(e.CommandArgument.ToString());
            GridViewRow row = gvKPIList.Rows[index];
            int KPIId = Convert.ToInt32(row.Cells[0].Text);
            int Sid = Convert.ToInt32(row.Cells[1].Text);
            ret = daobj.DisableKPI(KPIId,Sid);
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
            lblKpId.Visible = true;
            lblSid.Visible = true;
            lblHeading2.Visible = true;
            lblDarkGreenValue.Visible = true;
            lblGreenValue.Visible = true;
            lblYellowValue.Visible = true;
            lblOrangeValue.Visible = true;
            lblRedValue.Visible = true;
            lblKpiName.Visible = true;
            lblOrder.Visible = true;
            lblTool.Visible = true;
            txtDarkGreenValue.Visible = true;
            txtGreenValue.Visible = true;
            txtYellowValue.Visible = true;
            txtOrangeValue.Visible = true;
            txtRedValue.Visible = true;
            txtKpiName.Visible = true;
            ddlOrder.Visible = true;
            ddlTool.Visible = true;
            btnUpdate.Visible = true;
            disabledTextInput.Visible = true;
            disabledTextInput1.Visible = true;
            int index = Convert.ToInt32(e.CommandArgument.ToString());
            GridViewRow row = gvKPIList.Rows[index];
            string ElementDisplayName = row.Cells[2].Text;
            string ElementName = row.Cells[1].Text;
            int KPIId = Convert.ToInt32(row.Cells[0].Text);
            int ScheduleId = Convert.ToInt32(row.Cells[1].Text);
            int DarkGreenValue = Convert.ToInt32(row.Cells[2].Text);
            int GreenValue = Convert.ToInt32(row.Cells[3].Text);
            int YellowValue = Convert.ToInt32(row.Cells[4].Text);
            int OrangeValue = Convert.ToInt32(row.Cells[5].Text);
            int RedValue = Convert.ToInt32(row.Cells[6].Text);
            string KpiName = row.Cells[7].Text;
            disabledTextInput.Value = KPIId.ToString();
            disabledTextInput1.Value = ScheduleId.ToString();
            txtDarkGreenValue.Text = DarkGreenValue.ToString();
            txtGreenValue.Text = GreenValue.ToString();
            txtYellowValue.Text = YellowValue.ToString();
            txtOrangeValue.Text = OrangeValue.ToString();
            txtRedValue.Text = RedValue.ToString();
            txtKpiName.Text = KpiName;
            kid = KPIId;
            sid = ScheduleId;
        }
        gvKPIList.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int ret = 0;
      
        int KPIId = kid;

        ret = daobj.UpdateKPI(KPIId,Convert.ToInt32(txtDarkGreenValue.Text), Convert.ToInt32(txtGreenValue.Text),Convert.ToInt32(txtYellowValue.Text),Convert.ToInt32(txtOrangeValue.Text),Convert.ToInt32(txtRedValue.Text),txtKpiName.Text,ddlOrder.SelectedValue,ddlTool.SelectedValue, Session["UserName"].ToString());

        if (ret == 2)
        {
            div3.Visible = true;
            lblKpId.Visible = false;
            lblSid.Visible = false;
            disabledTextInput.Visible = false;
            disabledTextInput1.Visible = false;
            gvKPIList.DataBind();
        }
        else
        {
            lblKpId.Visible = false;
            lblSid.Visible = false;
            disabledTextInput.Visible = false;
            disabledTextInput1.Visible = false;
        }
    }
}