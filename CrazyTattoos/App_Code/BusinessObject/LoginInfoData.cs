using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginInfoData
/// </summary>
/// 
namespace BusinessObject
{
    public class LoginInfoData
    {
        private int userid;
        private string username, password, oldpassword, email, securityQuestion, securityAnswer;

        public int Userid { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Oldpassword { get; set; }
        public string Email { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
    }
}