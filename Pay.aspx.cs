using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["totalmoney"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        var query =
            from mem in data.member
            where mem.memberid == Session["memberid"].ToString()
            select mem;
        foreach (member mem in query)
        {
            //mem.credits += Convert(Session["totalmonry"].ToString());
            float a = float.Parse(mem.credits.ToString());
            a += float.Parse(Session["totalmoney"].ToString());
            mem.credits = a;
        }
        data.SubmitChanges();

        var form =
            from order in data.orderform
            where order.orderformid == Session["orderformid"].ToString()
            select order;
        foreach (orderform fo in form)
        {
            fo.totalmoney = float.Parse(Session["totalmoney"].ToString());
        }
        data.SubmitChanges();
        
        Response.Redirect("Invoice.aspx");
    }
}