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

            if (!Page.IsPostBack)
            {

                loadData();
                Fill_Course_Combobox();
            }

        }
        else
            Response.Redirect("~/LoginTutor.aspx");
    }

    private void Fill_Course_Combobox()
    {

        using (ModelTutor obj = new ModelTutor())
        {

            var result = (from e in obj.tblCourses
                          select new
                          {
                              Name = e.CourseCode + " - " + e.Name,
                              e.CourseId
                          }).ToList();

            cbCourse1.DataSource = result;
            cbCourse1.DataTextField = "Name";
            cbCourse1.DataValueField = "CourseId";
            cbCourse1.DataBind();

            cbCourse2.DataSource = result;
            cbCourse2.DataTextField = "Name";
            cbCourse2.DataValueField = "CourseId";
            cbCourse2.DataBind();

            cbCourse3.DataSource = result;
            cbCourse3.DataTextField = "Name";
            cbCourse3.DataValueField = "CourseId";
            cbCourse3.DataBind();

            cbCourse4.DataSource = result;
            cbCourse4.DataTextField = "Name";
            cbCourse4.DataValueField = "CourseId";
            cbCourse4.DataBind();

        }

    }
    private void loadData()
    {

        using (ModelTutor obj = new ModelTutor())
        {
            int id = Convert.ToInt32(Session["tutorId"]);
            var result = (from e in obj.tblTutors
                          where e.TutorId == id
                          select e).First();

            txtName.Text = result.Name;
            txtStudentId.Text = result.Id;

            var result2 = (from e in obj.tblSchedules
                           where e.TutorId == id
                           select e).First();

            cbMonStart.SelectedValue = result2.Mo.Substring(0, 2);
            cbMonEnd.SelectedValue = result2.Mo.Substring(4, 2);

            cbTueStart.SelectedValue = result2.Tu.Substring(0, 2);
            cbTueEnd.SelectedValue = result2.Tu.Substring(4, 2);

            cbWedStart.SelectedValue = result2.We.Substring(0, 2);
            cbWedEnd.SelectedValue = result2.We.Substring(4, 2);

            cbThurStart.SelectedValue = result2.Th.Substring(0, 2);
            cbThurStart.SelectedValue = result2.Th.Substring(4, 2);

            cbFriStart.SelectedValue = result2.Fr.Substring(0, 2);
            cbFriEnd.SelectedValue = result2.Fr.Substring(4, 2);

            SqlDataSourceCourses.SelectParameters["TutorId"].DefaultValue = Session["tutorId"].ToString();
            SqlDataSourceCourses.DataBind();
            gridCourses.DataBind();


        }
    }

    protected void btnUpdateTutor_Click(object sender, EventArgs ev)
    {
        using (ModelTutor obj = new ModelTutor())
        {
            int id = Convert.ToInt32(Session["tutorId"]);

            var result = (from e in obj.tblTutors
                          where e.TutorId == id
                          select e).First();

            result.Name = txtName.Text.Trim();
            result.Id = txtStudentId.Text.Trim();

            try
            {
                obj.SaveChanges();
                Session["tutorName"] = result.Name;
            }
            catch (Exception)
            {


            }

        }
    }
    protected void btnUpdateTime_Click(object sender, EventArgs ev)
    {
        using (ModelTutor obj = new ModelTutor())
        {
            int id = Convert.ToInt32(Session["tutorId"]);

            var result = (from e in obj.tblSchedules
                          where e.TutorId == id
                          select e).First();

            #region Schedule

            result.Mo = cbMonStart.SelectedValue + "to" + cbMonEnd.SelectedValue;
            result.Tu = cbTueStart.SelectedValue + "to" + cbTueEnd.SelectedValue;
            result.We = cbWedStart.SelectedValue + "to" + cbWedEnd.SelectedValue;
            result.Th = cbThurStart.SelectedValue + "to" + cbThurEnd.SelectedValue;
            result.Fr = cbFriStart.SelectedValue + "to" + cbFriEnd.SelectedValue;

            try
            {
                obj.SaveChanges();
            }
            catch (Exception)
            {


            }

            #endregion

        }
    }
    protected void btnUpdatePassword_Click(object sender, EventArgs ev)
    {
        using (ModelTutor obj = new ModelTutor())
        {
            int id = Convert.ToInt32(Session["tutorId"]);
            var result = (from e in obj.tblTutors
                          where e.TutorId == id
                          select e).First();

            result.Password = txtPassword.Text.Trim();

            try
            {
                obj.SaveChanges();
            }
            catch (Exception)
            {


            }

        }
    }
    protected void btnAddCourse_Click(object sender, EventArgs e)
    {
        using (ModelTutor obj = new ModelTutor())
        {
            int id = Convert.ToInt32(Session["tutorId"]);

            #region AddCourses

            if (cbCourse1.SelectedValue != "0")
            {

                obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = id, CourseId = Convert.ToInt32(cbCourse1.SelectedValue), Grade = txtGrade1.Text.Trim(), Active = false });
            }
            if (cbCourse2.SelectedValue != "0")
            {

                obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = id, CourseId = Convert.ToInt32(cbCourse2.SelectedValue), Grade = txtGrade2.Text.Trim(), Active = false });
            }
            if (cbCourse3.SelectedValue != "0")
            {

                obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = id, CourseId = Convert.ToInt32(cbCourse3.SelectedValue), Grade = txtGrade3.Text.Trim(), Active = false });
            }
            if (cbCourse4.SelectedValue != "0")
            {

                obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = id, CourseId = Convert.ToInt32(cbCourse4.SelectedValue), Grade = txtGrade4.Text.Trim(), Active = false });
            }

            #endregion

            try
            {
                obj.SaveChanges();
                txtGrade1.Text = "";
                txtGrade2.Text = "";
                txtGrade3.Text = "";
                txtGrade4.Text = "";

                cbCourse1.SelectedIndex = 0;
                cbCourse2.SelectedIndex = 0;
                cbCourse3.SelectedIndex = 0; cbCourse4.SelectedIndex = 0;

                gridCourses.DataBind();

            }
            catch (Exception)
            {


            }

        }
    }

}