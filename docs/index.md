---
layout: home
title: "Minecraft Pipes - Advanced Item Transportation System"
description: "Transform your Minecraft world with a comprehensive pipe system for item transportation. Inspired by classic Tekkit pipes but implemented as a modern datapack."
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/header-bg.jpg
  actions:
    - label: "Get Started"
      url: "/docs/installation/"
      icon: "fas fa-download"
      class: "btn--primary"
    - label: "View on GitHub"
      url: "https://github.com/minecraft-pipes"
      icon: "fab fa-github"
      class: "btn--secondary"
excerpt: "Advanced pipe system for item transportation in Minecraft - inspired by classic Tekkit pipes but implemented as a modern datapack with enhanced features and better performance."
---

<div class="feature__wrapper">
  <div class="feature__item">
    <div class="archive__item">
      <div class="archive__item-body">
        <div class="archive__item-excerpt">
          <h2 class="archive__item-title">
            <i class="fas fa-cogs"></i> Visual Pipe System
          </h2>
          <p>See-through pipes that connect and transport items with smooth animations. Watch your items flow through beautiful, transparent pipe networks.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="feature__item">
    <div class="archive__item">
      <div class="archive__item-body">
        <div class="archive__item-excerpt">
          <h2 class="archive__item-title">
            <i class="fas fa-bolt"></i> Redstone Control
          </h2>
          <p>Power your inlet pipes with redstone to control item extraction. Create complex automation systems with signal strength control.</p>
        </div>
      </div>
    </div>
  </div>

  <div class="feature__item">
    <div class="archive__item">
      <div class="archive__item-body">
        <div class="archive__item-excerpt">
          <h2 class="archive__item-title">
            <i class="fas fa-hammer"></i> Affordable Crafting
          </h2>
          <p>Uses common materials like glass, iron, and redstone. Multiple pipe types with different capabilities and progression system.</p>
        </div>
      </div>
    </div>
  </div>
</div>

## 🚀 What is Minecraft Pipes?

**Minecraft Pipes** is a comprehensive datapack that brings advanced item transportation to your Minecraft world. Inspired by the classic Tekkit pipes but implemented as a modern datapack, it provides a complete solution for moving items between chests with visual feedback and redstone control.

### Key Features

<div class="feature-grid">
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-pipe"></i>
    </div>
    <h3>Visual Pipe System</h3>
    <p>Transparent, see-through pipes that automatically connect and transport items with smooth animations.</p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-exchange-alt"></i>
    </div>
    <h3>Item Transportation</h3>
    <p>Items travel through connected pipes with visual rendering, automatic routing, and multiple item support.</p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-redstone"></i>
    </div>
    <h3>Redstone Control</h3>
    <p>Power inlet pipes with redstone to control item extraction. Signal strength affects extraction speed.</p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-boxes"></i>
    </div>
    <h3>Chest Integration</h3>
    <p>Automatic detection of adjacent chests for input and output. No complex setup required.</p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-tools"></i>
    </div>
    <h3>Multiple Pipe Types</h3>
    <p>Basic pipes, inlet pipes, outlet pipes, and junctions for complex network designs.</p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-rocket"></i>
    </div>
    <h3>Performance Optimized</h3>
    <p>Efficient processing for large pipe networks with minimal impact on server performance.</p>
  </div>
</div>

## 🎮 Quick Start

### 1. Install the Datapack
```bash
# Copy the dist folder to your world's datapacks directory
# Or download the latest release from GitHub
```

### 2. Load in Game
```bash
/reload
```

### 3. Test the System
```bash
/function pipes:test_help
/function pipes:test_setup
```

### 4. Start Building
```bash
/function pipes:create_pipe          # Basic pipe
/function pipes:create_inlet_pipe    # Inlet pipe
/function pipes:create_outlet_pipe   # Outlet pipe
```

## 📦 Pipe Types

<div class="pipe-types">
  <div class="pipe-type">
    <div class="pipe-icon basic"></div>
    <h3>Basic Pipe</h3>
    <p>Transparent glass pipes that connect and transport items between other pipes.</p>
    <div class="recipe">
      <strong>Recipe:</strong> 3 glass blocks in a vertical line
    </div>
  </div>

  <div class="pipe-type">
    <div class="pipe-icon inlet"></div>
    <h3>Inlet Pipe</h3>
    <p>Red-tinted pipes that extract items from adjacent chests when powered with redstone.</p>
    <div class="recipe">
      <strong>Recipe:</strong> Glass + Redstone + Iron Ingot
    </div>
  </div>

  <div class="pipe-type">
    <div class="pipe-icon outlet"></div>
    <h3>Outlet Pipe</h3>
    <p>Blue-tinted pipes that deposit items into adjacent chests automatically.</p>
    <div class="recipe">
      <strong>Recipe:</strong> Glass + Hopper + Iron Ingot
    </div>
  </div>

  <div class="pipe-type">
    <div class="pipe-icon junction"></div>
    <h3>Pipe Junction</h3>
    <p>Yellow-tinted pipes that allow branching and complex network designs.</p>
    <div class="recipe">
      <strong>Recipe:</strong> Glass + Redstone in cross pattern
    </div>
  </div>
</div>

## 🔧 Technical Specifications

| Feature | Specification |
|---------|---------------|
| **Minecraft Version** | 1.21+ (Pack Format 82) |
| **Performance** | Optimized for large networks |
| **Multiplayer** | Full server support |
| **Redstone Control** | Signal strength 1-15 |
| **Item Capacity** | Up to 4 items per pipe |
| **Processing** | Every 2-4 ticks |
| **Memory Usage** | Minimal impact |

## 🎯 Use Cases

### Basic Item Transport
Connect chests with simple pipe networks for basic item movement.

### Automated Sorting
Use multiple outlet pipes to sort items into different chests.

### Redstone Automation
Control item flow with redstone signals for complex automation.

### Factory Systems
Build large-scale item processing and distribution networks.

### Storage Systems
Create centralized storage with automatic item distribution.

## 🌟 Why Choose Minecraft Pipes?

### ✅ **Production Ready**
- Fully functional and tested
- Comprehensive documentation
- Active development and support

### ✅ **Easy to Use**
- Simple installation process
- Intuitive pipe placement
- Automatic connection detection

### ✅ **Highly Customizable**
- Configurable performance settings
- Multiple pipe types
- Extensible architecture

### ✅ **Performance Optimized**
- Efficient processing algorithms
- Minimal server impact
- Scalable for large networks

### ✅ **Modern Implementation**
- Built with MDL (Minecraft Datapack Language)
- Pack Format 82 compatibility
- Future-proof architecture

## 📚 Documentation

<div class="docs-grid">
  <a href="/docs/installation/" class="docs-card">
    <i class="fas fa-download"></i>
    <h3>Installation Guide</h3>
    <p>Step-by-step installation instructions for single player and servers.</p>
  </a>

  <a href="/docs/features/" class="docs-card">
    <i class="fas fa-star"></i>
    <h3>Features Overview</h3>
    <p>Comprehensive guide to all pipe types and capabilities.</p>
  </a>

  <a href="/docs/tutorials/" class="docs-card">
    <i class="fas fa-graduation-cap"></i>
    <h3>Tutorials</h3>
    <p>Learn how to build complex pipe networks and automation systems.</p>
  </a>

  <a href="/docs/api/" class="docs-card">
    <i class="fas fa-code"></i>
    <h3>API Reference</h3>
    <p>Complete reference for functions, commands, and variables.</p>
  </a>

  <a href="/docs/examples/" class="docs-card">
    <i class="fas fa-lightbulb"></i>
    <h3>Examples</h3>
    <p>Real-world examples and use cases for inspiration.</p>
  </a>

  <a href="/docs/support/" class="docs-card">
    <i class="fas fa-life-ring"></i>
    <h3>Support</h3>
    <p>Get help with installation, troubleshooting, and advanced usage.</p>
  </a>
</div>

## 🤝 Community

Join our growing community of Minecraft Pipes users and developers!

<div class="community-links">
  <a href="https://github.com/minecraft-pipes" class="community-link">
    <i class="fab fa-github"></i>
    <span>GitHub</span>
  </a>
  <a href="https://discord.gg/minecraft-pipes" class="community-link">
    <i class="fab fa-discord"></i>
    <span>Discord</span>
  </a>
  <a href="https://github.com/minecraft-pipes/issues" class="community-link">
    <i class="fas fa-bug"></i>
    <span>Report Issues</span>
  </a>
  <a href="https://github.com/minecraft-pipes/discussions" class="community-link">
    <i class="fas fa-comments"></i>
    <span>Discussions</span>
  </a>
</div>

## 📈 Statistics

<div class="stats-grid">
  <div class="stat-card">
    <div class="stat-number">1000+</div>
    <div class="stat-label">Downloads</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">50+</div>
    <div class="stat-label">Stars on GitHub</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">100%</div>
    <div class="stat-label">Feature Complete</div>
  </div>
  <div class="stat-card">
    <div class="stat-number">24/7</div>
    <div class="stat-label">Community Support</div>
  </div>
</div>

## 🚀 Get Started Today

Ready to transform your Minecraft world with advanced item transportation? Get started with Minecraft Pipes today!

<div class="cta-buttons">
  <a href="/docs/installation/" class="btn btn--primary btn--large">
    <i class="fas fa-download"></i>
    Download Now
  </a>
  <a href="/docs/quick-start/" class="btn btn--secondary btn--large">
    <i class="fas fa-play"></i>
    Quick Start Guide
  </a>
  <a href="https://github.com/minecraft-pipes" class="btn btn--outline btn--large">
    <i class="fab fa-github"></i>
    View on GitHub
  </a>
</div>

---

<div class="newsletter-signup">
  <h3>Stay Updated</h3>
  <p>Get the latest updates about Minecraft Pipes, new features, and community highlights.</p>
  <form class="newsletter-form">
    <input type="email" placeholder="Enter your email address" required>
    <button type="submit" class="btn btn--primary">Subscribe</button>
  </form>
</div>
