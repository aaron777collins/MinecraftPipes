---
layout: default
title: Home
description: A comprehensive pipe system for Minecraft that allows item transportation between containers using MDL (Minecraft Datapack Language).
---

<div class="page-header">
  <div class="page-header-content">
    <h1><i class="fas fa-stream"></i> Minecraft Pipes System</h1>
    <p>A comprehensive pipe system for Minecraft that allows item transportation between containers using MDL (Minecraft Datapack Language).</p>
  </div>
</div>

<div class="quick-start">
  <div class="quick-start-content">
    <h2><i class="fas fa-rocket"></i> Quick Start</h2>
    <div class="quick-start-steps">
      <div class="step">
        <div class="step-number">1</div>
        <h3>Download</h3>
        <p>Get the latest release from GitHub</p>
      </div>
      <div class="step">
        <div class="step-number">2</div>
        <h3>Install</h3>
        <p>Extract to your world's datapacks folder</p>
      </div>
      <div class="step">
        <div class="step-number">3</div>
        <h3>Reload</h3>
        <p>Run <code>/reload</code> in-game</p>
      </div>
      <div class="step">
        <div class="step-number">4</div>
        <h3>Create</h3>
        <p>Build your first pipe system</p>
      </div>
    </div>
    <div class="header-buttons">
      <a href="https://github.com/aaron777collins/MinecraftPipes/releases" class="btn btn-primary">
        <i class="fas fa-download"></i> Download Latest Release
      </a>
      <a href="/installation" class="btn btn-outline">
        <i class="fas fa-book"></i> Read Installation Guide
      </a>
    </div>
  </div>
</div>

<div class="feature-grid">
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-boxes"></i>
    </div>
    <h3 class="feature-title">Item Transportation</h3>
    <p class="feature-description">Move items between chests, barrels, hoppers, droppers, and dispensers with ease.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-eye"></i>
    </div>
    <h3 class="feature-title">Visual Tokens</h3>
    <p class="feature-description">See items moving through pipes as visible tokens for better understanding.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-cogs"></i>
    </div>
    <h3 class="feature-title">Automatic Transfer</h3>
    <p class="feature-description">Items automatically transfer when tokens reach destination containers.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-filter"></i>
    </div>
    <h3 class="feature-title">Item Filtering</h3>
    <p class="feature-description">Filter specific items for extraction and insertion with smart sources and sinks.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-bolt"></i>
    </div>
    <h3 class="feature-title">Energy System</h3>
    <p class="feature-description">Optional energy consumption for pipe operations with configurable costs.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-sliders-h"></i>
    </div>
    <h3 class="feature-title">Redstone Control</h3>
    <p class="feature-description">Enable/disable pipes with redstone signals for automation control.</p>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-terminal"></i>
    </div>
    <h2 class="card-title">Getting Started</h2>
  </div>
  
  <p>Minecraft Pipes is a powerful datapack that adds a comprehensive pipe system to your Minecraft world. It allows you to transport items between containers using visual tokens that move through the pipe network.</p>
  
  <div class="minecraft-block">
    <h3><i class="fas fa-cube"></i> Basic Example</h3>
    <p>Create a simple pipe system between two chests:</p>
    <div class="command-example">
      <span class="prompt">$</span> <span class="command">/function pipes:create_pipe</span><br>
      <span class="prompt">$</span> <span class="command">/function pipes:connect_containers</span>
    </div>
  </div>
  
  <div class="alert alert-info">
    <i class="fas fa-info-circle"></i>
    <strong>Tip:</strong> The pipe system works with any container that can store items, including chests, barrels, hoppers, droppers, and dispensers.
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-star"></i>
    </div>
    <h2 class="card-title">Key Features</h2>
  </div>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: var(--space-xl);">
    <div>
      <h4><i class="fas fa-eye" style="color: var(--primary);"></i> Visual Feedback</h4>
      <p>See items moving through your pipe network as animated tokens, making it easy to understand what's happening.</p>
    </div>
    <div>
      <h4><i class="fas fa-cogs" style="color: var(--secondary);"></i> Smart Automation</h4>
      <p>Items automatically transfer when they reach their destination, with configurable filtering and routing.</p>
    </div>
    <div>
      <h4><i class="fas fa-shield-alt" style="color: var(--accent);"></i> Redstone Integration</h4>
      <p>Control pipe operations with redstone signals for complex automation systems.</p>
    </div>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-book"></i>
    </div>
    <h2 class="card-title">Documentation</h2>
  </div>
  
  <p>Explore our comprehensive documentation to learn how to use Minecraft Pipes effectively:</p>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: var(--space-lg); margin-top: var(--space-xl);">
    <a href="/installation" class="btn btn-outline" style="text-align: center;">
      <i class="fas fa-download"></i><br>
      Installation
    </a>
    <a href="/basic-usage" class="btn btn-outline" style="text-align: center;">
      <i class="fas fa-play"></i><br>
      Basic Usage
    </a>
    <a href="/advanced-features" class="btn btn-outline" style="text-align: center;">
      <i class="fas fa-cogs"></i><br>
      Advanced Features
    </a>
    <a href="/api-reference" class="btn btn-outline" style="text-align: center;">
      <i class="fas fa-code"></i><br>
      API Reference
    </a>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-users"></i>
    </div>
    <h2 class="card-title">Community & Support</h2>
  </div>
  
  <p>Join our community to get help, share your creations, and stay updated with the latest features:</p>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: var(--space-lg); margin-top: var(--space-xl);">
    <a href="https://github.com/aaron777collins/MinecraftPipes/issues" class="btn btn-secondary" style="text-align: center;">
      <i class="fab fa-github"></i><br>
      Report Issues
    </a>
    <a href="https://github.com/aaron777collins/MinecraftPipes/discussions" class="btn btn-secondary" style="text-align: center;">
      <i class="fas fa-comments"></i><br>
      Discussions
    </a>
    <a href="https://discord.gg/minecraft-pipes" class="btn btn-secondary" style="text-align: center;">
      <i class="fab fa-discord"></i><br>
      Discord Server
    </a>
    <a href="https://github.com/aaron777collins/MinecraftPipes/blob/main/CONTRIBUTING.md" class="btn btn-secondary" style="text-align: center;">
      <i class="fas fa-hands-helping"></i><br>
      Contribute
    </a>
  </div>
</div>
