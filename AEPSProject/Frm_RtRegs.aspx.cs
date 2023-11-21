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
    public partial class Frm_RtRegs : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void btnRegistered_Click(object sender, EventArgs e)
        {
            AllClass obj = new AllClass();
            obj.UserName = txtFName.Text.Trim();
            obj.LastName = txtLname.Text.Trim();
            obj.AdharNo =  txtAdhar.Text.Trim();
            obj.MobileID = txtmobile.Text.Trim();
            obj.UserName = txtFName.Text.Trim();
            obj.Address = txtaddress.Text.Trim();
            obj.RollFKID = 5;
            string str = new DataLayer().CrateRT(obj);
            ShowMessage.Show(str);
            Reset();

        }

        public void Reset()
        {
            txtFName.Text = "";
            txtLname.Text = "";
            txtmobile.Text = "";
            txtFName.Text = "";
            txtAdhar.Text = "";
        }

    }
}