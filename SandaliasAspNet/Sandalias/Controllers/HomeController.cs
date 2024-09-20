using Microsoft.AspNetCore.Mvc;
using Sandalias.Models;
using System.Diagnostics;

namespace Sandalias.Controllers
{
    public class HomeController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }


        public IActionResult DescricaoPraias()
        {
            return View();
        }

        public IActionResult Praias()
        {
            return View();
        }
        public IActionResult Trilhas()
        {
            return View();
        }
        public IActionResult Animais()
        {
            return View();
        }
    }
}
