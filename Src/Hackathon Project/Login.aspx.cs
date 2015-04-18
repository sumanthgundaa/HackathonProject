using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    HackathonService daobj = new HackathonService();
    protected void Page_Load(object sender, EventArgs e)
    {
        diverror.Visible = false;
        diverror2.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (chkRemember.Checked)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["UserName"].Value = inputEmail.Value.Trim();
        Response.Cookies["Password"].Value = inputPassword.Value.Trim();

        int ret = daobj.Login(inputEmail.Value,inputPassword.Value);
        if (ret == 1)
        {
            Session["UserName"] = inputEmail.Value;
            Response.Redirect("HomePage.aspx");
        }
        else if (ret == 2)
        {
            diverror.Visible = true;
        }
        else if (ret == 3 || ret == -99)
        {
            diverror2.Visible = true;
        }
    }
}