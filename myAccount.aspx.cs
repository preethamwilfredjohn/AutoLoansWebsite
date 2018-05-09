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
    public partial class myAccount : System.Web.UI.Page
    {
        SqlConnection sqlCon, sqlcon1;
        String sqlConnection = ConfigurationManager.ConnectionStrings["AALDataBase"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ContentPlaceHolder contentD = this.Master.Master.FindControl("NestedContentPlaceHolder1") as ContentPlaceHolder;
            Button returnHome = contentD.FindControl("Button1") as Button;
            returnHome.Visible = false;

            emaiAddressL.Text = Session["email"].ToString();            

            sqlCon = new SqlConnection(sqlConnection);
            SqlCommand sc1 = new SqlCommand("Select * from loanInformation where emailAddress = @emailAddress", sqlCon);
            sc1.Parameters.AddWithValue("@emailAddress", Session["email"].ToString());                                    
            try
            {
                sqlCon.Open();
                SqlDataReader sqlreader1 = sc1.ExecuteReader();                
                while (sqlreader1.Read())
                {
                    accountApplicationType.Text = (String)sqlreader1["applicationType"];
                    primaryLoanPurpose.Text = (String)sqlreader1["primaryLoanPurpose"];                    
                    loanAmount.Text = (String)sqlreader1["loanAmount"];
                    loanTerm.Text = (String)sqlreader1["loanTerm"];
                    paymentMethod.Text = (String)sqlreader1["paymentMethod"];
                }
               
            }
            finally
            {
                sqlCon.Close();
            }
            sqlcon1 = new SqlConnection(sqlConnection);
            SqlCommand sc = new SqlCommand("Select * from loanApplications where emailAddress1 = @emailAddress1", sqlcon1);
            sc.Parameters.AddWithValue("@emailAddress1", Session["email"].ToString());
            try
            {
                sqlcon1.Open();
                SqlDataReader sqlreader = sc.ExecuteReader();
                while (sqlreader.Read())
                {
                    name.Text = (String)sqlreader["fname"];
                }
            }
            finally
            {
                sqlcon1.Close();
            }
        }

        protected void editPersonelDetails_Click(object sender, EventArgs e)
        {
            Session["editPersonnelInfo"] = "positive";
            Response.Redirect("loanApplication.aspx");
        }

        protected void viewAccountDetails_Click(object sender, EventArgs e)
        {
            Session["viewAccountDetails"] = "positive";
            Response.Redirect("loanInformation.aspx");
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Session.Abandon();
                Response.Redirect("Default.aspx");                
            }            
        }
    }
}