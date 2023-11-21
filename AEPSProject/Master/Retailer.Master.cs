using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEPSProject.Master
{
    public partial class Retailer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["MobileID"]==null && Session["LoginID"] == null)
            {
                Response.Redirect("/Default.aspx");
            }
            if(!IsPostBack)
            {
                lblname2.Text = Session["UserName"].ToString();
                lblname.Text = Session["UserName"].ToString();
                lblroll.Text = Session["RollName"].ToString();
            }
        }
    }
}