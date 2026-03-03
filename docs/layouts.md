---
layout: docs
title: Layouts
description: Learn about the five available layouts and when to use each one
category: Documentation
order: 3
version: "1.0.0"
date: 2026-03-02
toc: true
breadcrumbs:
  - title: Home
    url: /
  - title: Documentation
    url: /docs/
  - title: Layouts
    url: /docs/layouts/
previous_doc:
  title: Configuration
  url: /docs/configuration/
next_doc:
  title: Components
  url: /docs/components/
---

## Available Layouts

The Neubrutalist theme includes 5 powerful layouts for different content types.

## 1. Default Layout

The base layout with header and footer.

### Usage

```markdown
---
layout: default
title: Your Page
---

Your content here...
```

### Features

- Site header with navigation
- Main content area
- Site footer
- Responsive design

### When to Use

- Custom page layouts
- Landing pages
- Special sections

## 2. Home Layout

Homepage with hero section and blog post listing.

### Usage

```markdown
---
layout: home
---
```

### Features

- **Hero Section** - Bold welcome message with animated accent
- **Post Listing** - Automatic display of recent blog posts
- **Responsive Grid** - Mobile-friendly layout

### Customization

Edit the hero content in `_layouts/home.html`:

```html
<div class="hero-section">
  <h1 class="hero-title">YOUR TITLE</h1>
  <p class="hero-subtitle">Your subtitle</p>
</div>
```

## 3. Page Layout

Simple content pages.

### Usage

```markdown
---
layout: page
title: About
permalink: /about/
---

Your content here...
```

### Features

- Clean content area
- Page title header
- Border and shadow styling
- Rounded corners

### When to Use

- About pages
- Contact pages
- Simple content pages
- Portfolio pages

### Example

```markdown
---
layout: page
title: About Me
permalink: /about/
---

## Who I Am

I'm a developer who loves bold design...

## What I Do

I create awesome websites with...
```

## 4. Post Layout

Blog post layout with metadata.

### Usage

```markdown
---
layout: post
title: "My Blog Post"
date: 2026-03-02
categories: blog design
---

Your post content...
```

### Features

- Post title and date badge
- Category display
- Content styling
- Author information
- Share buttons (optional)

### Post Front Matter

```yaml
---
layout: post
title: "Your Post Title"
date: 2026-03-02
categories: [category1, category2]
author: Your Name
excerpt: "Brief description for post listing"
---
```

### When to Use

- Blog posts
- Articles
- Tutorials
- News updates

## 5. Docs Layout

Technical documentation with sidebar.

### Usage

```markdown
---
layout: docs
title: Getting Started
category: Documentation
order: 1
---

Your documentation content...
```

### Features

- **Sidebar Navigation** - Auto-generated or custom
- **Table of Contents** - From H2/H3 headings
- **Breadcrumbs** - Navigation trail
- **Previous/Next** - Page navigation
- **Version Badges** - Display version info
- **Edit Links** - GitHub integration
- **Callout Boxes** - Notes, warnings, tips

### Docs Front Matter

```yaml
---
layout: docs
title: Page Title
description: Brief description
category: Documentation    # Groups related pages
order: 1                   # Sidebar order
version: "1.0.0"          # Optional
date: 2026-03-02          # Optional
toc: true                 # Enable TOC
---
```

### Navigation Options

**Auto-Generated:**

```markdown
# All pages with same category appear in sidebar
---
category: Documentation
order: 1
---
```

**Custom Navigation:**

```yaml
---
docs_nav:
  - title: Getting Started
    url: /docs/start/
  - title: Advanced
    url: /docs/advanced/
    children:
      - title: API
        url: /docs/api/
---
```

### When to Use

- API documentation
- User guides
- Technical tutorials
- Knowledge base
- Wiki-style content

## Layout Comparison

| Layout | Header | Sidebar | TOC | Posts | Best For |
|--------|--------|---------|-----|-------|----------|
| default | ✅ | ❌ | ❌ | ❌ | Base template |
| home | ✅ | ❌ | ❌ | ✅ | Homepage |
| page | ✅ | ❌ | ❌ | ❌ | Simple pages |
| post | ✅ | ❌ | ❌ | ❌ | Blog posts |
| docs | ✅ | ✅ | ✅ | ❌ | Documentation |

## Overriding Layouts

Create custom layouts in `_layouts/`:

```
your-site/
└── _layouts/
    └── custom.html
```

Example custom layout:

```html
---
layout: default
---

<div class="custom-container">
  <aside class="custom-sidebar">
    <!-- Your sidebar -->
  </aside>
  
  <main class="custom-content">
    {{ content }}
  </main>
</div>
```

## Layout Styling

All layouts use the neubrutalist design:

- **4px borders** with rounded corners
- **8px hard shadows**
- **Bold typography**
- **Bright colors**
- **High contrast**

### Common Elements

```css
/* Borders */
border: 4px solid var(--color-border);
border-radius: 12px;

/* Shadows */
box-shadow: 8px 8px 0 var(--color-border);

/* Colors */
background-color: var(--color-primary);
```

## Best Practices

### Homepage

- Use `home` layout for main landing page
- Keep hero text concise and bold
- Let blog posts auto-populate

### Content Pages

- Use `page` layout for standalone pages
- Add descriptive titles
- Use headings to structure content

### Blog Posts

- Use `post` layout for all blog content
- Follow naming: `YYYY-MM-DD-title.md`
- Add categories for organization
- Include excerpt for listings

### Documentation

- Use `docs` layout for technical content
- Group by category
- Use order numbers for sequence
- Add breadcrumbs for navigation
- Link pages with previous/next

<div class="tip">
💡 Tip: Preview layouts locally before deploying to see how they look!
</div>

## Next Steps

- Learn about [Components](/docs/components/) like callouts and tables
- Explore [Deployment](/docs/deployment/) options
- Check out example pages in the theme

<div class="note">
📘 All layouts are fully responsive and work great on mobile devices!
</div>
