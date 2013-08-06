using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["tutorId"] != null)
        {

            if (!Page.IsPostBack)
            {

                loadData();
                 countRating();
            }

        }
        else
            Response.Redirect("~/LoginTutor.aspx");
    }

    private void countRating()
    {
        using (ModelTutorBooking.ModelTutor obj = new ModelTutorBooking.ModelTutor())
        {

            int tutorId = Convert.ToInt32(Session["tutorId"]);
            string rateBar = null;
            try
            {
                var result = (from e in obj.tblRatings
                              where e.TutorId == tutorId
                              select e.Rate).Average();


                double per = (result * 100) / 5;


                rateBar = " <div style='float: left; font-weight: bold; font-size: 20px; color: lightred; margin-right: 10px;" +
                "padding-top: 3px;'>" +
                "Your Rating is " + per + "%" +
            "</div>" +
            "<div style='float: left;'>" +
             "   <div class='meter animate' style='width: 750px;'>" +
                    "<span style='width: " + per + "%'><span></span>" +
                "</div></div>";



            }
            catch (Exception)
            {
                rateBar = " <div style='float: left; font-weight: bold; font-size: 20px; color: lightred; margin-right: 10px;" +
               "padding-top: 3px;'>" +
               "You are not rated yet." +
           "</div>";
            }

            divRate.InnerHtml = rateBar;

        }
    }

    private void loadData()
    {

        SqlDataSourceCurrent.SelectParameters["TutorId"].DefaultValue = Session["TutorId"].ToString();
        SqlDataSourceCurrent.SelectParameters["DateOfBooking"].DefaultValue = DateTime.Now.ToShortDateString();
        SqlDataSourceCurrent.DataBind();
        gridCurrent.DataBind();

        SqlDataSourceHistory.SelectParameters["TutorId"].DefaultValue = Session["TutorId"].ToString();
        SqlDataSourceHistory.SelectParameters["DateOfBooking"].DefaultValue = DateTime.Now.ToShortDateString();
        SqlDataSourceHistory.DataBind();
        GridView1.DataBind();

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Default.aspx");
    }

}