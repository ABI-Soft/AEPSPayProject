using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.IdentityModel.Tokens.Jwt;
using System.IO;
using System.IO.Compression;

using System.Net;
using System.Text;

using System.Web.Script.Serialization;

namespace AEPSProject.App_Start.FunApp
{
    public class ClsAll
    {

        static string GenerateDigits(Random rng, int length)
        {
            char[] chars = new char[length];
            for (int i = 0; i < length; i++)
            {
                chars[i] = (char)(rng.Next(10) + '0');
            }
            return new string(chars);
        }



        public class Token
        {
            public int timestamp { get; set; }
            public string partnerId { get; set; }
            public int reqid { get; set; }
        }
        //public string NewToken()
        //{
        //    Token t = new Token();
        //    Random rng = new Random();
        //    t.reqid = Convert.ToInt32(GenerateDigits(rng, 9));
        //    var aa = System.DateTime.Now;
        //    t.timestamp = (Int32)(DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1))).TotalSeconds;
        //    t.partnerId = "PS004689";
        //    //string data = "{\n \"timestamp\":\"" + timestamp + "\",\n\"partnerId\":\"PS004689\",\n\"reqid\":\"" + digits + "\"}";
        //    // var timestamp = (Int32)(DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1))).TotalSeconds;
        //    string key = "UFMwMDQ2ODk5NjM0NDMwMzUyN2MzMjEyMDEzNGM2OTMzOGYxZmJhNzE2OTgyMzA5MzM=";
        //    var securityKey = new Microsoft.IdentityModel.Tokens.SymmetricSecurityKey(Encoding.UTF8.GetBytes(key));
        //    var credentials = new Microsoft.IdentityModel.Tokens.SigningCredentials(securityKey, JWT.JwtHashAlgorithm.HS256.ToString());
        //    var header = new JwtHeader(credentials);
        //    var payload = new JwtPayload
        //  {
        //    {"timestamp",t.timestamp},
        //    {"partnerId",t.partnerId},
        //    {"reqid", t.reqid },
        //};

        //    var secToken = new JwtSecurityToken(header, payload);
        //    var handler = new JwtSecurityTokenHandler();
        //    var tokenString = handler.WriteToken(secToken);
        //    return tokenString.ToString();

        //}

        //public string RASStatus(clsRASDetail obj, string token)
        //{
        //    //try
        //    //{
        //    token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM0LCJ1c2VyX2lkIjozNCwiZW1haWwiOiJqbmstbmljQGdvdi5pbiIsImZvcmV2ZXIiOmZhbHNlLCJpc3MiOiJodHRwOlwvXC9hcGkucmFzLmdvdi5pblwvYXBpXC92MlwvdXNlclwvc2Vzc2lvbiIsImlhdCI6MTY1Njc0NDcwMywiZXhwIjoxNjU2NzQ4MzAzLCJuYmYiOjE2NTY3NDQ3MDMsImp0aSI6IjA0OTVjYWNhNzhkMGQwZTViYWRkY2Q1OGQ5YzZiYzgwIn0.fvFHJecbJMbGM1xgMXxucLsgMpFF3piQYHVjLLSiKBY";
        //    var json = new JavaScriptSerializer().Serialize(obj);
        //    string url = "https://api.ras.gov.in/api/v2/get-user-feedback?oauth_consumer_key&oauth_token&oauth_signature_method=HMAC-SHA1&oauth_timestamp=1656740982&oauth_nonce=lBtx7p&oauth_version=1.0&oauth_signature=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM0LCJ1c2VyX2lkIjozNCwiZW1haWwiOiJqbmstbmljQGdvdi5pbiIsImZvcmV2ZXIiOmZhbHNlLCJpc3MiOiJodHRwOlwvXC9hcGkucmFzLmdvdi5pblwvYXBpXC92MlwvdXNlclwvc2Vzc2lvbiIsImlhdCI6MTY1NjkzMzA3NywiZXhwIjoxNjU2OTM2Njc3LCJuYmYiOjE2NTY5MzMwNzcsImp0aSI6ImM0MTZmYWJiNWU3YzhhNTIyMzI4ZjU4ZjE2NzdjNjY0In0.gI8uRrvjPvRZyGW8AQ_zhX_XL7tX5X4RxKFl9_fTIiA";
        //    //string url = "https://api.ras.gov.in/api/v2/get-user-feedback?session_token="+token+"";
        //    WebRequest request = WebRequest.Create(url);
        //    request.Method = "POST";
        //    request.Headers.Add("X-Dreamfactory-API-Key", "3acdb97224ca1732a633105982fc07edccb5aae9f3a40340533657a089879684");
        //    request.Headers.Add("X-DreamFactory-Session-Token", token);
        //    request.ContentType = "application/json;";
        //    ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;


        //    using (var streamWriter = new StreamWriter(request.GetRequestStream()))
        //    {
        //        streamWriter.Write(json);
        //        streamWriter.Flush();
        //        streamWriter.Close();
        //    }
        //    HttpWebResponse WebResponse = (HttpWebResponse)request.GetResponse();
        //    Stream responseStream = responseStream = WebResponse.GetResponseStream();
        //    if (WebResponse.ContentEncoding.ToLower().Contains("gzip"))
        //        responseStream = new GZipStream(responseStream, CompressionMode.Decompress);
        //    StreamReader Reader = new StreamReader(responseStream, Encoding.Default);
        //    string Html = Reader.ReadToEnd();
        //    WebResponse.Close();
        //    responseStream.Close();
        //    JavaScriptSerializer serializer = new JavaScriptSerializer();
        //    var resToWrite = serializer.Deserialize<Dictionary<string, object>>(Html);
        //    return resToWrite.ToString();
        //}

        public string JWTNewToken()
        {
            Random rng = new Random();
            string digits = GenerateDigits(rng, 9);
            //  ----------------------
            var epoch = (DateTime.UtcNow - new DateTime(1970, 1, 1)).TotalSeconds;
            string unixTimestamp1 = Convert.ToString((int)DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1)).TotalSeconds); ;
            var timestamp = (long)(DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1)).TotalSeconds * 6000);
            string key = "UFMwMDQ2ODk5NjM0NDMwMzUyN2MzMjEyMDEzNGM2OTMzOGYxZmJhNzE2OTgyMzA5MzM=";
            var securityKey = new Microsoft
               .IdentityModel.Tokens.SymmetricSecurityKey(Encoding.UTF8.GetBytes(key));
            var credentials = new Microsoft.IdentityModel.Tokens.SigningCredentials
                              (securityKey, "HS256");
            var header = new JwtHeader(credentials);
            var payload = new JwtPayload
           {
            {"timestamp",unixTimestamp1},
            {"partnerId","PS004689"},
            {"reqid",digits},
        };

            var secToken = new JwtSecurityToken(header, payload);
            var handler = new JwtSecurityTokenHandler();
            var tokenString = handler.WriteToken(secToken);
            return tokenString.ToString();

            //JavaScriptSerializer serializer = new JavaScriptSerializer();
            //var resToWrite = serializer.Deserialize<Dictionary<string, object>>(tokenString);
            //return resToWrite.ToString();

        }

        public string NewTOken()
        {
            string key = "UFMwMDQ2ODk5NjM0NDMwMzUyN2MzMjEyMDEzNGM2OTMzOGYxZmJhNzE2OTgyMzA5MzM=";
            var securityKey = new Microsoft
               .IdentityModel.Tokens.SymmetricSecurityKey(Encoding.UTF8.GetBytes(key));
            var credentials = new Microsoft.IdentityModel.Tokens.SigningCredentials
                              (securityKey, "HS256");
            var header = new JwtHeader(credentials);
            int dt = Convert.ToInt32((DateTime.UtcNow.Subtract(new DateTime(1970,1,1))).TotalSeconds);
            string tims = Convert.ToString(dt);
            var payload = new JwtPayload
           {{"timestamp","1700752255"},{"partnerId","PS004689"},{"reqid","37733421"}};
            var secToken = new JwtSecurityToken(header,payload);
            var handler = new JwtSecurityTokenHandler();
            var tokenString = handler.WriteToken(secToken);
            string trim = tokenString.Replace(" ", "");
            // trim = trim.Replace("r", "");
            //trim = trim.Replace("n", "");
            // trim = trim.Replace("t", "");

            //tokenString = tokenString.Replace("-", "+");
            //tokenString = tokenString.Replace("_", "/");
            return tokenString.ToString();
        }
    }    






}
