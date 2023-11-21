using AEPSProject.App_Start.AllClassess;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
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
    }
}