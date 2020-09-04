using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TestimonialInfoAction
/// </summary>
namespace DataBaseLayer
{
    public class TestimonialInfoAction
    {
        // Add Testimonial
        public int AddTestimonial(TestimonialInfoData Nidata)
        {
            crazyTattoosEntities apData = new crazyTattoosEntities();
            Testimonial data = new Testimonial();

            data.CustomerName = Nidata.CustomerName;
            data.Testimonial1 = Nidata.Testimonial;
           
            apData.Testimonials.Add(data);
            int ans = apData.SaveChanges();
            return ans;
        }
        
       

        //Get one Testimonial
        public Testimonial ViewTestimonial(int ID)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();

            Testimonial bt = new Testimonial();
            bt = data.Testimonials.Single(c => c.TestimonialId == ID); // lamda expression
            return bt;
        }

       
       

        //Update testimonial info
        public int UpdateTestimonial(TestimonialInfoData data)
        {
            crazyTattoosEntities nidata = new crazyTattoosEntities();
            Testimonial ni = new Testimonial();

            var nsd = from p in nidata.Testimonials where p.TestimonialId == data.TestimonialId select p;
            foreach (Testimonial nifo in nsd)
            {
                nifo.TestimonialId = data.TestimonialId;
                nifo.CustomerName = data.CustomerName;
                nifo.Testimonial1 = data.Testimonial;
               
            }
            int ans = nidata.SaveChanges();
            return ans;
        }
    }
}