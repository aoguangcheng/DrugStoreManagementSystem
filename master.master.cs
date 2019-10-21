using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString();
        Label4.Text = "STOREID:" + Session["drugstoreid"].ToString();
        Label5.Text = "STUFFID:" + Session["stuffid"].ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
}
