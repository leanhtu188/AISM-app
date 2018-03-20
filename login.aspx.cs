using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if(tbxUserName.Text == "admin" 
                && tbxPassword.Text == "admin")
            {
                statusMessage.Text = "logged in";
                statusMessage.Visible = true;
                //Response.Redirect("summary.aspx");
            } else if(tbxUserName.Text=="admin"
                && tbxPassword.Text == "admin")
            {
                statusMessage.Text = "logged in";
                statusMessage.Visible = true;   
                Response.Redirect("summary.aspx");
            } else
            {
                statusMessage.Visible = true;
            }
        } catch(Exception ex)
        {
            statusMessage.Text = ex.Message;
            statusMessage.Visible = true;

        }
    }
}