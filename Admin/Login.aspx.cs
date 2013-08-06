using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModelTutorBooking;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs ev)
    {
        if (checkValidation())
        {
            using (ModelTutor obj = new ModelTutor())
            {
                try
                {
                    var result = (from e in obj.tblAdmins
                                  where e.Email == txtEmail.Text.Trim() && e.Password == txtPassword.Text.Trim()
                                  select e).First();
                    if (string.Compare(txtEmail.Text.Trim(), result.Email) == 0 && string.Compare(txtPassword.Text.Trim(), result.Password) == 0)
                    {
                        Session["adminid"] = result.AdminId;
                        Session["adminEmail"] = result.Email;
                        Response.Redirect("~/Admin/Default.aspx");
                    }
                    else
                    {
                        Label1.Text = "Error: Enter correct details";
                    }
                }
                catch (Exception)
                {

                    Label1.Text = "Error: Enter correct details";
                }

            }
        }
    }

    private bool checkValidation() { return true; }
}
