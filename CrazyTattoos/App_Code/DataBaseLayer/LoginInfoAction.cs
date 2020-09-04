using BusinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginInfoAction
/// </summary>
namespace DataBaseLayer
{
    public class LoginInfoAction
    {
        //Login Admin Panel Implementation
        public loginInfo login(LoginInfoData liData)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();
            loginInfo li = new loginInfo();

            // linq query
            li = (from log in data.loginInfoes
                  where log.UserName == liData.Username & log.Password == liData.Password
                  select log).First();
            return li;
        }
        /// <summary>
        /// To Change Password
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public bool changepassword(LoginInfoData lidata)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();
            loginInfo li = new loginInfo();
            bool ans = false;

            //Get loginInfo using old password
            li = (from l in data.loginInfoes where l.LoginInfoId == lidata.Userid where l.Password == lidata.Oldpassword select l).FirstOrDefault();
            if (li != null)
            {
                var info = from l in data.loginInfoes
                           where l.LoginInfoId == lidata.Userid
                           select l;
                foreach (loginInfo li1 in info)
                {
                    li1.Password = lidata.Password; //set new password for the same   
                }
                ans = true;
            }
            else if (li == null)
            {
                ans = false;

            }
            data.SaveChanges(); // ans save the changes

            return ans;

        }
    }
}