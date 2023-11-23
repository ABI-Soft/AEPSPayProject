using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AEPSProject.App_Start.FunApp.GetAPI
{
    
    public class CreateToken
    {

        public string  PartnerId { get; set; }
        public string  ReqID { get; set; }
        public string  Timestamp { get; set; }
        
    }
    //public string Timestamp()
    //{
    //    string unixTimestamp = Convert.ToString((int)DateTime.UtcNow.Subtract(new DateTime(1970, 1, 1)).TotalSeconds);
    //    return unixTimestamp;
    //}

}