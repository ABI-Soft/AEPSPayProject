using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AEPSProject.App_Start.AllClassess;
using AEPSProject.App_Start.FunApp;

namespace AEPSProject.RTPanel
{
    public partial class Frm_OnboardReg : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void btnCustSubmit_Click(object sender, EventArgs e)
        {
            AllClass obj = new AllClass();
            obj.CustName = txtFullName.Text.Trim();
            obj.MobileID = txtmobile.Text.Trim();
            obj.AdharNo = txtAdhar.Text.Trim();
            obj.EmailID = txtEmailId.Text.Trim();
            obj.FirmName = txtFirmName.Text.Trim();
            //obj.RollFKID = 5;
            string str = new DataLayer().CustomerDetails(obj);
            string str2 = obj.CustName + " " + obj.MobileID + " " + obj.AdharNo + " " + obj.EmailID + " " + obj.FirmName;
            
            
            ShowMessage.Show(str2);
            ShowMessage.Show(str);
            string result = new DataLayer().OnboardApi(obj);



            Reset();

        }

        public void Reset()
        {
            txtFullName.Text = "";
            txtmobile.Text = "";
            txtAdhar.Text = "";
            txtEmailId.Text = "";
            txtFirmName.Text = "";

            
        }
    }
}