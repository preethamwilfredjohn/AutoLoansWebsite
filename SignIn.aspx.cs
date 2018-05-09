using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD
{
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        String sqlConnection = ConfigurationManager.ConnectionStrings["AALDataBase"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void signinB_Click(object sender, EventArgs e)
        {
            sqlCon = new SqlConnection(sqlConnection);
            SqlCommand sc = new SqlCommand("Select * from loanApplications where emailAddress1 = @emailAddress", sqlCon);
            sc.Parameters.AddWithValue("@emailAddress", emailAddressTB.Text);
            try
            {
                sqlCon.Open();
                SqlDataReader sqlreader = sc.ExecuteReader();
                if (!sqlreader.HasRows)
                {
                    Response.Write("<script language=javascript>alert('Account does not exsist')</script>");
                }
                else
                {
                    while (sqlreader.Read())
                    {                        
                            if ((String)sqlreader["emailAddress1"] == emailAddressTB.Text && (String)sqlreader["password"] == passwordTB.Text)
                            {
                                Session["email"] = emailAddressTB.Text;
                                Response.Redirect("myAccount.aspx");
                            }
                            else
                            {
                                Response.Write("<script language=javascript>alert('Credentials does not match')</script>");
                            }
                                                
                    }
                }
            }
            finally
            {
                sqlCon.Close();
            }
        }
    }
}