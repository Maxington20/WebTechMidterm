using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Clubs.Models;
using Microsoft.AspNetCore.Http;

namespace Clubs.Controllers
{
    public class MHContractsController : Controller
    {
        private readonly ClubsContext _context;

        public MHContractsController(ClubsContext context)
        {
            _context = context;
        }

        // GET: MHContracts
        public async Task<IActionResult> Index(int? clubID, string clubName, string clubStyle)
        {
			if (clubID != null)
			{
				HttpContext.Session.SetString("clubID", Convert.ToString(clubID));
				HttpContext.Session.SetString("clubName", clubName);
				HttpContext.Session.SetString("clubStyle", clubStyle);
			}

			else if (clubID == null)
			{
				if (HttpContext.Session.GetString("clubID") == null)
				{
					TempData["message"] = "Please select a club";
					return RedirectToAction("Index", "MHClubs");
				}
				else
				{
					clubID = Convert.ToInt32(HttpContext.Session.GetString("clubID"));
					clubName = HttpContext.Session.GetString("clubName");
					clubStyle = HttpContext.Session.GetString("clubStyle");
				}
			}

			ViewBag.clubID = clubID;
			ViewBag.clubName = clubName;
			ViewBag.clubStyle = clubStyle;

			var clubsContext = _context.Contract.Include(c => c.Club).Include(c => c.Group)
				.Where(x=> x.ClubId == clubID)
				.OrderByDescending(x=> x.StartDate);
            return View(await clubsContext.ToListAsync());
        }

        // GET: MHContracts/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contract = await _context.Contract
                .Include(c => c.Club)
                .Include(c => c.Group)
                .SingleOrDefaultAsync(m => m.ContractId == id);
            if (contract == null)
            {
                return NotFound();
            }

            return View(contract);
        }

        // GET: MHContracts/Create
        public IActionResult Create(string clubName, int? clubID, string clubStyle)
        {
			ViewBag.clubName = clubName;
			ViewBag.clubID = clubID;
			ViewBag.clubStyle = clubStyle;

			ViewData["ClubId"] = new SelectList(_context.Club, "ClubId", "Name");
			ViewData["GroupId"] = new SelectList(_context.Groups
				.OrderBy(x => x.Name)
				.Where(x => x.StyleCode == clubStyle) , "GroupId", "Name");
			
            return View();
        }

        // POST: MHContracts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ContractId,StartDate,GroupId,ClubId,PricePerPerformace,NumberOfPerformances,TotalPrice")] Contract contract)
        {
			contract.StartDate = Convert.ToDateTime(Request.Form["StartDate"]);
			contract.GroupId = Convert.ToInt32(Request.Form["GroupId"]);
			contract.ClubId = Convert.ToInt32(Request.Form["ClubId"]);
			contract.PricePerPerformace = Convert.ToDouble(Request.Form["PricePerPerformace"]);
			contract.NumberOfPerformances = Convert.ToInt32(Request.Form["NumberOfPerformances"]);
			contract.TotalPrice = contract.PricePerPerformace * contract.NumberOfPerformances;

			if (ModelState.IsValid)
			{
				_context.Add(contract);
				await _context.SaveChangesAsync();
				TempData["message"] = "Successfully saved contract with a total cost of: " + contract.TotalPrice;
				return RedirectToAction(nameof(Index));
			}

            ViewData["ClubId"] = new SelectList(_context.Club, "ClubId", "Name", contract.ClubId);
            ViewData["GroupId"] = new SelectList(_context.Groups, "GroupId", "Name", contract.GroupId);
            return View(contract);
        }

        // GET: MHContracts/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contract = await _context.Contract.SingleOrDefaultAsync(m => m.ContractId == id);
            if (contract == null)
            {
                return NotFound();
            }
            ViewData["ClubId"] = new SelectList(_context.Club, "ClubId", "Name", contract.ClubId);
            ViewData["GroupId"] = new SelectList(_context.Groups, "GroupId", "Name", contract.GroupId);
            return View(contract);
        }

        // POST: MHContracts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ContractId,StartDate,GroupId,ClubId,PricePerPerformace,NumberOfPerformances,TotalPrice")] Contract contract)
        {
            if (id != contract.ContractId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(contract);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ContractExists(contract.ContractId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ClubId"] = new SelectList(_context.Club, "ClubId", "Name", contract.ClubId);
            ViewData["GroupId"] = new SelectList(_context.Groups, "GroupId", "Name", contract.GroupId);
            return View(contract);
        }

        // GET: MHContracts/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var contract = await _context.Contract
                .Include(c => c.Club)
                .Include(c => c.Group)
                .SingleOrDefaultAsync(m => m.ContractId == id);
            if (contract == null)
            {
                return NotFound();
            }

            return View(contract);
        }

        // POST: MHContracts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var contract = await _context.Contract.SingleOrDefaultAsync(m => m.ContractId == id);
            _context.Contract.Remove(contract);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ContractExists(int id)
        {
            return _context.Contract.Any(e => e.ContractId == id);
        }
    }
}
