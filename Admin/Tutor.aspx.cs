using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminEmail"] != null)
        {
            if (!Page.IsPostBack)
            {

            }
        }
        else
        {

            Response.Redirect("~/Admin/Login.aspx");

        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            TutorCourseDataSet.SelectParameters["TutorId"].DefaultValue = GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();
            TutorCourseDataSet.DataBind();
            gridCourse.DataBind();
        }
    }
}