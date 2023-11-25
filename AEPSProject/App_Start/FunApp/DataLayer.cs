using AEPSProject.App_Start.AllClassess;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace AEPSProject.App_Start.FunApp
{
    public class DataLayer
    {
         private SqlConnection cn;
        public void Connection()
        {
            
            this.cn = new SqlConnection();
            if (this.cn.State == ConnectionState.Closed)
            {

                SqlConnection.ClearAllPools();
                this.cn.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
                this.cn.Open();
            }
        }
        public static string CreateRegNo(int RegLength)
        {
            string _allowedChars = "0123456789";
            Random randNum = new Random();
            char[] chars = new char[RegLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < RegLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }

            return new string(chars);
        }
        public static string Rendomno(int NoLength)
        {
            string _allowedChars = "0123456789";
            Random randNum = new Random();
            char[] chars = new char[NoLength];
            int alloewcharcount = _allowedChars.Length;
            for (int i = 0; i < NoLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);
        }
        public DataTable GetLogin(string LoginID, string Password)
        {
            DataTable dt = new DataTable();
            Connection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[dbo].[Sp_tblLogin]";
                cmd.Parameters.AddWithValue("@QueryType", "S");
                cmd.Parameters.AddWithValue("@MobileID", LoginID);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.CommandTimeout = 3600;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                dt = null;
            }
            return dt;
        }
        public string CrateRT(AllClass obj)
        {
            Connection();
            string Msg = "";
            try
            {
                
                SqlCommand cmd = new SqlCommand();
                string Password = CreateRegNo(6);
                cmd.Connection = cn;
                cmd.CommandText = "Sp_tblLogin";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@QueryType", "I");
                cmd.Parameters.AddWithValue("@RollFKID", obj.RollFKID);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@UserName", obj.UserName);
                cmd.Parameters.AddWithValue("@LastName", obj.LastName);
                cmd.Parameters.AddWithValue("@MobileID", obj.MobileID);
                cmd.Parameters.AddWithValue("@EmailID", obj.EmailID);
                cmd.Parameters.AddWithValue("@PanID", obj.PanID);
                cmd.Parameters.AddWithValue("@AdharNo", obj.AdharNo);
                cmd.Parameters.AddWithValue("@PanImg", obj.PanImg);
                cmd.Parameters.AddWithValue("@AdharImg", obj.AdharImg);
                cmd.Parameters.AddWithValue("@Address", obj.Address);
                cmd.Parameters.AddWithValue("@EntryBy", obj.EntryBy);
                cmd.Parameters.AddWithValue("Msg", "");
                cmd.Parameters["Msg"].Direction = ParameterDirection.InputOutput;
                cmd.Parameters["Msg"].Size = 256;
                cmd.ExecuteNonQuery();
                Msg = cmd.Parameters["Msg"].Value.ToString();
                cn.Close();
                return Msg;
            }
            catch (Exception ex)
            {
                cn.Close();
                return Msg;
            }
        }

        public DataTable BindDivision(string DivisionKey)
        {
            DataTable dt = new DataTable();
            Connection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[dbo].[Sp_tblLogin]";
                cmd.Parameters.AddWithValue("@QueryType", "GetdIV");
                cmd.Parameters.AddWithValue("@DivisionKey", DivisionKey);
                cmd.CommandTimeout = 3600;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception ex)
            {
                dt = null;
            }
            return dt;
        }
        public DataTable BindDisticts(string DivisionKey)
        {
            DataTable dt = new DataTable();
            Connection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[dbo].[Sp_tblLogin]";
                cmd.Parameters.AddWithValue("@QueryType", "GetDis");
                cmd.Parameters.AddWithValue("@DivisionKey", DivisionKey);
                cmd.CommandTimeout = 3600;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception ex)
            {
                dt = null;
            }
            return dt;
        }
        public DataTable BindBAnk(string BankID)
        {
            DataTable dt = new DataTable();
            Connection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[dbo].[Sp_tblLogin]";
                cmd.Parameters.AddWithValue("@QueryType", "SBank");
                cmd.Parameters.AddWithValue("@BankID", BankID);
                cmd.CommandTimeout = 3600;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception ex)
            {
                dt = null;
            }
            return dt;
        }
        public string UpdateProfile(AllClass obj)
        {
            Connection();
            string Msg = "";
            try
            {

                SqlCommand cmd = new SqlCommand();
               
                cmd.Connection = cn;
                cmd.CommandText = "Sp_tblLogin";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@QueryType", "UP");
                cmd.Parameters.AddWithValue("@EmailID", obj.EmailID);
                cmd.Parameters.AddWithValue("@Address", obj.Address);
                cmd.Parameters.AddWithValue("@DivisionKey", obj.DivisionKey);
                cmd.Parameters.AddWithValue("@DistrictKey", obj.DistrictKey);
                cmd.Parameters.AddWithValue("@Pincode", obj.PIncode);
                cmd.Parameters.AddWithValue("@MobileID", obj.MobileID);
                cmd.Parameters.AddWithValue("@PKID", obj.ID);
                
                cmd.Parameters.AddWithValue("@EntryBy", obj.EntryBy);
                cmd.Parameters.AddWithValue("Msg", "");
                cmd.Parameters["Msg"].Direction = ParameterDirection.InputOutput;
                cmd.Parameters["Msg"].Size = 256;
                cmd.ExecuteNonQuery();
                Msg = cmd.Parameters["Msg"].Value.ToString();
                cn.Close();
                return Msg;
            }
            catch (Exception ex)
            {
                cn.Close();
                return Msg;
            }
        }
        public string UpdateKYC(AllClass obj)
        {
            Connection();
            string Msg = "";
            try
            {

                SqlCommand cmd = new SqlCommand();

                cmd.Connection = cn;
                cmd.CommandText = "Sp_tblLogin";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@QueryType", "UKYC");
                cmd.Parameters.AddWithValue("@FirmName", obj.FirmName);
                cmd.Parameters.AddWithValue("@PanID", obj.PanID);
                cmd.Parameters.AddWithValue("@GSTNO", obj.GSTNO);
                cmd.Parameters.AddWithValue("@AdharNo", obj.AdharNo);
                cmd.Parameters.AddWithValue("@PanImg", obj.PanImg);
                cmd.Parameters.AddWithValue("@AdharImg", obj.AdharImg);
                cmd.Parameters.AddWithValue("@MobileID", obj.MobileID);
                cmd.Parameters.AddWithValue("@PKID", obj.ID);
                cmd.Parameters.AddWithValue("@EntryBy", obj.EntryBy);
                cmd.Parameters.AddWithValue("Msg", "");
                cmd.Parameters["Msg"].Direction = ParameterDirection.InputOutput;
                cmd.Parameters["Msg"].Size = 256;
                cmd.ExecuteNonQuery();
                Msg = cmd.Parameters["Msg"].Value.ToString();
                cn.Close();
                return Msg;
            }
            catch (Exception ex)
            {
                cn.Close();
                return Msg;
            }
        }
        public string SaveUpdateBank(AllClass obj)
        {
            Connection();
            string Msg = "";
            try
            {

                SqlCommand cmd = new SqlCommand();

                cmd.Connection = cn;
                cmd.CommandText = "Sp_tblLogin";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@QueryType", "UB");
                cmd.Parameters.AddWithValue("@PKID", obj.ID);
                cmd.Parameters.AddWithValue("@MobileID", obj.MobileID);
                cmd.Parameters.AddWithValue("@BankID", obj.BankID);
                cmd.Parameters.AddWithValue("@IfscCode", obj.IfscCode);
                cmd.Parameters.AddWithValue("@AccountNo", obj.AccountNo);
                cmd.Parameters.AddWithValue("@AccountHolder", obj.AccountHolder);
               
                cmd.Parameters.AddWithValue("@EntryBy", obj.EntryBy);
                cmd.Parameters.AddWithValue("Msg", "");
                cmd.Parameters["Msg"].Direction = ParameterDirection.InputOutput;
                cmd.Parameters["Msg"].Size = 256;
                cmd.ExecuteNonQuery();
                Msg = cmd.Parameters["Msg"].Value.ToString();
                cn.Close();
                return Msg;
            }
            catch (Exception ex)
            {
                cn.Close();
                return Msg;
            }
        }


        public string UpdatePassword(AllClass obj)
        {
            Connection();
            string Msg = "";
            try
            {

                SqlCommand cmd = new SqlCommand();

                cmd.Connection = cn;
                cmd.CommandText = "Sp_tblLogin";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@QueryType", "UPassword");
                cmd.Parameters.AddWithValue("@Password", obj.Password);
                cmd.Parameters.AddWithValue("@MobileID", obj.MobileID);
                cmd.Parameters.AddWithValue("@PKID", obj.ID);
                cmd.Parameters.AddWithValue("@EntryBy", obj.EntryBy);
                cmd.Parameters.AddWithValue("Msg", "");
                cmd.Parameters["Msg"].Direction = ParameterDirection.InputOutput;
                cmd.Parameters["Msg"].Size = 256;
                cmd.ExecuteNonQuery();
                Msg = cmd.Parameters["Msg"].Value.ToString();
                cn.Close();
                return Msg;
            }
            catch (Exception ex)
            {
                cn.Close();
                return Msg;
            }
        }
        public DataTable GetProfileDetail(string MobileNo, string LoginID)
        {
            DataTable dt = new DataTable();
            Connection();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "[dbo].[Sp_tblLogin]";
                cmd.Parameters.AddWithValue("@QueryType", "GetDataProfile");
                cmd.Parameters.AddWithValue("@MobileID", MobileNo);
                cmd.Parameters.AddWithValue("@LoginID", LoginID);
                cmd.CommandTimeout = 3600;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception ex)
            {
                dt = null;
            }
            return dt;
        }

        public string CustomerDetails(AllClass obj)
        {   
            Connection();
            string Msg = "";
            try
            {
                //SqlCommand cmd = new SqlCommand();
                //cmd.Connection = cn;
                //cmd.CommandText = "Sp_tblUserOnboard";
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@QueryType", "I");
                //cmd.Parameters.AddWithValue("@CUST_NAME", obj.CustName);
                //cmd.Parameters.AddWithValue("@MOBILEID", obj.MobileID);
                //cmd.Parameters.AddWithValue("@ADHARNO", obj.AdharNo);
                //cmd.Parameters.AddWithValue("@EMAILID", obj.EmailID);
                //cmd.Parameters.AddWithValue("@FIRMNAME", obj.FirmName);
                //cmd.Parameters["Msg"].Direction = ParameterDirection.InputOutput;
                //cmd.Parameters["Msg"].Size = 256;
                //cmd.ExecuteNonQuery();
                //Msg = cmd.Parameters["Msg"].Value.ToString();
                Msg = "Data inserted";
                cn.Close();
                return Msg;
            }
            catch (Exception ex)
            {
                cn.Close();
                return Msg;
            }
        }

        public string OnboardApi(AllClass obj)
        {
         
            var client = new RestClient("https://api.paysprint.in/api/v1/service/onboard/onboard/getonboardurl?Token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lc3RhbXAiOiIxNzAwODM4MjA4IiwicGFydG5lcklkIjoiUFMwMDQ2ODkiLCJyZXFpZCI6IjM2MzU4MDIxOCJ9.6Fg7-Nr9IeR2bF0IRXuphqAcF6gZ-T9BFUCymV7OPmg&accept=application/json&content-type=application/json&Authorisedkey=MmVhMmZiODRiZjY1OTUyMTllNzdlMTQ5N2VjY2FhOTM=");
           // client.Timeout = -1;
            var request = new RestRequest("Payspring onboard",Method.Post);
            request.AddHeader("Token", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lc3RhbXAiOiIxNzAwODQwMTQwIiwicGFydG5lcklkIjoiUFMwMDQ2ODkiLCJyZXFpZCI6IjI4OTg1ODU2MiJ9.nbYn5jOxBmyjfaSUeDJOJVupd4rcfGYvAZsOM81l7zI");
            request.AddHeader("accept", "application/json");
            request.AddHeader("Authorisedkey", "MmVhMmZiODRiZjY1OTUyMTllNzdlMTQ5N2VjY2FhOTM=");
            request.AddHeader("Cookie", "UqZBpD3n3iPIDwJU=v1M6t1g++Cm18; ci_session=b30afab7b6706394dd921a3f0b36bb46f34fca06");
            request.AlwaysMultipartFormData = true;
            request.AddParameter("CustName", obj.CustName);
            request.AddParameter("MobileID", obj.MobileID);
            request.AddParameter("AdharNO", obj.AdharNo);
            request.AddParameter("EmailID", obj.EmailID);
            request.AddParameter("firmName", "PAysprint");
            request.AddParameter("callback", "https://paynims.in/Paysprint/");
            RestResponse response = client.Execute(request);
            return response.Content;
            //Console.WriteLine(response.Content);
        }

    }
}