---
layout: docs
title: Getting Started
description: Learn how to install and configure the Neubrutalist Jekyll theme
category: Documentation
order: 1
version: "1.0.0"
date: 2026-03-02
toc: true
breadcrumbs:
  - title: Home
    url: /
  - title: Documentation
    url: /docs/
  - title: Getting Started
    url: /docs/getting-started/
previous_doc:
  title: Documentation Home
  url: /docs/
next_doc:
  title: Configuration
  url: /docs/configuration/
---

## Installation

The Neubrutalist theme can be installed in three different ways, depending on your needs.

### Method 1: GitHub Pages (Remote Theme)

This is the **easiest method** for GitHub Pages users.

1. Add to your `_config.yml`:

```yaml
remote_theme: cryptonym0/jekyll-theme-neubrutalism
plugins:
  - jekyll-feed
  - jekyll-seo-tag
```

2. Create your `index.md`:

```markdown
---
layout: home
---
```

3. Push to GitHub and enable GitHub Pages in settings

<div class="tip">
💡 This method automatically updates when the theme repository changes!
</div>

### Method 2: Ruby Gem

Install as a Ruby gem for traditional Jekyll sites.

1. Add to your `Gemfile`:

```ruby
gem "jekyll-theme-neubrutalism"
```

2. Update `_config.yml`:

```yaml
theme: jekyll-theme-neubrutalism
```

3. Install:

```bash
bundle install
```

### Method 3: Direct Copy

Copy the theme files directly into your project for maximum customization.

1. Download or clone the theme repository
2. Copy `_layouts/` and `assets/` to your site
3. Update your `_config.yml` configuration

<div class="warning">
⚠️ This method requires manual updates when the theme changes.
</div>

## Basic Configuration

After installation, configure your site in `_config.yml`:

```yaml
title: Your Site Title
description: Your site description
url: "https://yourdomain.com"
baseurl: ""

# Optional: Enable GitHub edit links
github_repo: "https://github.com/yourusername/your-repo"

# Build settings
markdown: kramdown
plugins:
  - jekyll-feed
  - jekyll-seo-tag
```

## Creating Content

### Homepage

Create `index.md` with the home layout:

```markdown
---
layout: home
---
```

The home layout includes:
- Hero section with bold title
- Automatic blog post listing
- Responsive design

### Pages

Create content pages:

```markdown
---
layout: page
title: About
permalink: /about/
---

Your content here...
```

### Blog Posts

Create posts in `_posts/`:

```markdown
---
layout: post
title: "Your Post Title"
date: 2026-03-02
categories: blog design
---

Your post content...
```

Posts must follow the naming convention: `YYYY-MM-DD-title.md`

### Documentation

Create docs in `docs/` folder:

```markdown
---
layout: docs
title: Your Doc Page
category: Documentation
order: 2
---

Your documentation content...
```

## Testing Locally

Run your site locally to preview changes:

```bash
# Install dependencies
bundle install

# Start Jekyll server
bundle exec jekyll serve

# Open browser
# Visit http://localhost:4000
```

<div class="note">
📘 The server will auto-reload when you make changes to files.
</div>

## Project Structure

Your site should have this structure:

```
your-site/
├── _config.yml          # Site configuration
├── index.md             # Homepage
├── about.md             # About page
│
├── _posts/              # Blog posts
│   └── 2026-03-02-post.md
│
├── docs/                # Documentation
│   ├── index.md
│   └── getting-started.md
│
├── assets/
│   └── images/
│
└── Gemfile              # Ruby dependencies
```

## Next Steps

Now that your theme is installed, learn how to:

- [Configure](/docs/configuration/) colors and settings
- [Use layouts](/docs/layouts/) for different page types  
- [Add components](/docs/components/) like callouts and tables
- [Deploy](/docs/deployment/) to GitHub Pages or other hosts

<div class="tip">
💡 Tip: Check out the example pages included with the theme for inspiration!
</div>

## Troubleshooting

### Theme not loading

- Verify `remote_theme` or `theme` is set correctly
- Check that all required plugins are installed
- Run `bundle install` again

### Styles not applying

- Clear your browser cache
- Restart the Jekyll server
- Check that `assets/css/style.css` exists

### Build errors

- Check Jekyll version compatibility (4.3+)
- Verify all required gems are installed
- Review error messages in terminal

<div class="note">
📘 Still having issues? Open an issue on GitHub with your error message and configuration.
</div>
