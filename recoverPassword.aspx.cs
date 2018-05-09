using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD
{
    public partial class recoverPassword : System.Web.UI.Page
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

        protected void recoverB_Click(object sender, EventArgs e)
        {
            sqlCon = new SqlConnection(sqlConnection);
            SqlCommand sc = new SqlCommand("Select * from loanApplications where emailAddress1 = @emailAddress", sqlCon);
            String pass;
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
                        pass = (String)sqlreader["password"];
                        String from = "American Auto Loans";
                        String to = emailAddressTB.Text;
                        String subject = "Thank you for your interest in American Auto Loan";
                        String body = "Dear User " + emailAddressTB.Text + ",<br/>You requested for you account password for American Auto Loans account. <br/>Your Password:" + pass + "<br/><br/>Thank You.<br/>AmericanAutoLoans.com Team. ";
                        MailMessage mailobj = new MailMessage();
                        mailobj.Body = body;
                        mailobj.From = new MailAddress("americanautoloans123@gmail.com", from);
                        mailobj.To.Add(new MailAddress(to));
                        mailobj.Subject = subject;
                        mailobj.IsBodyHtml = true;
                        SmtpClient SMTPClient = new SmtpClient();
                        SMTPClient.Host = "smtp.gmail.com";
                        SMTPClient.Port = 587;
                        SMTPClient.Credentials = new NetworkCredential("americanautoloans123@gmail.com", "password");
                        SMTPClient.EnableSsl = true;
                        try
                        {
                            SMTPClient.Send(mailobj);
                        }
                        catch (Exception ex)
                        {
                        }
                    }

                }
            }
            finally
            {
                sqlCon.Close();
            }
            
            Response.Write("<script language=javascript>alert('An email with the password information has been sent to the email on file')</script>");
        }
    }
}