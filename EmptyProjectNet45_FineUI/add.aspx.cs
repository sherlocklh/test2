using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace EmptyProjectNet45_FineUI
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)//页面验证通过
            {
                string insertnum = (Convert.ToInt32(Session["last"]) + 1).ToString();
                string sqlStr = "Insert into [xinxi](name,num,sex,phone,sushe,xueyuan) Values ('"  + txtname.Text + "','"+ txtnum.Text + "','" + txtsex.Text + "','" + txtphone.Text + "','" + txtsushe.Text + "','" + txtxueyuan.Text + "')";
                string Connstring = ConfigurationManager.ConnectionStrings["sherlock.sherlock.dbo"].ConnectionString;
                SqlConnection conn = new SqlConnection(Connstring);
                SqlCommand sqlCom = new SqlCommand(sqlStr, conn);   //创建实例，两个参数，前者时SQL语句，后者时连接对象
                conn.Open();
                // Response.Write(sqlStr);

                int count = sqlCom.ExecuteNonQuery();  //编辑的行数
                if (count > 0)
                {
                    Response.Write("<script>alert('更新成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('更新失败！')</script>");
                }
                conn.Close();

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtnum.Text = "";
            txtsex.Text = "";
            txtphone.Text = "";
            txtsushe.Text = "";
            txtxueyuan.Text = "";
           
        }
    }
}