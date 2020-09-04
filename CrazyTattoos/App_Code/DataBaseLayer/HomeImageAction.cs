using BusinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BannerInfoAction
/// </summary>
namespace DataBaseLayer
{
    public class HomeImageInfoAction
    {
        public int AddPhoto(HomeImageInfoData Bidata)
        {
            crazyTattoosEntities apData = new crazyTattoosEntities();
            ImageSlider data = new ImageSlider();

            data.PhotoName = Bidata.BannerName;
            data.ExtName = Bidata.BannerName.Substring(Bidata.BannerName.LastIndexOf('.'));
            data.PhotoSize = Bidata.BannerSize;
            data.PhotoType = Bidata.BannerType;

            apData.ImageSliders.Add(data);
            int ans = apData.SaveChanges();
            return ans;
        }
       
      

        //Get one Banner info from the supplied bannerId
        public ImageSlider ViewPhoto1(int PhotoId)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();

            ImageSlider bt = new ImageSlider();
            bt = data.ImageSliders.Single(c => c.PhotoId == PhotoId); // lamda expression
            return bt;
        }

       
    }
}