using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ModelTutorBooking;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs ev)
    {
       
        if (Session["studentid"] != null)
        {
            if (!Page.IsPostBack)
            {

                fillData();
            }

        }
        else
            Response.Redirect("~/LoginStudent.aspx");
    }

    private void fillData()
    {
        using (ModelTutor obj = new ModelTutor())
        {
            try
            {
                int studentId = Convert.ToInt32(Session["studentId"]);
                string email = Session["studentEmail"].ToString();

                var result = (from e in obj.tblStudents
                              where e.StudentId == studentId && e.Email == email
                              select e).First();

                txtName.Text = result.Name;
                txtAddress.Text = result.Address;
                txtStudentId.Text = result.Id;

            }
            catch (Exception)
            {
                // Error.....
                Response.Redirect("~/Error.aspx");
            }

        }
    }

    protected void btnUpdatePassword_Click(object sender, EventArgs ev)
    {
        using (ModelTutor obj = new ModelTutor())
        {

            int studentId = Convert.ToInt32(Session["studentId"]);
            string email = Session["studentEmail"].ToString();

            var result = (from e in obj.tblStudents
                          where e.StudentId == studentId && e.Email == email
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
    protected void btnUpdate_Click(object sender, EventArgs ev)
    {
        using (ModelTutor obj = new ModelTutor())
        {
            int studentId = Convert.ToInt32(Session["studentId"]);
            string email = Session["studentEmail"].ToString();

            var result = (from e in obj.tblStudents
                          where e.StudentId == studentId && e.Email == email
                          select e).First();
            result.Name = txtName.Text.Trim();
            result.Address = txtAddress.Text.Trim();
            result.Id = txtStudentId.Text.Trim();

            try
            {
                obj.SaveChanges();
                Session["studentName"] = result.Name;
            }
            catch (Exception)
            {


            }


        }
    }
}