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
                fillCourse();



            }
        }
        else
        {

            Response.Redirect("~/LoginStudent.aspx");

        }
    }

    private void fillCourse()
    {
        using (ModelTutor obj = new ModelTutor())
        {

            var result = (from e in obj.tblCourses
                          select new
                          {
                              Name = e.CourseCode + " - " + e.Name,
                              e.CourseId
                          }).ToList();

            cbCourse.DataSource = result;
            cbCourse.DataTextField = "Name";
            cbCourse.DataValueField = "CourseId";
            cbCourse.DataBind();

            if (Request.QueryString.HasKeys())
            {

                try
                {
                    cbCourse.SelectedValue = Request.QueryString["c"].ToString();
                    loadTimetable();
                }
                catch (Exception)
                {


                }

            }

        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Default.aspx");
    }

    protected void cbCourse_SelectedIndexChanged(object sender, EventArgs ev)
    {

        contentDiv.InnerHtml = "";
        divNotifocation.Visible = false;

        if (cbCourse.SelectedValue != "0")
        {

            loadTimetable();
            
        }
    }

    private void loadTimetable()
    {
        System.Threading.Thread.Sleep(1000);

        using (ModelTutor obj = new ModelTutor())
        {

            #region 1


            int courseId = Convert.ToInt32(cbCourse.SelectedValue);
            var result = from e in obj.tblTutorCourses
                         where e.CourseId == courseId && e.Active == true && e.tblTutor.Active == true
                         select new
                         {
                             e.tblTutor.Name,
                             e.TutorId
                         };

            string row = null;
            string header = null;

            row += "<div style='float:left; display:block; width:100% ; margin-bottom:-25px;'><div style='float:right;'><span style='width: 30px; height: 30px; background-color: lightgreen; display: inline-block;'>" +
                "</span><span style='height: 30px; font-weight:bold; display: inline-block; vertical-align: middle;" +
               "padding-bottom: 5px; margin-left:5px;'>Available</span><span style='margin-left:10px; width: 30px; height: 30px; background-color: lightcoral; display: inline-block;'>" +
                "</span><span style='height: 30px;font-weight:bold; display: inline-block; vertical-align: middle;" +
               "padding-bottom: 5px; margin-left:5px;'>Booked</span><span style='margin-left:10px;width: 30px; height: 30px; background-color: #B0B0B0; display: inline-block;'>" +
                "</span><span style='height: 30px;font-weight:bold; display: inline-block; vertical-align: middle;" +
               "padding-bottom: 5px; margin-left:5px;'>Not Available</span></div></div>";


            for (int k = 0; k < 3; k++)
            {

                string day = DateTime.Now.DayOfWeek.ToString().Substring(0, 2);
                DateTime dateforQuery = DateTime.Now;

                if (result.Count() > 0)
                {
                    row += "<div style='float:left; margin-top:35px;'>";

                    switch (day)
                    {

                        case "Sa":
                            day = DateTime.Now.AddDays((2 + k)).DayOfWeek.ToString().Substring(0, 2);
                            dateforQuery = DateTime.Now.AddDays((2 + k));
                            row += "<div class='spanMain'>" + DateTime.Now.AddDays((2 + k)).ToLongDateString() + "</div>";

                            break;
                        case "Su":
                            day = DateTime.Now.AddDays((1 + k)).DayOfWeek.ToString().Substring(0, 2);
                            dateforQuery = DateTime.Now.AddDays((1 + k));
                            row += "<div class='spanMain'>" + DateTime.Now.AddDays((1 + k)).ToLongDateString() + "</div>";
                            break;
                        default:
                            day = DateTime.Now.AddDays(k).DayOfWeek.ToString().Substring(0, 2);
                            dateforQuery = DateTime.Now.AddDays(k);
                            row += "<div class='spanMain'>" + DateTime.Now.AddDays(k).ToLongDateString() + "</div>";
                            break;
                    }

                    for (int i = 8; i < 20; i++)
                    {
                        row += "<div class='span header'>" + i + "</div>";

                    }
                    row += "</div>";

                }
                else
                {
                    divNotifocation.Visible = true;
                }

                foreach (var item in result)
                {
                    row += "<div style='float:left; margin-bottom:4px;'>";
                    row += "<div class='spanMain header'>" + item.Name + "</div>";

                    int start = 0;
                    int end = 0;

                    #region display day

                    switch (day)
                    {
                        case "Mo":

                            var moTime = (from e in obj.tblSchedules
                                          where e.TutorId == item.TutorId
                                          select e.Mo).First();

                            start = Convert.ToInt32(moTime.Substring(0, 2));
                            end = Convert.ToInt32(moTime.Substring(4, 2));

                            break;

                        case "Tu":

                            var tuTime = (from e in obj.tblSchedules
                                          where e.TutorId == item.TutorId
                                          select e.Tu).First();

                            start = Convert.ToInt32(tuTime.Substring(0, 2));
                            end = Convert.ToInt32(tuTime.Substring(4, 2));


                            break;

                        case "We":

                            var weTime = (from e in obj.tblSchedules
                                          where e.TutorId == item.TutorId
                                          select e.We).First();

                            start = Convert.ToInt32(weTime.Substring(0, 2));
                            end = Convert.ToInt32(weTime.Substring(4, 2));

                            break;
                        case "Th":

                            var thTime = (from e in obj.tblSchedules
                                          where e.TutorId == item.TutorId
                                          select e.Th).First();

                            start = Convert.ToInt32(thTime.Substring(0, 2));
                            end = Convert.ToInt32(thTime.Substring(4, 2));


                            break;
                        case "Fr":

                            var frTime = (from e in obj.tblSchedules
                                          where e.TutorId == item.TutorId
                                          select e.Fr).First();

                            start = Convert.ToInt32(frTime.Substring(0, 2));
                            end = Convert.ToInt32(frTime.Substring(4, 2));


                            break;
                        default:
                            break;


                    }

                    DateTime dt = dateforQuery.Date;

                    var bookedTime = (from e in obj.tblBookings
                                      where e.TutorId == item.TutorId && e.DateOfBooking == dt
                                      select e.TimeOfBooking).ToArray();


                    bool flag = false;

                    for (int i = 8; i < 20; i++)
                    {
                        flag = false;
                        if (bookedTime.Count() > 0)
                        {
                            for (int j = 0; j < bookedTime.Count(); j++)
                            {
                                if (i == Convert.ToInt32(bookedTime[j]))
                                {
                                    row += "<div class='span red'></div>";
                                    flag = true;
                                }
                            }
                        }
                        if (!flag)
                        {
                            if (i >= start && i <= end)
                            {
                                row += " <a href='Booking.aspx?tutor=" + item.TutorId + "&student=" + Session["studentid"] + "&t=" + i + "&d=" + dateforQuery.ToShortDateString() + "&c=" + cbCourse.SelectedValue + "'><div class='span green'></div></a>";

                            }
                            else
                                row += "<div class='span'></div>";
                        }
                    }



                    #endregion

                    row += "</div>";
                }

            }



            contentDiv.InnerHtml = row;
            #endregion
        }
    }
}