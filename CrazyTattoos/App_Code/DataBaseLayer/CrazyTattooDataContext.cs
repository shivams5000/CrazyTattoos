﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataBaseLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class categoryInfo
    {
        public categoryInfo()
        {
            this.ImageInfoes = new HashSet<ImageInfo>();
        }
    
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
    
        public virtual ICollection<ImageInfo> ImageInfoes { get; set; }
    }
}
namespace DataBaseLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class ImageInfo
    {
        public int ImageID { get; set; }
        public string ImageName { get; set; }
        public string ImageExtension { get; set; }
        public Nullable<int> ImageSize { get; set; }
        public string ImageType { get; set; }
        public Nullable<int> CategoryId { get; set; }
    
        public virtual categoryInfo categoryInfo { get; set; }
    }
}
namespace DataBaseLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class ImageSlider
    {
        public int PhotoId { get; set; }
        public string PhotoName { get; set; }
        public string ExtName { get; set; }
        public string PhotoType { get; set; }
        public long PhotoSize { get; set; }
    }
}
namespace DataBaseLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class loginInfo
    {
        public int LoginInfoId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
    }
}
namespace DataBaseLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class Testimonial
    {
        public int TestimonialId { get; set; }
        public string Testimonial1 { get; set; }
        public string CustomerName { get; set; }
    }
}