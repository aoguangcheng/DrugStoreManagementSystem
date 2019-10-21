using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class Invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext data = new DataClassesDataContext("Data Source=.;Initial Catalog=DSMS;Integrated Security=True");
        var res =
            from aa in data.drugstore
            where aa.drugstoreid == Session["drugstoreid"].ToString()
            select aa.drugstorename;
        Label1.Text = "DrugName ：" + res.First().ToString();
        Label2.Text = "StuffId :" + Session["stuffid"].ToString();

        String sqlconn = "Data Source=.;Initial Catalog=DSMS;Integrated Security=True";
        SqlConnection myConnection = new SqlConnection(sqlconn);
        myConnection.Open();


        string strr = Session["detailid"].ToString();
        String strConnection = "select drug.drugname as 品名,drug.drugstandard as 规格,factory.factoryname as 厂家,drug.batchnumber as 批号,drug.price as 零售价,orderDetails.drugnumber as 数量,orderDetails.discount as 折扣 from orderDetails, drug, factory where drug.factoryid = factory.factoryid and orderDetails.drugid = drug.drugid and orderdetails.datailid = '" +strr + "'";
        SqlCommand myCommand = new SqlCommand(strConnection, myConnection);
        SqlDataAdapter Adapter = new SqlDataAdapter();
        Adapter.SelectCommand = myCommand;
        DataSet myDs = new DataSet();
        Adapter.Fill(myDs);
        GridView1.DataSource = myDs.Tables[0].DefaultView;
        GridView1.DataBind();
        myConnection.Close();

        int sum =
            (from s in data.orderDetails
             where s.datailid == Session["detailid"].ToString()
             select s).Count();
        Label3.Text = "总计件数：" + sum.ToString();

        Label4.Text = "应收金额：" + Session["totalmoney"].ToString();

        if (Session["memberid"] == "00000")
        {
            Label6.Text = "未使用会员卡";
            Label7.Text = "";
            Label8.Text = "";
            Label9.Text = "";
        }
        else
        {
            
            var mem =
                from s in data.member
                where s.memberid == Session["memberid"].ToString()
                select s;

            Label6.Text = "会员姓名：" + mem.First().membername.ToString();
            Label7.Text = "会员卡号：" + mem.First().memberid.ToString();
            Label8.Text = "本次积分为：" + Convert.ToInt64(float.Parse(Session["totalmoney"].ToString()) + 1).ToString();
            Label9.Text = "总积分：" + mem.First().credits.ToString();
        }

        var res1 =
            from s in data.orderform
            where s.orderformid == Session["orderformid"].ToString()
            select s;
        Label10.Text = "销售单号："  + res1.First().orderformid.ToString();
        Label11.Text = "销售时间：" + res1.First().saletime.ToString();

        var drugstore1 =
            from drstore in data.drugstore
            where drstore.drugstoreid == Session["drugstoreid"].ToString()
            select drstore;
        Label12.Text = "门店地址：" + drugstore1.First().drugstoreaddress.ToString();
        Label131.Text = "联系方式：" + drugstore1.First().drugstorephonenumber.ToString();
    }
}