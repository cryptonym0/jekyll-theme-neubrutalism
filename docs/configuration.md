---
layout: docs
title: Configuration
description: Customize colors, settings, and behavior of your theme
category: Documentation
order: 2
version: "1.0.0"
date: 2026-03-02
toc: true
breadcrumbs:
  - title: Home
    url: /
  - title: Documentation
    url: /docs/
  - title: Configuration
    url: /docs/configuration/
previous_doc:
  title: Getting Started
  url: /docs/getting-started/
next_doc:
  title: Layouts
  url: /docs/layouts/
---

## Site Settings

Configure your site in `_config.yml`:

```yaml
# Basic Information
title: Your Site Name
description: Your site description
url: "https://yourdomain.com"
baseurl: ""

# Social Links
twitter_username: yourusername
github_username: yourusername

# Theme
theme: jekyll-theme-neubrutalism
# OR for GitHub Pages:
# remote_theme: cryptonym0/jekyll-theme-neubrutalism
```

## Color Customization

The theme uses CSS variables for easy color customization.

### Default Colors

```css
:root {
  --color-primary: #FF006E;    /* Hot Pink */
  --color-secondary: #00F5FF;  /* Cyan */
  --color-accent: #FFBE0B;     /* Yellow */
  --color-success: #06FFA5;    /* Mint Green */
  --color-border: #000000;     /* Black */
  --color-bg: #FAFAFA;         /* Off-white */
  --color-text: #000000;       /* Black */
}
```

### Custom Colors

Create `assets/css/custom.css`:

```css
:root {
  /* Override primary color */
  --color-primary: #FF1493;
  
  /* Override secondary color */
  --color-secondary: #00CED1;
  
  /* Override accent color */
  --color-accent: #FFD700;
}
```

Then add to your `_config.yml`:

```yaml
# Custom CSS
custom_css: /assets/css/custom.css
```

<div class="tip">
💡 You can preview color changes instantly with browser dev tools!
</div>

## Border and Shadow Customization

Adjust the boldness of the neubrutalist design:

```css
:root {
  /* Thicker borders */
  --border-width: 6px;
  
  /* Bigger shadows */
  --shadow: 12px 12px 0 #000000;
  --shadow-hover: 16px 16px 0 #000000;
}
```

## Typography

The theme uses these fonts:

- **Headings & Body**: Space Grotesk
- **Code**: Space Mono

### Custom Fonts

Override fonts in your custom CSS:

```css
body {
  font-family: 'Your Font', -apple-system, sans-serif;
}

code {
  font-family: 'Your Mono Font', monospace;
}
```

<div class="note">
📘 Remember to load custom fonts in your HTML head section.
</div>

## Navigation

### Header Navigation

Edit `_layouts/default.html` to customize navigation links:

```html
<nav class="site-nav">
  <a href="{{ '/' | relative_url }}">HOME</a>
  <a href="{{ '/docs/' | relative_url }}">DOCS</a>
  <a href="{{ '/about/' | relative_url }}">ABOUT</a>
  <a href="{{ '/blog/' | relative_url }}">BLOG</a>
</nav>
```

### Documentation Sidebar

Control sidebar navigation with front matter:

```yaml
# Auto-generate from category
category: Documentation
order: 1

# Or use custom navigation
docs_nav:
  - title: Getting Started
    url: /docs/getting-started/
  - title: Advanced
    url: /docs/advanced/
    children:
      - title: API
        url: /docs/api/
```

## Plugins

Recommended plugins in `_config.yml`:

```yaml
plugins:
  - jekyll-feed          # RSS feed
  - jekyll-seo-tag       # SEO optimization
  - jekyll-sitemap       # XML sitemap
  - jekyll-paginate      # Pagination
```

Install plugins in your `Gemfile`:

```ruby
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-seo-tag", "~> 2.8"
  gem "jekyll-sitemap", "~> 1.4"
  gem "jekyll-paginate", "~> 1.1"
end
```

## GitHub Integration

### Edit Links

Enable "Edit on GitHub" links in documentation:

```yaml
github_repo: "https://github.com/yourusername/your-repo"
```

### GitHub Pages

Configure for GitHub Pages deployment:

```yaml
# Use remote_theme instead of theme
remote_theme: cryptonym0/jekyll-theme-neubrutalism

# Optional: specify branch/tag
remote_theme: cryptonym0/jekyll-theme-neubrutalism@v1.0.0
```

## Build Settings

Optimize your build:

```yaml
# Markdown processor
markdown: kramdown
kramdown:
  input: GFM
  syntax_highlighter: rouge

# Permalink style
permalink: /:categories/:year/:month/:day/:title/

# Exclude files
exclude:
  - Gemfile
  - Gemfile.lock
  - node_modules
  - vendor
  - README.md
```

## Performance

### Optimize Images

```yaml
# Image optimization settings
image_compression: true
responsive_images: true
```

### Caching

Enable caching in production:

```yaml
# Production settings
environment: production
cache_dir: .jekyll-cache
```

## SEO Configuration

Optimize for search engines:

```yaml
# SEO settings
title: Your Site Title
description: >
  Your site description for search engines.
  Can be multiple lines.

author: Your Name
lang: en_US

# Social
twitter:
  username: yourusername
  card: summary_large_image

social:
  name: Your Name
  links:
    - https://twitter.com/yourusername
    - https://github.com/yourusername
```

## Analytics

Add analytics in `_config.yml`:

```yaml
# Google Analytics
google_analytics: UA-XXXXXXXXX-X

# Or GA4
google_analytics: G-XXXXXXXXXX
```

Then add to `_layouts/default.html`:

```html
{% if site.google_analytics %}
  <!-- Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id={{ site.google_analytics }}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', '{{ site.google_analytics }}');
  </script>
{% endif %}
```

## Development vs Production

Use environment-specific settings:

```yaml
# _config.yml (production)
url: "https://yoursite.com"

# _config_dev.yml (development)
url: "http://localhost:4000"
```

Run with specific config:

```bash
# Development
bundle exec jekyll serve --config _config.yml,_config_dev.yml

# Production
bundle exec jekyll build
```

<div class="warning">
⚠️ Never commit sensitive data like API keys to your repository!
</div>

## Next Steps

- Explore [Layouts](/docs/layouts/) to understand page templates
- Learn about [Components](/docs/components/) for callouts and styling
- Read about [Deployment](/docs/deployment/) options

<div class="tip">
💡 Back up your _config.yml before making major changes!
</div>
