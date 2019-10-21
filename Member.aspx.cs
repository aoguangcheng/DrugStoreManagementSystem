using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        GridView1.DataSource = data.member; ;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string info = TextBox1.Text.ToString();
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        if (DropDownList1.SelectedIndex == 0)
        {
            var res =
                from member in data.member
                where member.memberid.Contains(info)
                select member;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            var res =
                from member in data.member
                where member.membername.Contains(info)
                select member;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            var res =
                from member in data.member
                where member.phonenumber.Contains(info)
                select member;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            var res =
                from member in data.member
                where member.credits > Convert.ToInt16(info)
                select member;
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");

        string name = TextBox2.Text.ToString();
        string phone = TextBox3.Text.ToString();
        string id = phone;

        member mem = new member();
        mem.memberid = id;
        mem.membername = name;
        mem.phonenumber = phone;
        data.member.InsertOnSubmit(mem);
        data.SubmitChanges();

    }
}