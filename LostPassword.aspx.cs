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
    protected void btnForget_Click(object sender, EventArgs ev)
    {
        using (ModelTutor obj = new ModelTutor())
        {

            if (cbWho.SelectedValue == "1")
            {

                string email = txtEmail.Text.Trim();

                var result = (from e in obj.tblStudents
                              where e.Email == email
                              select e).Count();

                if (result == 1)
                {

                    // sent mail

                    Email m = new Email();

                    try
                    {
                        var pass = (from e in obj.tblStudents
                                    where e.Email == email
                                    select e.Password).First();

                        string body = "Your Email is : " + email + " and your password is : " + pass;

                        m.sendEmail(email, body);
                        Label1.Text = "Email has been sent to you.";
                        txtEmail.Text = "";
                    }
                    catch (Exception)
                    {

                        Label1.Text = "Email sending failed";
                    }




                }
                else
                    Label1.Text = "Enter valid email";

            }
            else
            {
                string email = txtEmail.Text.Trim();

                var result = (from e in obj.tblTutors
                              where e.Email == email
                              select e).Count();

                if (result == 1)
                {

                    Email m = new Email();

                    try
                    {
                        var pass = (from e in obj.tblTutors
                                    where e.Email == email
                                    select e.Password).First();

                        string body = "Your Email is : " + email + " and your password is : " + pass;

                        m.sendEmail(email, body);
                        Label1.Text = "Email has been sent to you.";
                        txtEmail.Text = "";
                    }
                    catch (Exception)
                    {

                        Label1.Text = "Email sending failed";
                    }


                }
                else
                    Label1.Text = "Enter valid email";

            }


        }
    }
}