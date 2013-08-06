using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModelTutorBooking;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["tutorId"] != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Log out from tutor account.');document.location='" + ResolveClientUrl("~/TutorDashboard.aspx") + "';</script>");
        }
    }
    protected void btnLogin_Click(object sender, EventArgs ev)
    {
        if (checkValidation())
        {
            System.Threading.Thread.Sleep(1500);

            using (ModelTutor obj = new ModelTutor())
            {
                try
                {
                    var result = (from e in obj.tblStudents
                                  where e.Email == txtEmail.Text.Trim() && e.Password == txtPassword.Text.Trim()
                                  select e).First();
                    if (string.Compare(txtPassword.Text.Trim(), result.Password) == 0 && result.Active == true)
                    {
                        Session["studentEmail"] = txtEmail.Text.Trim();
                        Session["studentName"] = result.Name;
                        Session["studentId"] = result.StudentId;
                        Response.Redirect("~/StudentDashboard.aspx");

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