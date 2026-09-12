// ---------- top nav: highlight current page ----------
document.querySelectorAll('.pagenav a[data-page]').forEach(a => {
  if (a.dataset.page === document.body.dataset.page) a.classList.add('active');
});

// ---------- scroll progress bar ----------
const progress = document.getElementById('progress');
function updateProgress(){
  if(!progress) return;
  const h = document.documentElement;
  const scrolled = (h.scrollTop) / (h.scrollHeight - h.clientHeight) * 100;
  progress.style.width = (isFinite(scrolled) ? scrolled : 0) + '%';
}
document.addEventListener('scroll', updateProgress, { passive:true });
updateProgress();

// ---------- mobile side nav ----------
const toggle = document.getElementById('navtoggle');
const nav = document.getElementById('sidenav');
if (toggle && nav) {
  toggle.addEventListener('click', () => nav.classList.toggle('open'));
  nav.querySelectorAll('a').forEach(a => a.addEventListener('click', () => nav.classList.remove('open')));
}

// ---------- active in-page link + reveal on scroll ----------
if (nav) {
  const links = Array.from(nav.querySelectorAll('a'));
  const sections = links.map(a => document.querySelector(a.getAttribute('href'))).filter(Boolean);
  const navIO = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if(entry.isIntersecting){
        links.forEach(l => l.classList.remove('active'));
        const link = nav.querySelector(`a[href="#${entry.target.id}"]`);
        if(link) link.classList.add('active');
      }
    });
  }, { rootMargin: '-40% 0px -55% 0px' });
  sections.forEach(s => s && navIO.observe(s));
}

const revealIO = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if(entry.isIntersecting){ entry.target.classList.add('in'); revealIO.unobserve(entry.target); }
  });
}, { threshold: 0.08 });
document.querySelectorAll('section').forEach(s => revealIO.observe(s));

// ---------- copy buttons ----------
document.querySelectorAll('.copybtn').forEach(btn => {
  btn.addEventListener('click', async () => {
    const pre = btn.previousElementSibling;
    const text = pre.innerText;
    try{
      await navigator.clipboard.writeText(text);
      btn.textContent = 'Copié'; btn.classList.add('done');
      setTimeout(() => { btn.textContent = 'Copier'; btn.classList.remove('done'); }, 1600);
    }catch(e){
      btn.textContent = 'Erreur';
      setTimeout(() => { btn.textContent = 'Copier'; }, 1600);
    }
  });
});

// ---------- hosting / generic tabs ----------
document.querySelectorAll('.tabbtn').forEach(btn => {
  btn.addEventListener('click', () => {
    const group = btn.closest('.tabs').parentElement;
    group.querySelectorAll('.tabbtn').forEach(b => b.classList.remove('active'));
    group.querySelectorAll('.tabpanel').forEach(p => p.classList.remove('active'));
    btn.classList.add('active');
    group.querySelector('#tab-' + btn.dataset.tab).classList.add('active');
  });
});

// ---------- entity accordion ----------
document.querySelectorAll('.acc-head').forEach(head => {
  head.addEventListener('click', () => {
    const item = head.parentElement;
    const wasOpen = item.classList.contains('open');
    item.parentElement.querySelectorAll('.acc-item').forEach(i => i.classList.remove('open'));
    if(!wasOpen) item.classList.add('open');
  });
});

// ---------- role-switcher demo ----------
const notes = {
  employee: "<b>Employé :</b> ne voit que ses propres demandes RH et IT. Aucun module technique dans le menu.",
  it: "<b>Responsable IT :</b> accès complet aux modules techniques (inventaire, ordinateurs, logiciels, licences) en plus des demandes.",
  hr: "<b>Responsable RH :</b> menu limité aux demandes RH et IT, comme un employé — mais il voit et traite toutes les demandes RH de son équipe.",
  admin: "<b>Administrateur :</b> accès complet, plus la gestion des comptes, rôles et équipes."
};
const menu = document.getElementById('demoMenu');
const note = document.getElementById('demoNote');
if (menu && note) {
  document.querySelectorAll('.rolebtn').forEach(btn => {
    btn.addEventListener('click', () => {
      document.querySelectorAll('.rolebtn').forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      const role = btn.dataset.role;
      menu.querySelectorAll('[data-tech]').forEach(el => el.classList.toggle('hidden', !(role === 'it' || role === 'admin')));
      menu.querySelectorAll('[data-admin]').forEach(el => el.classList.toggle('hidden', role !== 'admin'));
      note.innerHTML = notes[role];
    });
  });
}
