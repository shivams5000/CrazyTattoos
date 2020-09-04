using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BannerInfoData
/// </summary>
namespace BusinessObject
{
    public class HomeImageInfoData
    {
        int bannerID;
        long bannerSize;
        string bannerName, bannerExtension, bannerType;
        public string BannerName
        {
            get
            {
                return bannerName;
            }

            set
            {
                bannerName = value;
            }
        }

        public string BannerExtension
        {
            get
            {
                return bannerExtension;
            }

            set
            {
                bannerExtension = value;
            }
        }

        public string BannerType
        {
            get
            {
                return bannerType;
            }

            set
            {
                bannerType = value;
            }
        }

        public int BannerID
        {
            get
            {
                return bannerID;
            }

            set
            {
                bannerID = value;
            }
        }

        public long BannerSize
        {
            get
            {
                return bannerSize;
            }

            set
            {
                bannerSize = value;
            }
        }
    }
}