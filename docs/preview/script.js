/* Manify landing — motion + dynamic content */
(function () {
  const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  /* ---- category data (from the app's CategoryModel) ---- */
  const CATS = [
    { name: 'Firearms', sub: 'Responsibility & force literacy', ico: '🎯', rgb: '180,80,80', n: 16 },
    { name: 'Cars', sub: 'Mechanical autonomy', ico: '🔧', rgb: '200,140,60', n: 16 },
    { name: 'Money', sub: 'Build and keep wealth', ico: '💰', rgb: '60,170,90', n: 16 },
    { name: 'Grilling', sub: 'Fire, meat, method, confidence', ico: '🔥', rgb: '220,100,50', n: 12 },
    { name: 'Self-Defense', sub: 'Protect yourself and others', ico: '🥊', rgb: '130,110,190', n: 12 },
    { name: 'Fitness', sub: 'Strength, conditioning, longevity', ico: '💪', rgb: '210,90,70', n: 16 },
    { name: 'First Aid', sub: 'Emergency medical readiness', ico: '⛑️', rgb: '210,60,80', n: 16 },
    { name: 'Negotiation', sub: 'Deals, salary, and influence', ico: '💼', rgb: '60,150,160', n: 12 },
    { name: 'Home', sub: 'Ownership competence', ico: '🏠', rgb: '80,160,120', n: 16 },
    { name: 'Constitution', sub: 'Power-structure literacy', ico: '🏛️', rgb: '70,130,200', n: 16 },
    { name: 'Sharks', sub: 'Apex-predator energy', ico: '🦈', rgb: '60,140,180', n: 12 },
  ];
  const cards = document.getElementById('cards');
  if (cards) {
    cards.innerHTML = CATS.map((c) => `
      <article class="card" style="--accent:rgba(${c.rgb},.28);--accent-soft:rgba(${c.rgb},.14)" data-reveal>
        <div class="card__ico" style="background:rgba(${c.rgb},.14);box-shadow:0 0 24px -6px rgba(${c.rgb},.5)">${c.ico}</div>
        <h3 class="card__name">${c.name}</h3>
        <p class="card__sub">${c.sub}</p>
        <div class="card__meta">${c.n} lessons</div>
      </article>`).join('');
  }

  /* ---- gallery from screenshots ---- */
  const shots = ['2613', '2614', '2615', '2616', '2617', '2618', '2620', '2621'];
  const gallery = document.getElementById('gallery');
  if (gallery) {
    gallery.innerHTML = shots.map((s) =>
      `<figure data-reveal><img src="assets/shots/appstore_IMG_${s}.png" alt="Manify app screen" loading="lazy" /></figure>`
    ).join('');
  }

  /* ---- nav scrolled state ---- */
  const nav = document.getElementById('nav');
  const onScroll = () => nav && nav.classList.toggle('scrolled', window.scrollY > 40);
  onScroll();
  window.addEventListener('scroll', onScroll, { passive: true });

  /* ---- reveals ---- */
  const reveals = document.querySelectorAll('[data-reveal]');
  if (reduce) {
    reveals.forEach((el) => el.classList.add('in'));
  } else {
    const io = new IntersectionObserver((entries) => {
      entries.forEach((e, i) => {
        if (e.isIntersecting) {
          const el = e.target;
          const sib = [...(el.parentElement ? el.parentElement.children : [])].indexOf(el);
          el.style.transitionDelay = Math.min(sib, 6) * 60 + 'ms';
          el.classList.add('in');
          io.unobserve(el);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -8% 0px' });
    reveals.forEach((el) => io.observe(el));
  }

  /* ---- count-up stats ---- */
  const counters = document.querySelectorAll('[data-count]');
  const countIO = new IntersectionObserver((entries) => {
    entries.forEach((e) => {
      if (!e.isIntersecting) return;
      const el = e.target, target = +el.dataset.count;
      countIO.unobserve(el);
      if (reduce) { el.textContent = target.toLocaleString(); return; }
      const dur = 1400, t0 = performance.now();
      const tick = (t) => {
        const p = Math.min((t - t0) / dur, 1);
        const eased = 1 - Math.pow(1 - p, 3);
        el.textContent = Math.round(target * eased).toLocaleString();
        if (p < 1) requestAnimationFrame(tick);
      };
      requestAnimationFrame(tick);
    });
  }, { threshold: 0.6 });
  counters.forEach((el) => countIO.observe(el));

  /* ---- GSAP scroll parallax (native scroll; smooth anchors via CSS) ---- */
  if (!reduce && window.gsap && window.ScrollTrigger) {
    gsap.registerPlugin(ScrollTrigger);
    gsap.to('.hero__phone', { yPercent: -12, ease: 'none', scrollTrigger: { trigger: '.hero', start: 'top top', end: 'bottom top', scrub: true } });
    gsap.to('.hero__aurora', { yPercent: 18, ease: 'none', scrollTrigger: { trigger: '.hero', start: 'top top', end: 'bottom top', scrub: true } });
  }
})();
