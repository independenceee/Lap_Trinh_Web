using Microsoft.AspNetCore.Mvc;
using NguyenDuyKhanh_211202428_De_1.Models;

namespace NguyenDuyKhanh_211202428_De_1.ViewComponents
{
    public class RenderViewComponent: ViewComponent
    {
        private readonly OnlineShopContext db;
        private List<Category> categories;

        public RenderViewComponent(OnlineShopContext _db)
        {
            this.db = _db;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            categories = db.Categories.ToList();
            return View("Nav", categories);
        }
    }
}
