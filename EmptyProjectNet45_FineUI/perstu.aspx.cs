using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace EmptyProjectNet45_FineUI
{
    public partial class perstu : System.Web.UI.Page
    {
        string Connstring = ConfigurationManager.ConnectionStrings["sherlock.sherlock.dbo"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["id"].ToString();
        }
        #region Bind
        public void Bind()
        {
            SqlConnection conn = new SqlConnection(Connstring);
            string sqlStr = "select * from [chengji] order by ord";
            SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);//数据适配器，连接dataset与数据库
            DataSet myds = new DataSet();  //内存中的数据库
            conn.Open();
            adapter.Fill(myds, "chengji"); //把数据库填充到适配器
            GridView1.DataSource = myds;
            GridView1.AllowPaging = true;  //分页启用
            GridView1.PageSize = 7;   //每页显示7行数据
            GridView1.DataKeyNames = new String[] { "ord" };   //设定主键
            GridView1.DataBind();
            conn.Close();
        }

        #endregion
        protected void Button1_Click(object sender, EventArgs e)
        {
            string key = name.Text.Trim();
            string sqlStr = "Select * from [chengji] "; //模糊查询，%可以替代任意长度字符
            sqlStr += "where num like '%" + key + "%' ";
            SqlConnection conn = new SqlConnection(Connstring);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);
            DataSet ds = new DataSet();
            conn.Open();
            adapter.Fill(ds, "chengji");
            GridView1.DataSource = ds;
            GridView1.AllowPaging = true;  //分页启用
            GridView1.PageSize = 7;   //每页显示7行数据
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string key = name.Text.Trim();
            string sqlStr = "Select * from [chengji] "; //模糊查询，%可以替代任意长度字符
            sqlStr += "where num like '%" + key + "%' ";
            SqlConnection conn = new SqlConnection(Connstring);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlStr, conn);
            DataSet ds = new DataSet();
            conn.Open();
            adapter.Fill(ds, "chengji");
            GridView1.DataSource = ds;
            GridView1.AllowPaging = true;  //分页启用
            GridView1.PageSize = 7;   //每页显示7行数据
            GridView1.DataBind();
            int total = 0;
            double ave = 0.0;
            for(int i=4;i<=9;i++)
            {
                total += int.Parse(ds.Tables["chengji"].Rows[0][i].ToString());
            }
            ave = total / (double)6;
            /*for (int i = 4; i <= 9; i++)
            {
                if (int.Parse(ds.Tables["chengji"].Rows[0][i].ToString()) > max)
                    max = int.Parse(ds.Tables["chengji"].Rows[0][i].ToString());
                if (int.Parse(ds.Tables["chengji"].Rows[0][i].ToString()) < min)
                    min = int.Parse(ds.Tables["chengji"].Rows[0][i].ToString());
            }
            txthscore.Text = max.ToString();
            txtlscore.Text = min.ToString();
            txtall.Text = ds.Tables["chengji"].Rows[0]["总分"].ToString();
            ave = int.Parse(ds.Tables["chengji"].Rows[0]["总分"].ToString()) / (double)5;*/
            txtave.Text = ave.ToString();
            conn.Close();
        }
    }
}