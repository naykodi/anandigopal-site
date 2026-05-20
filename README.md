# Anandi Gopal Playschool — Website Setup Guide

## Folder structure
```
anandigopal/
├── index.html          ← the website
├── images/             ← download images here (run script below)
│   ├── logo.jpg
│   ├── hero-kids.jpg
│   ├── kids-creative.jpg
│   ├── kids-engineering.jpg
│   ├── holi-kids.jpg
│   ├── fancy-dress.jpg
│   ├── surekha-naykodi.jpg
│   ├── bhaskar-naykodi.jpg
│   ├── green-day.jpg
│   ├── diwali.jpg
│   ├── girl-holi.jpg
│   ├── dandiya.jpg
│   └── graduation.jpg
└── download-images.sh  ← run this once before cancelling WordPress
```

---

## Step 1 — Download images from WordPress (do this BEFORE cancelling WordPress)

Open Terminal and run:
```bash
bash download-images.sh
```

This pulls all 13 images from the existing WordPress site into the `images/` folder.
Once done, the website has no dependency on WordPress whatsoever.

---

## Step 2 — Set up the contact form (Formspree)

1. Go to https://formspree.io and create a free account
2. Create a new form and set the notification email to **truptibnaykodi@gmail.com**
3. Copy your Form ID (looks like `xabcdefg`)
4. In `index.html`, find this line:
   ```
   action="https://formspree.io/f/YOUR_FORM_ID"
   ```
   Replace `YOUR_FORM_ID` with your actual ID.

**To also notify a second email (yours):**
In Formspree dashboard → Form Settings → Notifications → add a second email.

Free tier = 50 submissions/month. More than enough for a preschool.

---

## Step 3 — Host for free on Netlify (recommended)

1. Go to https://netlify.com → "Add new site" → "Deploy manually"
2. Drag and drop the entire `anandigopal/` folder
3. Netlify gives you a live URL immediately (e.g. `anandigopal.netlify.app`)
4. Go to "Domain settings" → add your custom domain from Squarespace
5. Follow Netlify's DNS instructions (update nameservers in Squarespace)

Total hosting cost: $0/month.

---

## Should you use Google Forms?

**Yes, but not embedded on the website.** Here's the right way to use it:

- Create a Google Form with the same fields (parent name, phone, child age, program)
- Share the Google Sheet responses with both truptibnaykodi@gmail.com and your own email
- Use this form link in WhatsApp parent groups, pamphlets, and local Facebook posts
- The Formspree form on the website handles online enquiries; the Google Form handles everything else

The Google Form link can also go in the footer of the website as a fallback:
```
<a href="YOUR_GOOGLE_FORM_URL">Prefer Google Form? Click here</a>
```

---

## Updating the website later

The whole site is one HTML file. To change text, photos, or phone numbers, open `index.html` in any text editor and search for what you want to change. No WordPress login, no plugins, no monthly bill.
