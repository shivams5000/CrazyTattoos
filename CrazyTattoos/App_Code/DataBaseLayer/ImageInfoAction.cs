using BusinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ImageInfoAction
/// </summary>
namespace DataBaseLayer
{
    public class ImageInfoAction
    {
        public int AddPhoto(ImageInfoData idata)
        {
            crazyTattoosEntities apData = new crazyTattoosEntities();
            ImageInfo data = new ImageInfo();

            data.ImageName = idata.ImageName;
            data.ImageExtension = idata.ImageName.Substring(idata.ImageName.LastIndexOf('.'));
            data.ImageSize = idata.ImageSize;
            data.ImageType = idata.ImageType;
            data.CategoryId = idata.CategoryId;
            apData.ImageInfoes.Add(data);
            int ans = apData.SaveChanges();

            return ans;
        }
        


        //Get one image Info
        public ImageInfo ViewPhoto1(int ImageID)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();
            ImageInfo i = new ImageInfo();
            i = data.ImageInfoes.Single(c => c.ImageID == ImageID); // lamda expression
            return i;
        }
       
    }
}