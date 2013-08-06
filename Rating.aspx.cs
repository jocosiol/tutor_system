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
                fillCombo();
                fillGrid();
            }
        }
        else
        {

            Response.Redirect("~/LoginStudent.aspx");

        }

    }

    private void fillCombo()
    {

        int studentId = Convert.ToInt32(Session["studentId"]);

        using (ModelTutor obj = new ModelTutor())
        {


            var result = (from e in obj.tblBookings
                          where e.StudentId == studentId
                          select new
                          {
                              e.tblTutor.Name,
                              e.TutorId
                          }).Distinct().ToArray();

            cbTutor.DataSource = result;
            cbTutor.DataTextField = "Name";
            cbTutor.DataValueField = "TutorId";
            cbTutor.DataBind();

        }

    }

    private void fillGrid()
    {

        int studentId = Convert.ToInt32(Session["studentId"]);

        using (ModelTutor obj = new ModelTutor())
        {
            try
            {
                var result = (from e in obj.tblRatings
                              where e.StudentId == studentId
                              select new
                              {

                                  e.tblTutor.Name,
                                  e.Rate

                              }).ToArray();

                gridRate.DataSource = result;
                gridRate.DataBind();
            }
            catch (Exception)
            {


            }


        }

    }

    protected void btnRate_Click(object sender, EventArgs e)
    {
        using (ModelTutor obj = new ModelTutor())
        {
            int studentId = Convert.ToInt32(Session["studentId"]);

            obj.AddTotblRatings(new tblRating { StudentId = studentId, TutorId = Convert.ToInt32(cbTutor.SelectedValue), Rate = Convert.ToInt32(cbrate.SelectedValue) });

            try
            {
                obj.SaveChanges();
                fillCombo();
                fillGrid();
            }
            catch (Exception)
            {


            }

        }
    }
}