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

    }
    protected void btnRegister_Click(object sender, EventArgs ev)
    {

        if (checkValidation())
        {


            System.Threading.Thread.Sleep(1500);


            using (ModelTutor obj = new ModelTutor())
            {

                string email = txtEmail.Text.Trim();

                var result = (from e in obj.tblStudents
                              where e.Email == email
                              select e).Count();

                if (result < 1)
                {

                    tblStudent newStudent = new tblStudent { Id = txtStudentId.Text.Trim(), Name = txtName.Text.Trim(), Address = txtAddress.Text.Trim(), Email = txtEmail.Text.Trim(), Password = txtPassword.Text.Trim(), Active = true };

                    try
                    {
                        obj.AddTotblStudents(newStudent);
                        obj.SaveChanges();
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