using AEPSProject.App_Start.AllClassess;
using AEPSProject.App_Start.FunApp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEPSProject
{
    public partial class Default : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        AllClass obj = new AllClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataLayer().GetLogin(txtmobile.Text.Trim(), txtpassword.Text.Trim());
            if (dt != null && dt.Rows.Count > 0)
            {
                Session["PKID"] = dt.Rows[0]["PKID"].ToString();
                Session["LoginID"] = dt.Rows[0]["LoginID"].ToString();
                Session["MobileID"] = dt.Rows[0]["MobileID"].ToString();
                Session["EmailID"] = dt.Rows[0]["EmailID"].ToString();
                Session["RollFKID"] = dt.Rows[0]["RollFKID"].ToString();
                Session["RollName"] = dt.Rows[0]["RollName"].ToString();
                Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                Session["Address"] = dt.Rows[0]["Address"].ToString();
                Session["LastName"] = dt.Rows[0]["LastName"].ToString();
                Session["FName"] = dt.Rows[0]["FName"].ToString();
                Response.Redirect("RTPanel/RTHme.aspx");

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Invalid Login Credentials!";
            }
        }

      
    }
}