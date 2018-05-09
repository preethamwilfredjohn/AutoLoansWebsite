using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ApplyNow_Click(object sender, EventArgs e)
        {
            Session["usedCar"] = "negative";
            Response.Redirect("verifyAccountExistence.aspx");            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["usedCar"] = "negative";
            Response.Redirect("verifyAccountExistence.aspx");
            
        }

        protected void usedCar_Click(object sender, EventArgs e)
        {
            Session["usedCar"] = "Used Car Private Party";
            Response.Redirect("verifyAccountExistence.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {                           
                Response.Redirect("SignIn.aspx");
        }
    }
}