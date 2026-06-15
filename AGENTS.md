# BlavFF - Session Context Summary

## Goal
Maintain and refine the BlavFF static website with brutalist styling, fix responsiveness, improve navigation, fully optimize for SEO, and integrate New Relic monitoring.

## Constraints & Preferences
- Pure static HTML/CSS/JS, no build tools.
- SK pages in root, EN pages in `/en/`.
- Web server is case-sensitive for image assets.
- Desktop navigation hidden behind burger menu (except language switcher & registration button).
- All internal links must be extensionless (`about` not `about.html`).
- SEO meta tags must be comprehensive (Open Graph, Twitter Cards, canonical, hreflang).
- Competition rules merged into competitions page (standalone competition-rules pages still exist).
- Sitemap and robots.txt deployed for search engine indexing.

## Progress
### Done
- **Desktop nav consolidation** – Removed inline desktop nav links; burger menu visible on all screen sizes; language switcher and registration button always visible in header.
- **Marquee loop fixes** – Restructured with two identical `<div>` sets inside `flex` + `width: max-content`; added missing `•` separators; added `will-change: transform` in CSS.
- **Noscript countdown fallback** – Added static `--` values for browsers without JavaScript on both `index.html` and `en/index.html`.
- **Centered Súťaže** – Moved to full 3-column grid layout (equal width cards) instead of broken narrow container.
- **Removed `.html` extensions** – All internal links (`about.html` → `about`) on all 40+ pages.
- **SEO meta tags** – Added complete Open Graph, Twitter Card, canonical, hreflang, keywords, author, robots meta to every page.
- **Competition rules merged** – Added 8-chapter collapsible rules section to `competitions.html` and `en/competitions.html`.
- **HTML validation fix** – Removed extra `</div>` tags in `en/index.html` that broke `<main>`/`<body>` structure.
- **Sitemap.xml + robots.txt** – Deployed with all SK/EN URLs.
- **Removed "therian" from SEO** – Bulk sed replacement across all pages.
- **Wikifur page created** – `wikifur.txt` with complete infobox, references, mascot details.
- **Logo fix** – Changed all logo references from `logonobg.png` to `logowb.png` across all 41 HTML pages. Press-kit download link kept as `logonobg.png`.
- **Checkbox alignment fix** – Swapped `brutal-input` to `brutal-checkbox` on all 4 checkbox inputs (SK + EN register pages).
- **Rules page consistency fix** – Converted sections 7-10 (SK) and 3,7-10 (EN) from `card` to `info-section` with `section-number` spans.
- **Anti-harassment EN fix** – Converted 3 `card` sections to `info-section` with `section-number` spans.
- **New Relic Browser Monitoring** – Injected NR config + CDN loader into `<head>` of all 41 HTML pages. Config: accountID `8177575`, applicationID `538865001`, licenseKey `NRJS-ee8553f793c36ddb2b5`, beacon `bam.eu01.nr-data.net`. Features: session replay (10% sampling), distributed tracing, performance measures, AJAX monitoring.
- **Privacy policy updated (SK)** – Added GTM (4.1), Google Ads (4.3), New Relic (4.5). Renumbered services 4.1–4.8. Detailed cookie tables with specific names, purposes, durations.
- **Privacy policy updated (EN)** – Matching SK changes: GTM, Google Ads, New Relic services; detailed cookie tables.
- **TOS expanded (SK + EN)** – From 6 sections (1 sentence each) to 13 sections with full legal language. Covers: Organizer, Registration, Eligibility, Behaviour, Programme changes, Cancellation/refund, Liability, Photography/IP, Data protection, Insurance, Force majeure, Governing law, Final provisions.
- **SK/EN nav parity** – Added `Finley` link to all EN pages (nav + footer).

### In Progress
- Marquee restructured with two identical `<div>` sets (was single div with 3 copies); should now loop seamlessly. Needs visual verification.

### Blocked
- (none)

## Key Decisions
- Desktop nav hidden behind burger on all screen sizes (burger menu has no `xl:hidden`).
- Súťaže card moved to 3-column grid instead of narrow `max-w-xs` container.
- Competition rules placed as collapsible `<details>` sections on the competitions page.
- `translateX(-50%)` marquee approach requires two pixel-identical sets with no extra trailing separator.
- Logo uses `logowb.png` (solid background RGB PNG) instead of transparent `logonobg.png` for visibility on `#F5F5F5` background.
- Checkbox styling uses `brutal-checkbox` class (defined at line 1784 in `styles.css`) not `brutal-input` (text input class).
- New Relic agent loaded from CDN async (`js-agent.newrelic.com/nr-loader-spa-1.316.0.min.js`) rather than inlining the full 68KB loader script.
- Privacy policy cookie tables grouped by service with specific cookie names, purposes, and durations.
- Contact sections on policy pages kept as `card bg-pale-circle-light/50` (intentional visual treatment) while other content sections use `info-section`.
- TOS pages now have 13 sections covering full legal terms; distinct from Rules (10 sections of behavioural rules) and Privacy Policy (data processing).

## Next Steps
- Verify marquee loops seamlessly on desktop (restructured with two identical divs).
- Final responsive testing across all breakpoints.

## Critical Context
- `--color-surface: #F5F5F5` (light gray) – transparent logos may be invisible against this background.
- `brutal-input` class (line 1770 in `styles.css`): `border: 4px`, `padding: 1rem 1.5rem`, `width: 100%` — intended for text inputs, NOT checkboxes.
- `brutal-checkbox` class (line 1784): `width: 1.5rem`, `height: 1.5rem`, `border: 4px` — proper checkbox style with no padding.
- New Relic config: accountID `8177575`, agentID `538865001`, licenseKey `NRJS-ee8553f793c36ddb2b5`, beacon `bam.eu01.nr-data.net` (EU).
- New Relic features enabled: session_replay (10% sampling, 100% error sampling, mask all inputs), distributed_tracing, performance.capture_measures, user_actions.
- GTM ID: `GTM-5KX3NX44`; Google Ads ID: `AW-18156080294`; Clarity ID: `wr2a5xebeo`.
- Press-kit page intentionally keeps `logonobg.png` in download links (offers transparent version for designers).
- `info-section` pattern: `<div class="info-section"><span class="section-number">Sekcia N</span><h2 class="text-3xl md:text-4xl...">Title</h2>`.

## Relevant Files
- `privacy.html`, `en/privacy.html`: Updated with GTM, Google Ads, New Relic services and detailed cookie tables (both SK and EN).
- `tos.html`, `en/tos.html`: Expanded to 13 sections with full legal language.
- `rules.html`, `en/rules.html`: Sections 7-10 (SK) and 3,7-10 (EN) converted from `card` to `info-section` with `section-number`.
- `en/anti-harassment.html`: 3 sections converted from `card` to `info-section` with `section-number` spans.
- `register.html`, `en/register.html`: Checkbox classes changed from `brutal-input` to `brutal-checkbox`.
- `index.html`, `en/index.html`: Marquee restructured; noscript fallback added; logo updated; NR injected; Finley link in nav/footer.
- `styles.css`: Contains `brutal-input` (line 1770), `brutal-checkbox` (line 1784), `info-section` patterns.
- `sitemap.xml`, `robots.txt`: Deployed with all SK/EN URLs.
- `wikifur.txt`: Complete Wikifur page for BlavFF.
- All `en/*.html` files: Finley nav link added.
