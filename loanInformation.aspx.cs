using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Configuration;

namespace WAD
{
    public partial class loanInformation : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        String sqlConnection = ConfigurationManager.ConnectionStrings["AALDataBase"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ContentPlaceHolder contentD = this.Master.Master.FindControl("NestedContentPlaceHolder1") as ContentPlaceHolder;
            Button returnHome = contentD.FindControl("Button1") as Button;
            returnHome.Visible = false;
            if ((string)Session["usedCar"] == "Used Car Private Party")
            {
                primaryLoanPurpose1.Items.Add("Used Car Private Party");
                primaryLoanPurpose1.SelectedIndex = 4;
                primaryLoanPurpose1.Enabled = false;
                Session["usedCar"] = "Negative";
            }
            emailID.Text = Session["email"].ToString();
            if ((string)Session["viewAccountDetails"] == "positive")
            {
                
                sqlCon = new SqlConnection(sqlConnection);
                SqlCommand sc = new SqlCommand("Select * from loanInformation where emailAddress = @emailAddress", sqlCon);
                sc.Parameters.AddWithValue("@emailAddress", emailID.Text);
                try
                {
                    sqlCon.Open();
                    SqlDataReader sqlreader = sc.ExecuteReader();
                    while (sqlreader.Read())
                    {
                        applicationType.SelectedValue = (String)sqlreader["applicationType"];
                        primaryLoanPurpose1.SelectedValue = (String)sqlreader["primaryLoanPurpose"];
                        zipTB.Text = (String)sqlreader["zip"];
                        loanAmtTB.Text = (String)sqlreader["loanAmount"];
                        loanTermTB.Text = (String)sqlreader["loanTerm"];
                        paymentMethodRadio.SelectedValue = (String)sqlreader["paymentMethod"];
                    }
                }
                finally
                {
                    sqlCon.Close();
                }                
                agreement.Checked = true;
                applicationType.Enabled = false;
                primaryLoanPurpose1.Enabled = false;
                zipTB.Enabled = false;
                loanTermTB.Enabled = false;
                loanAmtTB.Enabled = false;
                paymentMethodRadio.Enabled = false;
                agreement.Enabled = false;
                submitLoanApplicaiton.Text = "Go Back";
                Session["viewAccountDetails"] = "negative";
                submitLoanApplicaiton.Visible = false;
                Button2.Visible = true;                
            }            
        }

        protected void agreement_CheckedChanged(object sender, EventArgs e)
        {
        }

        protected void submitLoanApplicaiton_Click(object sender, EventArgs e)
        {
            if (agreement.Checked == false)
            {
                Response.Write("<script language=javascript>alert('Please accept confirmation checkbox')</script>");
            }
            else
            { 
                sqlCon = new SqlConnection(sqlConnection);
                SqlCommand sc = new SqlCommand("INSERT INTO loanInformation VALUES(@emailAddress, @applicationType, @primaryLoanPurpose, @zip, @loanAmount," +
                "@loanTerm, @paymentMethod)", sqlCon);
                sc.Parameters.AddWithValue("@emailAddress", emailID.Text);
                sc.Parameters.AddWithValue("@applicationType", applicationType.Text);
                sc.Parameters.AddWithValue("@primaryLoanPurpose", primaryLoanPurpose1.Text);
                sc.Parameters.AddWithValue("@zip", zipTB.Text);
                sc.Parameters.AddWithValue("@loanAmount", loanAmtTB.Text);
                sc.Parameters.AddWithValue("@loanTerm", loanTermTB.Text);
                sc.Parameters.AddWithValue("@paymentMethod", paymentMethodRadio.SelectedValue);
                try
                {
                    sqlCon.Open();
                    sc.ExecuteNonQuery();
                }
                finally
                {
                    sqlCon.Close();
                }                                    
                String from = "American Auto Loans";
                String to = emailID.Text;
                String subject = "Thank you for your interest in American Auto Loan";
                String body = "Dear New User " + emailID.Text + ",<br/>Thank you for creating a AmericanAuoLoans.com account. <br/>Our staff will review your application within the next 24 hours. <br/>Our Support staff is available 24 hours a day to answer questions regarding your loan application.<br/><br/>Thank You.<br/>AmericanAutoLoans.com Team. ";
                MailMessage mailobj = new MailMessage();
                mailobj.Body = body;
                mailobj.From = new MailAddress("americanautoloans123@gmail.com", from);
                mailobj.To.Add(new MailAddress(to));
                mailobj.Subject = subject;
                mailobj.IsBodyHtml = true;
                SmtpClient SMTPClient = new SmtpClient();
                SMTPClient.Host = "smtp.gmail.com";
                SMTPClient.Port = 587;
                SMTPClient.Credentials = new NetworkCredential("americanautoloans123@gmail.com", "pasword");
                SMTPClient.EnableSsl = true;
                try
                {
                    SMTPClient.Send(mailobj);
                }
                catch (Exception ex)
                {
                    emailException.Text = ex.ToString();
                }
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", 
                    "alert('Thank you for signing up. " +
                    "You can now login using LogIn option. A confirmation email has been sent to the email specified.');" +
                    "window.location='Default.aspx';", true);
                Session.Abandon();
            }
        }        
        protected void edit_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {            
            Response.Redirect("myAccount.aspx");
        }
    }
}