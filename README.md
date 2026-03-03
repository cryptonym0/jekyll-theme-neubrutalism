# Neubrutalist Jekyll Theme

A straightforward Jekyll theme that applies neubrutalist design principles in a clean, maintainable way. The goal is to provide a functional, high‑contrast interface with clearly defined structure—useful for documentation, internal notes, and personal sites where clarity is more important than polish.

## What Is Neubrutalism?

Neubrutalism (Neo‑Brutalism) is a design approach that emphasizes visible structure and high‑contrast elements. Instead of minimizing visual components, it highlights them:

- Thick borders (4px+)
- Hard, offset shadows with no blur
- Saturated, contrasting colors
- Strong typography
- Intentional, “unhidden” UI elements

The result is a UI that is easy to read, easy to navigate, and visually explicit.

## Features

- **Clear, explicit visual design** using bold borders and shadows
- **Customizable color system** built around simple CSS variables
- **Responsive layouts** that work across devices
- **GitHub Pages compatible** with no additional setup
- **Space Grotesk and Space Mono** for a clean, technical type system
- **Pure CSS** with no frameworks or unnecessary dependencies
- **Built‑in layouts** for posts and pages
- **Rounded corner option** for users who prefer softened edges

## Color Palette (Default)

```css
--color-primary: #FF006E;
--color-secondary: #00F5FF;
--color-accent: #FFBE0B;
--color-success: #06FFA5;
--color-border: #000000;
```


## Installation

### Option 1: GitHub Pages (Easiest)

Add to your `_config.yml`:

```yaml
remote_theme: cryptonym0/jekyll-theme-neubrutalism
plugins:
  - jekyll-feed
  - jekyll-seo-tag
```

### Option 2: As a Gem

Add to your `Gemfile`:

```ruby
gem "jekyll-theme-neubrutalism"
```

And to your `_config.yml`:

```yaml
theme: jekyll-theme-neubrutalism
```

Then run: `bundle install`


## 📖 Documentation

- **[Installation Guide](INSTALLATION.md)** - Detailed setup instructions
- **[Publishing Guide](PUBLISHING.md)** - How to distribute this theme
- **[Changelog](CHANGELOG.md)** - Version history
- **[Example Site](EXAMPLE_SITE.md)** - Example implementation
---

## Local Development

```bash
# Install dependencies
bundle install

# Start Jekyll server
bundle exec jekyll serve

# Open http://localhost:4000
```

## 🎨 Customization

### Change Colors

Edit `assets/css/style.css`:

```css
:root {
  --color-primary: #YOUR_COLOR;
  --color-secondary: #YOUR_COLOR;
  --color-accent: #YOUR_COLOR;
}
```

### Adjust Border Thickness

```css
:root {
  --border-width: 6px; /* Make it even BOLDER */
}
```

### Modify Shadows

```css
:root {
  --shadow: 12px 12px 0 #000000; /* Bigger shadows */
}
```

## 📝 Creating Content

### Add a New Post

Create a file in `_posts/`:

```markdown
---
layout: post
title: "Your Bold Title"
date: 2026-03-02 12:00:00 -0800
categories: your categories
---

Your content here...
```

### Add a New Page

Create a `.markdown` or `.html` file:

```markdown
---
layout: page
title: "Page Title"
permalink: /your-page/
---

Your content here...
```

## 🛠️ Built With

- Jekyll 4.3+
- Pure CSS (no frameworks)
- Google Fonts (Space Grotesk & Space Mono)

## 📄 License

Free to use and customize. Make it BOLD!

---
