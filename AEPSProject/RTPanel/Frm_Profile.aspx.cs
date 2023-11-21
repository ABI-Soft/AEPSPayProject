using AEPSProject.App_Start.AllClassess;
using AEPSProject.App_Start.FunApp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AEPSProject.RTPanel
{
    public partial class Frm_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["MobileID"] == null && Session["LoginID"] == null)
            {
                Response.Redirect("/Default.aspx");
            }
          
            if(!IsPostBack)
            {
                lblname.Text = Session["UserName"].ToString();
                lblroll.Text = Session["RollName"].ToString();
                lbladdresss.Text = Session["Address"].ToString();
                lblNameinput.Text = Session["FName"].ToString();
                txtmobile.Text = Session["MobileID"].ToString();
                HDNPKID.Value = Session["PKID"].ToString();
                HDNRollFKID.Value = Session["RollFKID"].ToString();
                SetDivCombos();

            }
        }
        private bool IsValidExtension(string filePath)
        {
            bool isValid = false;
            string[] fileExtensions = { ".bmp", ".jpg", ".png", ".gif", ".jpeg", ".BMP", ".JPG", ".PNG", ".GIF", ".JPEG" };

            for (int i = 0; i <= fileExtensions.Length - 1; i++)
            {
                if (filePath.Contains(fileExtensions[i]))
                {
                    isValid = true;
                }
            }
            return isValid;
        }
        public void SetCombos()
        {
            try
            {
                // ClsObj.DivisionKey = 0;
                // ClsObj.QueryType = "GetDis";
                DataTable Ds = new DataLayer().BindDisticts(ddldiv.SelectedValue);
                if (Ds != null && Ds.Rows.Count > 0)
                {
                    ddldist.Items.Clear();

                    ddldist.DataTextField = Ds.Columns["DistrictName"].ToString();
                    ddldist.DataValueField = Ds.Columns["DistrictKey"].ToString();
                    ddldist.DataSource = Ds;

                    ddldist.DataBind();
                    ListItem li = new ListItem();
                    li.Text = "--select--";
                    li.Value = "-1";
                    ddldist.Items.Insert(0, li);
                    ddldist.SelectedIndex = 0;

                }
                else
                {
                    ddldist.DataSource = null;
                    ddldist.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        public void SetDivCombos()
        {
            try
            {
               
                DataTable Ds = new DataLayer().BindDivision(ddldiv.SelectedValue);
                if (Ds != null && Ds.Rows.Count > 0)
                {
                    ddldiv.Items.Clear();

                    ddldiv.DataTextField = Ds.Columns["DivisionName"].ToString();
                    ddldiv.DataValueField = Ds.Columns["DivisionKey"].ToString();
                    ddldiv.DataSource = Ds;

                    ddldiv.DataBind();
                    ListItem li = new ListItem();
                    li.Text = "--select--";
                    li.Value = "-1";
                    ddldiv.Items.Insert(0, li);
                    ddldiv.SelectedIndex = 0;

                }
                else
                {
                    ddldist.DataSource = null;
                    ddldist.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        protected void btnprofle_Click(object sender, EventArgs e)
        {
            AllClass obj = new AllClass();
            obj.EmailID = txtemail.Text.Trim();
            obj.DivisionKey = Convert.ToInt32(ddldiv.SelectedValue.Trim());
            obj.DistrictKey = Convert.ToInt32(ddldist.SelectedValue.Trim());
            obj.MobileID = txtmobile.Text.Trim();
            obj.PIncode = Convert.ToInt32(txtPincode.Text.Trim());
            obj.Address = txtAddress.Text.Trim();
            obj.ID = Convert.ToInt32(HDNPKID.Value);
            string str = new DataLayer().UpdateProfile(obj);
            ShowMessage.Show(str);
        }

        protected void btnkyc_Click(object sender, EventArgs e)
        {

        }

        protected void btnpassword_Click(object sender, EventArgs e)
        {

        }

        protected void btnpin_Click(object sender, EventArgs e)
        {

        }

        protected void btnBank_Click(object sender, EventArgs e)
        {

        }

        protected void ddldiv_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
               
                DataTable Ds = new DataLayer().BindDisticts(ddldiv.SelectedValue);
                if (Ds != null && Ds.Rows.Count > 0)
                {
                    ddldist.Items.Clear();

                    ddldist.DataTextField = Ds.Columns["DistrictName"].ToString();
                    ddldist.DataValueField = Ds.Columns["DistrictKey"].ToString();
                    ddldist.DataSource = Ds;

                    ddldist.DataBind();
                    ListItem li = new ListItem();
                    li.Text = "--select--";
                    li.Value = "-1";
                    ddldist.Items.Insert(0, li);
                    ddldist.SelectedIndex = 0;

                }
                else
                {
                    ddldist.DataSource = null;
                    ddldist.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }

       

        //public void UploadFile()
        //{
        //    if (IsValidExtension(Imgaadharf.PostedFile.FileName))
        //    {
        //        string FileValues = Convert.ToString(Imgaadharf);
        //        string path = Server.MapPath("../DocumentFile/AdharImg/");

        //        Random r = new Random();
        //        int randomNumber = r.Next(1, 5000000);
        //        string fileExt = Imgaadharf.FileName.Substring(Imgaadharf.FileName.LastIndexOf('.') + 1).ToUpper();
        //        string newRes = "ImgaadharfI_" + randomNumber + "." + fileExt;
        //        if (Imgaadharf.HasFile)
        //        {
        //            Imgaadharf.SaveAs(path + newRes);
        //        }
        //        ViewState["imgadharF"] = Path.GetFileName(newRes);
        //        imgadhardF.ImageUrl = "../DocumentFile/AdharImg/" + Path.GetFileName(newRes);
        //        if (fileExt.ToUpper() == "pdf".ToUpper())
        //        {
        //            imgadhardF.ImageUrl = "~/images/images/AdharImg.png";
        //        }
        //        else
        //        {
        //            imgadhardF.ImageUrl = "../DocumentFile/AdharImg/" + Path.GetFileName(newRes);
        //        }
        //    }
        //}
    }
}