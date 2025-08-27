---
layout: default
title: Home
description: A comprehensive pipe system for Minecraft that allows item transportation between containers using MDL (Minecraft Datapack Language).
---

<div class="page-header">
  <h1><i class="fas fa-stream"></i> Minecraft Pipes System</h1>
  <p>A comprehensive pipe system for Minecraft that allows item transportation between containers using MDL (Minecraft Datapack Language).</p>
</div>

<div class="quick-start">
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
     <div style="margin-top: 2rem;">
     <a href="https://github.com/aaron777collins/MinecraftPipes/releases" class="btn btn-primary">
      <i class="fas fa-download"></i> Download Latest Release
    </a>
    <a href="/installation" class="btn btn-outline" style="margin-left: 1rem;">
      <i class="fas fa-book"></i> Read Installation Guide
    </a>
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
    <h2 class="card-title">Essential Commands</h2>
  </div>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:create_source</span>
  </div>
  <p>Create a pipe source at your current location</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:create_sink</span>
  </div>
  <p>Create a pipe sink at your current location</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:list_connections</span>
  </div>
  <p>List all active pipe connections</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:help</span>
  </div>
  <p>Show all available commands</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-book"></i>
    </div>
    <h2 class="card-title">Documentation</h2>
  </div>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1.5rem;">
    <div>
      <h3><i class="fas fa-download"></i> <a href="/installation">Installation Guide</a></h3>
      <p>Step-by-step instructions for installing and setting up the pipe system.</p>
    </div>
    
    <div>
      <h3><i class="fas fa-play"></i> <a href="/basic-usage">Basic Usage</a></h3>
      <p>Learn how to create your first pipe and understand the basic concepts.</p>
    </div>
    
    <div>
      <h3><i class="fas fa-cogs"></i> <a href="/advanced-features">Advanced Features</a></h3>
      <p>Explore filtering, energy systems, redstone control, and more.</p>
    </div>
    
    <div>
      <h3><i class="fas fa-sliders-h"></i> <a href="/configuration">Configuration</a></h3>
      <p>Customize flow rates, token speeds, and performance settings.</p>
    </div>
    
    <div>
      <h3><i class="fas fa-code"></i> <a href="/api-reference">API Reference</a></h3>
      <p>Technical documentation for developers and advanced users.</p>
    </div>
    
    <div>
      <h3><i class="fas fa-question-circle"></i> <a href="/troubleshooting">Troubleshooting</a></h3>
      <p>Common issues and solutions for the pipe system.</p>
    </div>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-gamepad"></i>
    </div>
    <h2 class="card-title">How It Works</h2>
  </div>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 2rem; text-align: center;">
    <div>
      <div class="minecraft-block" style="width: 60px; height: 60px; margin: 0 auto 1rem; border-radius: 8px;"></div>
      <h4>1. Source</h4>
      <p>Extracts items from containers and creates tokens</p>
    </div>
    
    <div>
      <div class="minecraft-item" style="width: 60px; height: 60px; margin: 0 auto 1rem; border-radius: 8px;"></div>
      <h4>2. Tokens</h4>
      <p>Visual representations of items moving through pipes</p>
    </div>
    
    <div>
      <div class="minecraft-block" style="width: 60px; height: 60px; margin: 0 auto 1rem; border-radius: 8px; background: linear-gradient(45deg, #4CAF50, #45a049);"></div>
      <h4>3. Sink</h4>
      <p>Receives tokens and transfers items to containers</p>
    </div>
  </div>
</div>

<div class="alert alert-info">
  <h3><i class="fas fa-info-circle"></i> Container Support</h3>
  <p>The system supports all vanilla storage blocks: <strong>Chests</strong> (64 items/slot), <strong>Barrels</strong> (64 items/slot), <strong>Hoppers</strong> (5 items/slot), <strong>Droppers</strong> (9 items/slot), and <strong>Dispensers</strong> (9 items/slot).</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-users"></i>
    </div>
    <h2 class="card-title">Get Involved</h2>
  </div>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 2rem;">
    <div style="text-align: center;">
      <i class="fab fa-github" style="font-size: 3rem; color: var(--primary-color); margin-bottom: 1rem;"></i>
      <h3>GitHub</h3>
      <p>View source code, report issues, and contribute to the project.</p>
             <a href="https://github.com/aaron777collins/MinecraftPipes" class="btn btn-primary">
        <i class="fab fa-github"></i> View on GitHub
      </a>
    </div>
    
    <div style="text-align: center;">
      <i class="fab fa-discord" style="font-size: 3rem; color: #7289DA; margin-bottom: 1rem;"></i>
      <h3>Discord</h3>
      <p>Join our community for discussions, help, and updates.</p>
      <a href="https://discord.gg/minecraft-pipes" class="btn btn-secondary">
        <i class="fab fa-discord"></i> Join Discord
      </a>
    </div>
    
    <div style="text-align: center;">
      <i class="fab fa-twitter" style="font-size: 3rem; color: #1DA1F2; margin-bottom: 1rem;"></i>
      <h3>Twitter</h3>
      <p>Follow us for the latest news and announcements.</p>
      <a href="https://twitter.com/minecraft_pipes" class="btn btn-outline">
        <i class="fab fa-twitter"></i> Follow on Twitter
      </a>
    </div>
  </div>
</div>

<div class="alert alert-success">
  <h3><i class="fas fa-heart"></i> Made with Love</h3>
  <p>This project is made with ❤️ for the Minecraft community. If you find it useful, please consider giving it a star on GitHub!</p>
</div>
