# 5 Words - Public Website

Official website for the **5 Words** app, hosted on GitHub Pages.

## 🌐 Site URL

**Production:** https://cyprientertrais.github.io/5words-public/  
_(or your custom domain if configured)_

## 📁 Site Structure

```
5words-public/
├── index.html              # Home page
├── contact.html            # Contact page
├── privacy.html            # Privacy policy
├── styles.css              # CSS styles
├── script.js               # JavaScript scripts
├── CONTACT.md              # Contact (Markdown version)
└── POLITIQUE_DE_CONFIDENTIALITE_APPLE.md  # Privacy policy (Markdown version)
```

## 🚀 Deploy to GitHub Pages

### 1. Create a New Repository

```bash
cd /Users/cyprientertrais/Documents/perso/jeu5mots/5words-public
git init
git add .
git commit -m "Initial commit - 5 Words website"
```

### 2. Create the Repository on GitHub

1. Go to https://github.com/new
2. Repository name: `5words-public` or `5words.github.io`
3. Public or Private (GitHub Pages works with both)
4. Do not initialize with a README

### 3. Push the Code

```bash
git remote add origin https://github.com/YOUR-USERNAME/5words-public.git
git branch -M main
git push -u origin main
```

### 4. Enable GitHub Pages

1. Go to the repository Settings
2. "Pages" section in the left menu
3. Source: Deploy from a branch
4. Branch: `main` / `root`
5. Click "Save"

### 5. Verify the Deployment

Your site will be available at:
- `https://YOUR-USERNAME.github.io/5words-public/`

Deployment can take a few minutes.

## 🎨 Customization

### Edit Colors

In `styles.css`, update the CSS variables:

```css
:root {
    --primary-color: #6366f1;
    --secondary-color: #8b5cf6;
    --accent-color: #ec4899;
    /* ... */
}
```

### Edit Content

- **Home page:** `index.html`
- **Contact page:** `contact.html`
- **Privacy policy:** `privacy.html`

### Add Images

Create an `images/` folder and add your images:

```bash
mkdir images
# Add your images to this folder
```

Then reference them in HTML:
```html
<img src="images/logo.png" alt="5 Words logo">
```

## 📱 Features

- ✅ Responsive design (mobile, tablet, desktop)
- ✅ Smooth scrolling navigation
- ✅ CSS animations
- ✅ Multilingual support (FR/EN)
- ✅ Contact form
- ✅ Full privacy policy
- ✅ Mobile hamburger menu
- ✅ SEO optimized

## 🔗 Custom Domain (Optional)

To use a custom domain (e.g. `5words.app`):

1. Create a `CNAME` file at the root:
   ```
   5words.app
   ```

2. Configure your DNS:
   ```
   Type: A
   Host: @
   Value: 185.199.108.153
   Value: 185.199.109.153
   Value: 185.199.110.153
   Value: 185.199.111.153
   
   Type: CNAME
   Host: www
   Value: YOUR-USERNAME.github.io
   ```

3. Wait for DNS propagation (a few hours)

## 🛠️ Local Development

To test locally:

```bash
# Option 1: Python
python3 -m http.server 8000

# Option 2: Node.js
npx http-server

# Option 3: VS Code Live Server
# Right-click index.html > Open with Live Server
```

Then open: http://localhost:8000

## 📊 Analytics (Optional)

To add Google Analytics, insert before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 📧 Contact

For any questions about the website:

**Email:** cypter@icloud.com

## 📄 License

© 2026 5 Words. All rights reserved.

## 🔄 Updates

To update the site:

```bash
git add .
git commit -m "Update: describe your changes"
git push
```

GitHub Pages will update automatically within a few minutes.

## ✅ Pre-Deployment Checklist

- [ ] Check all links
- [ ] Test on mobile
- [ ] Verify the contact email
- [ ] Optimize images
- [ ] Verify SEO metadata
- [ ] Test the contact form
- [ ] Verify the privacy policy
- [ ] Verify App Store links
- [ ] Test on different browsers
- [ ] Check accessibility

## 🎯 Next Steps

- [ ] Add a blog
- [ ] Add an FAQ section
- [ ] Add app screenshots
- [ ] Add user testimonials
- [ ] Implement a newsletter system
- [ ] Add full multilingual support
