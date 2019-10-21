using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Store : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        GridView1.DataSource = data.drugstore;
        GridView1.DataBind();
    }
}