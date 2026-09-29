# Charlie AI: project memory

Landing page and marketing assets for Charlie AI, an AI wealth copilot for boutique EAMs and independent advisers in Singapore and Hong Kong. Founder: Amber Liang (Adaptive Intelligence). Dev branch: `claude/landing-page-dev-3l8tts`.

## Positioning and voice
- Audience: firm leaders, boutique wealth managers, private banks, IFAs. Buyers are sceptical of hype, so be specific.
- Compliance is a feature: every output is a draft for a licensed adviser to approve. Charlie holds zero advisory discretion. Never imply advice, price targets or buy/sell signals.
- No exclamation marks, no "we believe" or "our mission", no superlatives without a number. Second person for the reader, third person for Charlie.
- Name: "Charlie AI" in the footer and legal line. Founder title: "Founder, Charlie AI for Wealth Management". Market phrase: "SG and Greater China".
- Do not claim Amber manages client money (regulatory risk). "Built its guardrails on her own portfolio first" is fine.
- Figures in use: 70% of heirs leave within a few years; OCBC S$1B a year on AI; 70%+ of SG/HK EAMs under US$1B; 300+ vs 80 households per adviser; 3 workshops and 125+ attendees. Keep the 70% heir source to be named before public use.

## Files
- `index.html`: the whole site (inline CSS/JS). Content between `<!-- ARTIFACT-START -->` and `<!-- ARTIFACT-END -->` is what gets published to the claude.ai artifact; the `<head>` fonts, title and skeleton are added around it when publishing.
- `assets/dashboard.webp` with source `assets/dashboard-source.html` (fictional sample data, labelled as such).
- `marketing/linkedin/`: three 3-slide carousels (posted from the Adaptive Intelligence company page), captions, `render.sh`.
- Artifact preview: https://claude.ai/artifact/MBwanQRwnGpx6GPbgyoQ7Z. Pitch deck: https://claude.ai/artifact/MfBUNWH5X88PvG7cM1s6x2.

## Design
Dark, Harvey-style: bg `#0B0B0A`, cream `#F1EFEA`, teal `#1F9E86`; Newsreader (headings) and Geist (body). No philosophy section. Primary CTA everywhere: "Request a demo".

## Forms and integrations
- Formspree endpoint: `https://formspree.io/f/mbglyvbn` (demo form and chatbot both post here; chatbot tags `source=chatbot`, `visitor_type`, `intent`).
- Booking: https://calendly.com/amberlg/20-min. Contact: amber@adptv.xyz. LinkedIn: https://www.linkedin.com/in/amberliang/.
- The claude.ai preview blocks outbound requests, so form and chatbot sends only work on a hosted page. Formspree's reCAPTCHA setting may also block background submissions.

## Chatbot ("Ask Charlie")
Rule-based, in `index.html`. Opening menu: Firm leaders, Boutique managers, Private banking, IFAs, Just exploring. Each has a tailored pitch; shared menus cover modules, compliance, the 14-day sandbox, RM workshop, founder and pricing (no public pricing). Capture: name, email, firm, role; the IFA design-partner path also asks AUM range and market coverage. Ends in a summary, consent line and send; on failure it offers a prefilled email. Full-screen sheet on phones. The original chatbot memo was not found in Drive or disk; replace this section if it differs.

## Open items
- Name the source for the 70% heir stat.
- Amber to approve the founder pull quote ("I've seen what a bank-sized AI budget buys...").
- Confirm the "Governed" / MAS governance claim can be backed.
- Test a real Formspree submission from a hosted page (GitHub Pages not yet enabled).
