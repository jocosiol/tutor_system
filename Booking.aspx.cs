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

        if (Session["studentId"] != null)
        {
            if (!Page.IsPostBack)
            {

                loadData();
            }
        }
        else
        {

            Response.Redirect("~/LoginStudent.aspx");

        }
    }

    private void loadData()
    {

        try
        {
            int tutorId = Convert.ToInt32(Request.QueryString["tutor"]);
            int studentId = Convert.ToInt32(Session["studentId"]);
            int courseId = Convert.ToInt32(Request.QueryString["c"]);
            int tm = Convert.ToInt32(Request.QueryString["t"]);
            lblDate.Text = Convert.ToDateTime(Request.QueryString["d"]).ToLongDateString();

            using (ModelTutor obj = new ModelTutor())
            {

                lblTutorName.Text = (from e in obj.tblTutors
                                     where e.TutorId == tutorId
                                     select e.Name).First();
                lblTime.Text = tm.ToString() + " to " + (tm + 1).ToString();

                var result = (from e in obj.tblCourses
                              where e.CourseId == courseId
                              select e).First();

                lblCourse.Text = result.CourseCode + " - " + result.Name;

                txtStudentName.Text = (from e in obj.tblStudents
                                       where e.StudentId == studentId
                                       select e.Name).First();

            }
        }
        catch (Exception)
        {
            Response.Redirect("~/StudentDashboard.aspx");
        }


    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        if (checkValidation())
        {
            int tutorId = Convert.ToInt32(Request.QueryString["tutor"]);
            int studentId = Convert.ToInt32(Session["studentId"]);
            int courseId = Convert.ToInt32(Request.QueryString["c"]);
            string tm = Request.QueryString["t"].ToString();

            using (ModelTutor obj = new ModelTutor())
            {
                obj.AddTotblBookings(new tblBooking { TutorId = tutorId, StudentId = studentId, DateOfBooking = Convert.ToDateTime(Request.QueryString["d"]), Description = txtDescription.Text.Trim(), TimeOfBooking = tm, CourseId = courseId });

                try
                {
                    obj.SaveChanges();
                    Response.Redirect("~/StudentDashboard.aspx?c=" + Request.QueryString["c"]);
                }
                catch (Exception)
                {


                }

            }
        }
    }

    private bool checkValidation()
    {
        return true;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StudentDashboard.aspx?c=" + Request.QueryString["c"]);
    }
}