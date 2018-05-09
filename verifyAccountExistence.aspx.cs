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
    public partial class verifyAccountExistence : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        String sqlConnection = ConfigurationManager.ConnectionStrings["AALDataBase"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkAccountExistence_Click(object sender, EventArgs e)
        {           

            sqlCon = new SqlConnection(sqlConnection);
            SqlCommand sc = new SqlCommand("Select * from loanApplications where emailAddress1 = @emailAddress", sqlCon);
            sc.Parameters.AddWithValue("@emailAddress", emailVerification.Text);
            try
            {
                sqlCon.Open();
                SqlDataReader sqlreader = sc.ExecuteReader();
                if (sqlreader.HasRows)
                {                     
                    Response.Write("<script language=javascript>alert('Account already exist')</script>");                                        
                }
                else
                {
                    Session["verificationEmail"] = emailVerification.Text;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                    "alert('Your account does not exsist. Please go ahead to create one.');" +
                    "window.location='loanApplication.aspx';", true);
                }
            }
            finally
            {
                sqlCon.Close();
            }
            
        }

        protected void emailVerification_TextChanged(object sender, EventArgs e)
        {

        }
    }
}