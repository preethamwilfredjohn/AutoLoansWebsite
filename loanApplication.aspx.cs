using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WAD
{
    public partial class loanApplication : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        String sqlConnection = ConfigurationManager.ConnectionStrings["AALDataBase"].ConnectionString;        
        protected void Page_Load(object sender, EventArgs e)
        {           
            ContentPlaceHolder contentD = this.Master.Master.FindControl("NestedContentPlaceHolder1") as ContentPlaceHolder;
            Button returnHome = contentD.FindControl("Button1") as Button;
            returnHome.Visible = false;
            
            if ((string)Session["editPersonnelInfo"] == "positive")
            {
                fNameTB.Enabled = false;
                mInitialsTB.Enabled = false;
                lNameTB.Enabled = false;
                ssnTB.Enabled = false;
                datePick.Disabled = true;
                dlTB.Enabled = false;
                edit.Enabled = true;
                savePersonalInfo.Enabled = false;
                enterLoanInfo.Enabled = false;
                email1TB.Enabled = false;
                Session["editPersonnelInfo"] = "negative";
                sqlCon = new SqlConnection(sqlConnection);
                SqlCommand sc = new SqlCommand("Select * from loanApplications where emailAddress1 = @emailAddress", sqlCon);
                sc.Parameters.AddWithValue("@emailAddress", Session["email"].ToString());
                try
                {
                    sqlCon.Open();
                    SqlDataReader sqlreader = sc.ExecuteReader();
                    while (sqlreader.Read())
                    {
                        email1TB.Text = (String)sqlreader["emailAddress1"];
                        email2TB.Text = (String)sqlreader["emailAddress2"];
                        fNameTB.Text = (String)sqlreader["fname"];
                        mInitialsTB.Text = (String)sqlreader["mname"];
                        lNameTB.Text = (String)sqlreader["lname"];
                        addressTB.Text = (String)sqlreader["address"];
                        aptNoTB.Text = (String)sqlreader["apt"];
                        cityTB.Text = (String)sqlreader["city"];
                        stateTB.Text= (String)sqlreader["state"];
                        zipTB.Text = (String)sqlreader["zip"];
                        homePhoneTB.Text = (String)sqlreader["phone"];
                        yearsTB.Text = (String)sqlreader["year"];
                        MonthsTB.Text = (String)sqlreader["month"];
                        housingStatusRadio.Text = (String)sqlreader["housingStatus"];
                        ssnTB.Text = (String)sqlreader["ssn"];
                        datePick.Value = (String)sqlreader["dateOfBirth"];
                        dlTB.Text = (String)sqlreader["driverLicense"];
                        password.Text = (String)sqlreader["password"];                        
                    }
                }
                finally
                {
                    sqlCon.Close();
                }
            }                             
        }
        protected void enterLoanInfo_Click(object sender, EventArgs e)
        {
            Session["email"] = email1TB.Text;
            if ((String)Session["verificationEmail"] == email1TB.Text)
            {                                
                sqlCon = new SqlConnection(sqlConnection);
                SqlCommand sc = new SqlCommand("INSERT INTO loanApplications VALUES(@emailAddress1, @fname, @mname, @lname, @emailAddress2," +
                    "@address, @apt, @city, @state, @zip, @phone, @year, @month, @housingStatus, @ssn, @dateOfBirth, @driverLicense, @password)", sqlCon);
                sc.Parameters.AddWithValue("@fname", fNameTB.Text);
                sc.Parameters.AddWithValue("@lname", lNameTB.Text);
                sc.Parameters.AddWithValue("@mname", mInitialsTB.Text);
                sc.Parameters.AddWithValue("@emailAddress1", email1TB.Text);
                sc.Parameters.AddWithValue("@emailAddress2", email2TB.Text);
                sc.Parameters.AddWithValue("@address", addressTB.Text);
                sc.Parameters.AddWithValue("@apt", aptNoTB.Text);
                sc.Parameters.AddWithValue("@city", cityTB.Text);
                sc.Parameters.AddWithValue("@state", stateTB.Text);
                sc.Parameters.AddWithValue("@zip", zipTB.Text);
                sc.Parameters.AddWithValue("@phone", homePhoneTB.Text);
                sc.Parameters.AddWithValue("@year", yearsTB.Text);
                sc.Parameters.AddWithValue("@housingStatus", housingStatusRadio.SelectedValue);
                sc.Parameters.AddWithValue("@month", MonthsTB.Text);
                sc.Parameters.AddWithValue("@ssn", ssnTB.Text);
                sc.Parameters.AddWithValue("@dateOfBirth", datePick.Value);
                sc.Parameters.AddWithValue("@driverLicense", dlTB.Text);
                sc.Parameters.AddWithValue("@password", password.Text);
                try
                {
                    sqlCon.Open();
                    sc.ExecuteNonQuery();
                }
                finally
                {
                    sqlCon.Close();
                }
                Response.Redirect("loanInformation.aspx");
                Session["verificationEmail"] = null;
            }
            else
            {
                Response.Write("<script language=javascript>" +
                    "alert('Email entered in verififcation does not match the email entered in this page.')" +
                    "</script>");
            }            
        }

        protected void savePersonalInfo_Click(object sender, EventArgs e)
        {
            Response.Write("<script language=javascript>alert('Details Saved')</script>");
        }

        protected void edit_Click(object sender, EventArgs e)
        {            
            sqlCon = new SqlConnection(sqlConnection);
            SqlCommand sc = new SqlCommand("update loanApplications set fname = @fname, mname = @mname, lname = @lname, emailAddress1 = @emailAddress1, emailAddress2 = @emailAddress2," +
                "address = @address, apt = @apt, city = @city, state = @state, zip = @zip, phone = @phone, year = @year, month = @month, housingStatus = @housingStatus, ssn = @ssn, " +
                "dateOfBirth = @dateOfBirth, driverLicense = @driverLicense, password = @password where emailAddress1 = @emailAddress1", sqlCon);
            sc.Parameters.AddWithValue("@fname", fNameTB.Text);
            sc.Parameters.AddWithValue("@lname", lNameTB.Text);
            sc.Parameters.AddWithValue("@mname", mInitialsTB.Text);
            sc.Parameters.AddWithValue("@emailAddress1", email1TB.Text);
            sc.Parameters.AddWithValue("@emailAddress2", email2TB.Text);
            sc.Parameters.AddWithValue("@address", addressTB.Text);
            sc.Parameters.AddWithValue("@apt", aptNoTB.Text);
            sc.Parameters.AddWithValue("@city", cityTB.Text);
            sc.Parameters.AddWithValue("@state", stateTB.Text);
            sc.Parameters.AddWithValue("@zip", zipTB.Text);
            sc.Parameters.AddWithValue("@phone", homePhoneTB.Text);
            sc.Parameters.AddWithValue("@year", yearsTB.Text);
            sc.Parameters.AddWithValue("@housingStatus", housingStatusRadio.SelectedValue);
            sc.Parameters.AddWithValue("@month", MonthsTB.Text);
            sc.Parameters.AddWithValue("@ssn", ssnTB.Text);
            sc.Parameters.AddWithValue("@dateOfBirth", datePick.Value);
            sc.Parameters.AddWithValue("@driverLicense", dlTB.Text);
            sc.Parameters.AddWithValue("@password", password.Text);
            try
            {
                sqlCon.Open();
                sc.ExecuteNonQuery();
            }
            finally
            {
                sqlCon.Close();
            }           
            Response.Redirect("myAccount.aspx");
        }              
    }

}