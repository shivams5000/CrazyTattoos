using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ImageInfoData
/// </summary>
namespace BusinessObject
{
    public class ImageInfoData
    {
        private int imageID, imageSize;
        private string imageName, imageType, imageExtension, imageDescription, imageCaption;
        private int categoryId;
        public int ImageID { get; set; }
        public int ImageSize { get; set; }
        public string ImageName { get; set; }
        public string ImageType { get; set; }
        public string ImageExtension { get; set; }
        public string ImageDescription { get; set; }
        public string ImageCaption { get; set; }
        public int CategoryId { get; set; }
    }
}