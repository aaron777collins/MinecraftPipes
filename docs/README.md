# Minecraft Pipes Documentation

This directory contains the beautiful documentation website for the Minecraft Pipes System.

## 🚀 Quick Start

### Prerequisites

- **Ruby** (2.6 or higher)
- **Bundler** (`gem install bundler`)

### Local Development

1. **Install dependencies:**
   ```bash
   bundle install
   ```

2. **Serve locally:**
   ```bash
   # Using the provided script
   ./serve.sh
   
   # Or manually
   bundle exec jekyll serve --livereload
   ```

3. **View the site:**
   Open [http://localhost:4000](http://localhost:4000) in your browser

## 📁 Structure

```
docs/
├── _config.yml          # Jekyll configuration
├── _layouts/            # HTML layouts
│   └── default.html     # Main layout template
├── _docs/               # Documentation pages
│   ├── installation.md
│   ├── basic-usage.md
│   ├── advanced-features.md
│   ├── configuration.md
│   ├── troubleshooting.md
│   └── api-reference.md
├── assets/              # Static assets
│   ├── css/
│   │   └── custom.css   # Custom styling
│   └── images/
│       └── favicon.svg  # Site favicon
├── index.md             # Homepage
├── Gemfile              # Ruby dependencies
└── serve.sh             # Development server script
```

## 🎨 Customization

### Styling

The site uses a custom CSS file (`assets/css/custom.css`) with:
- Modern design with CSS Grid and Flexbox
- Responsive layout for all devices
- Dark mode support
- Beautiful animations and transitions
- Minecraft-themed elements

### Adding Pages

1. Create a new `.md` file in `_docs/`
2. Add front matter:
   ```yaml
   ---
   layout: default
   title: Your Page Title
   description: Brief description for SEO
   ---
   ```
3. Add the page to navigation in `_config.yml`

### Configuration

Edit `_config.yml` to customize:
- Site title and description
- Navigation menu
- Social links
- Theme settings
- Custom CSS and JavaScript

## 🚀 Deployment

### GitHub Pages

The site is configured for GitHub Pages deployment:

1. Push to the `main` branch
2. GitHub Actions will automatically build and deploy
3. Site will be available at `https://minecraft-pipes.github.io`

### Manual Deployment

```bash
# Build the site
bundle exec jekyll build

# The built site will be in `_site/`
# Upload contents to your web server
```

## 🔧 Development

### Live Reload

The development server includes live reload for automatic browser updates when files change.

### Building for Production

```bash
# Build optimized version
JEKYLL_ENV=production bundle exec jekyll build
```

### Testing

```bash
# Check for broken links
bundle exec htmlproofer _site

# Validate HTML
bundle exec jekyll build --profile
```

## 📝 Contributing

When contributing to the documentation:

1. **Follow the existing style** and structure
2. **Use proper front matter** for all pages
3. **Test locally** before submitting changes
4. **Update navigation** if adding new pages
5. **Check links** and ensure they work

## 🎯 Features

- **Responsive Design** - Works on all devices
- **Dark Mode** - Automatic dark mode support
- **Search** - Built-in search functionality
- **Syntax Highlighting** - Code blocks with Prism.js
- **Fast Loading** - Optimized for performance
- **SEO Optimized** - Proper meta tags and structure
- **Accessibility** - WCAG compliant design

## 🆘 Troubleshooting

### Common Issues

**"bundle: command not found"**
- Install Ruby and Bundler: `gem install bundler`

**"Permission denied" on serve.sh**
- Make executable: `chmod +x serve.sh`

**Site not updating**
- Clear cache: `bundle exec jekyll clean`
- Restart server: `Ctrl+C` then `./serve.sh`

**Build errors**
- Check Ruby version: `ruby --version`
- Update dependencies: `bundle update`

## 📚 Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages](https://pages.github.com/)
- [Liquid Template Language](https://shopify.github.io/liquid/)
- [CSS Grid Guide](https://css-tricks.com/snippets/css/complete-guide-grid/)

---

**Happy documenting! 🎉**
