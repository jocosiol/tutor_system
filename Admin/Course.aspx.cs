using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModelTutorBooking;

public partial class Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (checkValidation())
        {

            using (ModelTutor obj = new ModelTutor())
            {

                tblCourse newCourse = new tblCourse { CourseCode = txtCourseCode.Text.Trim(), Name = txtCourseName.Text.Trim() };
                try
                {
                    obj.AddTotblCourses(newCourse);
                    obj.SaveChanges();
                    DataClear();
                    //CourseEntity.DataBind();
                    GridView1.DataBind();
                }
                catch (Exception)
                {


                }
            }

        }
    }

    private void DataClear()
    {

        txtCourseCode.Text = "";
        txtCourseName.Text = "";

    }

    private bool checkValidation()
    {

        return true;

    }

}