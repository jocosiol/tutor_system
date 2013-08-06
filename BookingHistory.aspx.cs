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
        if (Session["studentId"] != null)
        {
            if (!Page.IsPostBack)
            {
                fillGrid();
            }
        }
        else
        {

            Response.Redirect("~/LoginStudent.aspx");

        }

    }

    private void fillGrid()
    {

        SqlDataSourceHistory.SelectParameters["StudentId"].DefaultValue = Session["studentId"].ToString();
        SqlDataSourceHistory.SelectParameters["DateOfBooking"].DefaultValue = DateTime.Now.ToShortDateString();
        SqlDataSourceHistory.DataBind();
        gridHistory.DataBind();
        
        SqlDataSourceCurrent.SelectParameters["StudentId"].DefaultValue = Session["studentId"].ToString();
        SqlDataSourceCurrent.SelectParameters["DateOfBooking"].DefaultValue = DateTime.Now.ToShortDateString();
        SqlDataSourceCurrent.DataBind();
        gridCurrent.DataBind();

    }
}