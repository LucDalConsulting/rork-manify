/* Manify landing — motion, floating skill orbs, and skill modal */
(function () {
  const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  const rnd = (seed) => { const x = Math.sin(seed * 99.73) * 10000; return x - Math.floor(x); };

  /* ---- floating skill orbs (data from skills-data.js) ---- */
  const SK = window.SKILLS || [];
  const orbs = document.getElementById('orbs');
  function layoutOrbs() {
    if (!orbs) return;
    const W = orbs.clientWidth, H = orbs.clientHeight;
    if (!W || !H) return;
    const mobile = W < 620;
    const items = [...orbs.children];
    items.forEach((el, i) => {
      const size = Math.round((mobile ? 122 : 152) + rnd(i + 1) * (mobile ? 30 : 66));
      el.dataset.size = size;
      el.style.setProperty('--size', size + 'px');
      el.style.setProperty('--dur', (6 + rnd(i + 3) * 4).toFixed(2) + 's');
      el.style.setProperty('--delay', (-(rnd(i + 5) * 5)).toFixed(2) + 's');
      el.style.setProperty('--amp', (-(12 + Math.round(rnd(i + 7) * 12))) + 'px');
    });
    const placed = [], pad = mobile ? 10 : 20;
    items.forEach((el) => {
      const size = +el.dataset.size, r = size / 2;
      let best = { x: W / 2, y: H / 2 }, bestGap = -1e9;
      for (let t = 0; t < 600; t++) {
        const cx = r + 6 + Math.random() * (W - size - 12);
        const cy = r + 6 + Math.random() * (H - size - 12);
        let ok = true, minGap = Infinity;
        for (const p of placed) {
          const gap = Math.hypot(cx - p.x, cy - p.y) - (r + p.r);
          if (gap < pad) { ok = false; break; }
          if (gap < minGap) minGap = gap;
        }
        if (ok) { best = { x: cx, y: cy }; break; }
        if (minGap > bestGap) { bestGap = minGap; best = { x: cx, y: cy }; }
      }
      placed.push({ x: best.x, y: best.y, r });
      el.style.left = (best.x - r) + 'px';
      el.style.top = (best.y - r) + 'px';
    });
  }
  if (orbs && SK.length) {
    orbs.innerHTML = SK.map((s, i) =>
      `<button class="orb" data-i="${i}" style="--rgb:${s.rgb}" aria-label="Explore ${s.name}"><span class="orb__ico">${s.ico}</span><span class="orb__name">${s.name}</span><span class="orb__n">${s.n} lessons</span></button>`
    ).join('');
    layoutOrbs();
    let rt; window.addEventListener('resize', () => { clearTimeout(rt); rt = setTimeout(layoutOrbs, 160); });
  }

  /* ---- skill modal ---- */
  const modal = document.getElementById('skillModal');
  const modalBody = document.getElementById('modalBody');
  function openSkill(i) {
    const s = SK[i]; if (!s || !modal) return;
    const rgb = s.rgb;
    const tiers = s.tiers.map((t) =>
      `<div class="md-tier"><div class="md-tier__label">Tier ${t.tier}</div><ul class="md-list">${t.titles.map((x) => `<li>${x}</li>`).join('')}</ul></div>`
    ).join('');
    modalBody.innerHTML =
      `<div class="md-head">
        <div class="md-ico" style="background:rgba(${rgb},.16);box-shadow:0 0 30px -6px rgba(${rgb},.6)">${s.ico}</div>
        <div><div class="md-name" id="modalName">${s.name}</div><div class="md-meta">${s.n} lessons · ${s.tierCount} tiers</div></div>
      </div>
      <p class="md-why" style="border-color:rgb(${rgb})">${s.why}</p>
      <div class="md-sub">What you'll master</div>
      ${tiers}
      <a class="btn btn--gold md-cta" href="https://apps.apple.com/app/id6760329399" target="_blank" rel="noopener">Start ${s.name} on the App Store</a>`;
    modal.classList.add('open');
    modal.setAttribute('aria-hidden', 'false');
    document.body.style.overflow = 'hidden';
    const p = modal.querySelector('.modal__panel'); if (p) p.scrollTop = 0;
  }
  function closeSkill() {
    if (!modal) return;
    modal.classList.remove('open');
    modal.setAttribute('aria-hidden', 'true');
    document.body.style.overflow = '';
  }
  if (orbs) orbs.addEventListener('click', (e) => { const b = e.target.closest('.orb'); if (b) openSkill(+b.dataset.i); });
  if (modal) {
    modal.addEventListener('click', (e) => { if (e.target.hasAttribute('data-close')) closeSkill(); });
    document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeSkill(); });
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
      entries.forEach((e) => {
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
