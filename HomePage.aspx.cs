using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Drug : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            //Session["detailid"] = "";
            //Session["orderformid"] = "";
            string info = TextBox1.Text.ToString();
            DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");

            var res =
                from drug in data.drug
                where drug.drugid.Contains(info)
                select drug;
            GridView1.DataSource = res;
            GridView1.DataKeyNames = new string[] { "drugid" };
            GridView1.DataBind();
        }
       // Label6.Text = "DETAILID:" + Session["detailid"].ToString();
       // Label7.Text = "ORFORMID:" + Session["orderformid"].ToString();
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string info = TextBox1.Text.ToString();
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        if (DropDownList1.SelectedIndex == 0)
        {
            var res =
                from drug in data.drug
                where drug.drugid.Contains(info)
                select drug;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            var res =
                from drug in data.drug
                where drug.factoryid.Contains(info)
                select drug;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            var res =
                from drug in data.drug
                where drug.drugname.Contains(info)
                select drug;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            var res =
                from drug in data.drug
                where drug.drugtype.Contains(info)
                select drug;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.Length != 0)
        {
            Session["memberid"] = TextBox2.Text.ToString();
        }
        else
        {
            Session["memberid"] = "00000";
        }
        
        int flag = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cbox.Checked == true)
            {
                flag++;
                //Response.Write(GridView1.DataKeys[i].Value.ToString());
                //TextBox2.Text += GridView1.DataKeys[i].Value.ToString();
               
                DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
                ///////////////////////////////////////////////
                var exist =
                    from orderform1 in data.orderform
                    where orderform1.orderformid == Session["orderformid"].ToString()
                    select orderform1;
                if (flag == 1 && exist.Count() == 0)
                {
                    orderform form = new orderform();
                    form.orderformid = Session["orderformid"].ToString();
                    form.stuffid = Session["stuffid"].ToString();
                    form.drugstoreid = Session["drugstoreid"].ToString();
                    if (TextBox2.Text.Length != 0)
                    {
                        form.memberid = TextBox2.Text.ToString();
                    }
                    else
                    {
                        form.memberid = "00000";
                    }   
                    form.saletime = DateTime.Now;
                    form.totalmoney = 0;
                    data.orderform.InsertOnSubmit(form);
                    data.SubmitChanges();
                }
                
                /////////////////////////////////////////
                orderDetails de = new orderDetails();
                de.datailid = Session["detailid"].ToString();
                //de.datailid = "111";
               // de.orderformid = Session["orderformid"].ToString();
                de.orderformid = Session["orderformid"].ToString();
                de.drugid = GridView1.DataKeys[i].Value.ToString();
                de.discount = 1;
                de.drugnumber = 1;
                data.orderDetails.InsertOnSubmit(de);
                data.SubmitChanges();
            }
        }
        Response.Redirect("OrderDetails.aspx");
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        string detailid = "de" + Session["drugstoreid"].ToString() + "-"  + DateTime.Now.ToString();
        Session["detailid"] = detailid;
      //  Label2.Text = "DETAILID:" + Session["detailid"].ToString();
        
        string orderformid = Session["drugstoreid"].ToString() + "-" + DateTime.Now.ToString();
        Session["orderformid"] = orderformid;
       // Label3.Text = "ORFORMID:" + Session["orderformid"].ToString();
        Label6.Text = "DETAILID:" + Session["detailid"].ToString();
        Label7.Text = "ORFORMID:" + Session["orderformid"].ToString();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("OrderDetails.aspx");
    }
}
