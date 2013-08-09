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
        if (!Page.IsPostBack)
        {
            Fill_Course_Combobox();
        }
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

    protected void btnRegister_Click(object sender, EventArgs ev)
    {
        if (checkValidation())
        {
            using (ModelTutor obj = new ModelTutor())
            {

                string email = txtEmail.Text.Trim();

                var result = (from e in obj.tblTutors
                              where e.Email == email
                              select e).Count();

                if (result < 1)
                {
                    tblTutor newTutor = new tblTutor { Id = txtStudentId.Text.Trim(), Name = txtName.Text.Trim(), Email = txtEmail.Text.Trim(), Password = txtPassword.Text.Trim(), Active = true };
                    obj.AddTotblTutors(newTutor);

                    #region AddCourses

                    if (cbCourse1.SelectedValue != "0")
                    {

                        obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = newTutor.TutorId, CourseId = Convert.ToInt32(cbCourse1.SelectedValue), Grade = txtGrade1.Text.Trim(), Active = false });
                    }
                    if (cbCourse2.SelectedValue != "0")
                    {

                        obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = newTutor.TutorId, CourseId = Convert.ToInt32(cbCourse2.SelectedValue), Grade = txtGrade2.Text.Trim(), Active = false });
                    }
                    if (cbCourse3.SelectedValue != "0")
                    {

                        obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = newTutor.TutorId, CourseId = Convert.ToInt32(cbCourse3.SelectedValue), Grade = txtGrade3.Text.Trim(), Active = false });
                    }
                    if (cbCourse4.SelectedValue != "0")
                    {

                        obj.AddTotblTutorCourses(new tblTutorCourse { TutorId = newTutor.TutorId, CourseId = Convert.ToInt32(cbCourse4.SelectedValue), Grade = txtGrade4.Text.Trim(), Active = false });
                    }

                    #endregion

                    #region Schedule

                    string mon = cbMonStart.SelectedValue + "to" + cbMonEnd.SelectedValue;
                    string tue = cbTueStart.SelectedValue + "to" + cbTueEnd.SelectedValue;
                    string wed = cbWedStart.SelectedValue + "to" + cbWedEnd.SelectedValue;
                    string thur = cbThurStart.SelectedValue + "to" + cbThurEnd.SelectedValue;
                    string fri = cbFriStart.SelectedValue + "to" + cbFriEnd.SelectedValue;

                    obj.AddTotblSchedules(new tblSchedule { TutorId = newTutor.TutorId, Mo = mon, Tu = tue, We = wed, Th = thur, Fr = fri });

                    #endregion

                    try
                    {
                        obj.SaveChanges();
                        
                        Email m = new Email();

                        try
                        {
                            string body = "Hello " + txtName.Text.Trim() + ",\n" + "You are registered for Tutoring.";

                            m.sendEmail(email, body);
                        }
                        catch (Exception)
                        {
                            
                        }
                        
                        Response.Redirect("~/Sucess.aspx?m=Your account has been sucessfuly registered. Login to book tutor.");
                    }
                    catch (Exception)
                    {

                    }
                }
                else
                {
                    Label1.Text = "Email already exist";
                }

            }
        }
    }

    private bool checkValidation()
    {

        return true;

    }

}
