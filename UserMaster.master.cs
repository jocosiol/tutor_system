using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack){
        if (Session["studentid"] != null) { lblWelcome.Text = "Welcome: " + Session["studentName"].ToString(); }
        else if (Session["tutorId"] != null) { lblWelcome.Text = "Welcome: " + Session["tutorName"].ToString(); }
        else { lblWelcome.Text = ""; }
        }

    }
    protected void linkStudentLogin_Click(object sender, EventArgs e)
    {
        if (Session["studentid"] != null)
        {
            Response.Redirect("~/StudentDashboard.aspx");
        }
        else
            Response.Redirect("~/LoginStudent.aspx");
    }
    protected void linkTutorLogin_Click(object sender, EventArgs e)
    {
        if (Session["tutorId"] != null)
        {
            Response.Redirect("~/TutorDashboard.aspx");
        }
        else
            Response.Redirect("~/LoginTutor.aspx");
    }
}
