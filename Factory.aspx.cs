using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Factory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        GridView1.DataSource = data.factory;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string info = TextBox1.Text.ToString();
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        if (DropDownList1.SelectedIndex == 0)
        {
            var res =
              from factory in data.factory
              where factory.factoryid.Contains(info)
              select factory;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            var res =
              from factory in data.factory
              where factory.factoryname.Contains(info)
              select factory;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            var res =
              from factory in data.factory
              where factory.factoryaddress.Contains(info)
              select factory;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            var res =
              from factory in data.factory
              where factory.factoryphonenumber.Contains(info)
              select factory;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }

        
    }
}