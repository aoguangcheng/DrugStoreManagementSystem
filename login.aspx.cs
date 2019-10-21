using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string stuffid = TextBox1.Text.ToString();
        string password = TextBox2.Text.ToString();
        Session["stuffid"] = stuffid;
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
      
        var res =
            from stuff1 in data.stuff
            where stuff1.stuffid == stuffid && stuff1.password == password
            select stuff1;
        if (res.Count() != 0 && res.First().stuffname != "admin")
        //if(res.Count() == 1 && res.First().stufftype.ToString() == "0")
        {
              var result =
             from stuff in data.stuff
              where stuff.stuffid == stuffid
              select stuff.drugstoreid;
            Session["drugstoreid"] = result.First();

            string date = DateTime.Now.ToString();
            string ipaddress = Request.UserHostAddress;
            string hostname = Request.UserHostName;
            string loginstatus = "success";

            log log1 = new log();
            log1.stuffid = Session["stuffid"].ToString();
            log1.logindate = date;
            log1.ipaddress = ipaddress;
            log1.hostname = hostname;
            log1.loginstatus = loginstatus;
            data.log.InsertOnSubmit(log1);
            data.SubmitChanges();
            Response.Redirect("HomePage.aspx");
        }
        //else if (res.Count() == 1 && res.First().stufftype.ToString() == "1")//
        else if (res.Count() == 1 && res.First().stuffname == "admin")
        {
            var result =
             from stuff in data.stuff
             where stuff.stuffid == stuffid
             select stuff.drugstoreid;
            Session["drugstoreid"] = result.First();

            string date = DateTime.Now.ToString();
            string ipaddress = Request.UserHostAddress;
            string hostname = Request.UserHostName;
            string loginstatus = "success";

            log log1 = new log();
            log1.stuffid = Session["stuffid"].ToString();
            log1.logindate = date;
            log1.ipaddress = ipaddress;
            log1.hostname = hostname;
            log1.loginstatus = loginstatus;
            data.log.InsertOnSubmit(log1);
            data.SubmitChanges();
            Response.Redirect("adminHomepage.aspx");
        }
        else
        {
            string date = DateTime.Now.ToString();
            string ipaddress = Request.UserHostAddress;
            string hostname = Request.UserHostName;
            string loginstatus = "fail";

            log log1 = new log();
            log1.stuffid = Session["stuffid"].ToString();
            log1.logindate = date;
            log1.ipaddress = ipaddress;
            log1.hostname = hostname;
            log1.loginstatus = loginstatus;
            data.log.InsertOnSubmit(log1);
            data.SubmitChanges();
            Label4.Text = "Error in account or password ！！";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
    }
}