using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NguyenDuyKhanh_211202428_De_1.Models;

namespace NguyenDuyKhanh_211202428_De_1.Controllers
{
    [Route("BaiThi")]
    public class BaiThiController : Controller
    {
        private int pageSize = 3;
        private readonly OnlineShopContext db;

        public BaiThiController(OnlineShopContext _db)
        {
            this.db = _db;
        }

        public IActionResult Index(int? categoryId)
        {
            //List<Product> products;

            //if (categoryId == 0)
            //{
            //    products = db.Products.ToList();
            //    return PartialView("NguyenDuyKhanh_Main", products);
            //}

            //products = db.Products.Where(product => product.CategoryId == categoryId).ToList();
            //return PartialView("NguyenDuyKhanh_Main", products);

            var products = db.Products.Include(product => product.Category);

            if(categoryId != null)
            {
                products = db.Products
                    .Where(product => product.CategoryId == categoryId)
                    .Include(product => product.Category);
            }
            int pageNum = (int)Math.Ceiling(products.Count() / (float)pageSize);
            ViewBag.pageNum = pageNum;
            var result = products.Take(pageSize).ToList();
            return PartialView("NguyenDuyKhanh_Main", result);
        }

        [HttpGet("/filter")]
        public IActionResult BaiThiFilter(int? pageIndex, string? keyword, int? categoryId = 0 ) 
        {
            int page = (int)(pageIndex == null || pageIndex <= 0 ? 1 : pageIndex);
            var products = (IQueryable<Product>) db.Products;

            if(categoryId != null)
            {
                products = products.Where(product => product.CategoryId == categoryId);
                ViewBag.categoryId = categoryId;
            }

            if(keyword != null)
            {
                products = products.Where(product => product.Name.ToLower().Contains(keyword.ToLower()));
                ViewBag.keyword = keyword;
            }

            int pageNum = (int)Math.Ceiling(products.Count() / (float)pageSize);
            ViewBag.pageNum = pageNum;

            var result = products.Skip(pageSize * (page - 1)).Take(pageSize).Include(cate => cate.CategoryId);
            return PartialView("NguyenDuyKhanh_Main", result);
        }

    }
}
