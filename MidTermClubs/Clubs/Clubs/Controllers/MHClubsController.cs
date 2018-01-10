using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Clubs.Models;

namespace Clubs.Controllers
{
    public class MHClubsController : Controller
    {
        private readonly ClubsContext _context;

        public MHClubsController(ClubsContext context)
        {
            _context = context;
        }

        // GET: MHClubs
        public async Task<IActionResult> Index()
        {
			var clubsContext = _context.Club.Include(c => c.StyleCodeNavigation)
				.OrderBy(x => x.StyleCodeNavigation.Name)
				.ThenBy(x => x.Name);
            return View(await clubsContext.ToListAsync());
        }

        // GET: MHClubs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var club = await _context.Club
                .Include(c => c.StyleCodeNavigation)
                .SingleOrDefaultAsync(m => m.ClubId == id);
            if (club == null)
            {
                return NotFound();
            }

            return View(club);
        }

        // GET: MHClubs/Create
        public IActionResult Create()
        {
            ViewData["StyleCode"] = new SelectList(_context.Style, "StyleCode", "StyleCode");
            return View();
        }

        // POST: MHClubs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ClubId,Name,Phone,StyleCode")] Club club)
        {
            if (ModelState.IsValid)
            {
                _context.Add(club);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["StyleCode"] = new SelectList(_context.Style, "StyleCode", "StyleCode", club.StyleCode);
            return View(club);
        }

        // GET: MHClubs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var club = await _context.Club.SingleOrDefaultAsync(m => m.ClubId == id);
            if (club == null)
            {
                return NotFound();
            }
            ViewData["StyleCode"] = new SelectList(_context.Style, "StyleCode", "StyleCode", club.StyleCode);
            return View(club);
        }

        // POST: MHClubs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ClubId,Name,Phone,StyleCode")] Club club)
        {
            if (id != club.ClubId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(club);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ClubExists(club.ClubId))
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
            ViewData["StyleCode"] = new SelectList(_context.Style, "StyleCode", "StyleCode", club.StyleCode);
            return View(club);
        }

        // GET: MHClubs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var club = await _context.Club
                .Include(c => c.StyleCodeNavigation)
                .SingleOrDefaultAsync(m => m.ClubId == id);
            if (club == null)
            {
                return NotFound();
            }

            return View(club);
        }

        // POST: MHClubs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var club = await _context.Club.SingleOrDefaultAsync(m => m.ClubId == id);
            _context.Club.Remove(club);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ClubExists(int id)
        {
            return _context.Club.Any(e => e.ClubId == id);
        }
    }
}
