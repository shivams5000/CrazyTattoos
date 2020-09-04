using BusinessObject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryInfoAction
/// </summary>
/// 
namespace DataBaseLayer
{
    public class CategoryInfoAction
    {

        // Add new Category
        public int AddCategory(CategoryInfoData Nidata)
        {
            crazyTattoosEntities apData = new crazyTattoosEntities();
            categoryInfo data = new categoryInfo();
            
            data.CategoryName = Nidata.CategoryName;

            apData.categoryInfoes.Add(data);
            int ans = apData.SaveChanges();
            return ans;
        }

        //Update Category info
        public int UpdateCategory(CategoryInfoData data)
        {
            crazyTattoosEntities nidata = new crazyTattoosEntities();
            categoryInfo ni = new categoryInfo();

            var nsd = from p in nidata.categoryInfoes where p.CategoryId == data.CategoryId select p;
            foreach (categoryInfo nifo in nsd)
            {
                nifo.CategoryId = data.CategoryId;
                nifo.CategoryName = data.CategoryName;
               
            }
            int ans = nidata.SaveChanges();
            return ans;
        }

       

        //Get One Category Info
        public categoryInfo ViewCategory(int CategoryID)
        {
            crazyTattoosEntities data = new crazyTattoosEntities();

            categoryInfo bt = new categoryInfo();
            bt= data.categoryInfoes.Single(c => c.CategoryId == CategoryID); // lamda expression
            return bt;
        }

       
        
    }
}