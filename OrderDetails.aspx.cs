using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        var details =
            from orderdetails in data.orderDetails
            where orderdetails.datailid == Session["detailid"].ToString()
            select orderdetails;
        //GridView1.DataSource = details;
        //GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        double sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            double amount = Convert.ToDouble(GridView1.Rows[i].Cells[3].Text.ToString()) * Convert.ToDouble(GridView1.Rows[i].Cells[4].Text.ToString());
            string drugid = GridView1.Rows[i].Cells[2].ToString();
            //Response.Write(GridView1.Rows[i].Cells[3].Text.ToString());

            var price =
                from drug in data.drug
                where drug.drugid == drugid
                select drug.price;
            //Response.Write(GridView1.Rows[i].Cells[3].Text.ToString());
            sum += amount;
        }

        Session["totalmoney"] = sum;
        
            Response.Redirect("Pay.aspx");
    }
}