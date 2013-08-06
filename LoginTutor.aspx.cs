using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModelTutorBooking;
using System.Threading;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["studentId"] != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Log out from student account.');document.location='" + ResolveClientUrl("~/StudentDashboard.aspx") + "';</script>");

        }
    }
    protected void btnLogin_Click(object sender, EventArgs ev)
    {
        if (checkValidation())
        {
            Thread.Sleep(1500);

            using (ModelTutor obj = new ModelTutor())
            {
                try
                {
                    var result = (from e in obj.tblTutors
                                  where e.Email == txtEmail.Text.Trim() && e.Password == txtPassword.Text.Trim()
                                  select e).First();
                    if (string.Compare(txtPassword.Text.Trim(), result.Password) == 0 && result.Active == true)
                    {
                        Session["tutorId"] = result.TutorId;
                        Session["tutorEmail"] = result.Email;
                        Session["tutorName"] = result.Name;
                        Response.Redirect("~/TutorDashboard.aspx");

                    }
                    else
                    {
                        Label1.Text = "Error: Enter correct email and password";
                    }
                }
                catch (Exception)
                {

                    Label1.Text = "Error: Enter correct email and password";
                }

            }
        }
    }

    private bool checkValidation() { return true; }

}