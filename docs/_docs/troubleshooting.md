---
layout: default
title: Troubleshooting
description: Common issues and solutions for the Minecraft Pipes System. Learn how to diagnose and fix problems.
---

<div class="page-header">
  <h1><i class="fas fa-question-circle"></i> Troubleshooting</h1>
  <p>Common issues and solutions for the Minecraft Pipes System. Learn how to diagnose and fix problems quickly.</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-search"></i>
    </div>
    <h2 class="card-title">Diagnostic Commands</h2>
  </div>
  
  <p>Use these commands to diagnose issues with your pipe system:</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:ping</span>
  </div>
  <p>Test if the pipe system is responding</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:check_pipe_status</span>
  </div>
  <p>Check the overall status of all pipes</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:list_connections</span>
  </div>
  <p>List all active pipe connections</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:debug_pipes</span>
  </div>
  <p>Show detailed debug information</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:performance_report</span>
  </div>
  <p>Generate a performance report</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-exclamation-triangle"></i>
    </div>
    <h2 class="card-title">Common Issues</h2>
  </div>
  
  <h3>Installation Issues</h3>
  
  <div class="alert alert-error">
    <h4><i class="fas fa-times-circle"></i> "Datapack not found" Error</h4>
    <p><strong>Symptoms:</strong> The system doesn't load or commands return "function not found"</p>
    <p><strong>Causes:</strong></p>
    <ul>
      <li>Datapack not properly installed in the datapacks folder</li>
      <li>Incorrect folder structure</li>
      <li>Missing pack.mcmeta file</li>
    </ul>
    <p><strong>Solutions:</strong></p>
    <ol>
      <li>Verify the datapack is in <code>[WorldName]/datapacks/minecraft_pipes/</code></li>
      <li>Check that the folder contains <code>data/</code> and <code>pack.mcmeta</code></li>
      <li>Run <code>/reload</code> in-game</li>
      <li>Check the chat for any error messages</li>
    </ol>
  </div>
  
  <div class="alert alert-error">
    <h4><i class="fas fa-times-circle"></i> "Pack format not supported" Error</h4>
    <p><strong>Symptoms:</strong> Datapack loads but shows format error</p>
    <p><strong>Causes:</strong></p>
    <ul>
      <li>Minecraft version too old for the datapack format</li>
      <li>Datapack built for newer Minecraft version</li>
    </ul>
    <p><strong>Solutions:</strong></p>
    <ol>
      <li>Update to Minecraft 1.21+</li>
      <li>Or rebuild the datapack with an older pack format</li>
      <li>Use <code>mdl build --pack-format 47</code> for older versions</li>
    </ol>
  </div>
  
  <h3>Pipe Operation Issues</h3>
  
  <div class="alert alert-warning">
    <h4><i class="fas fa-exclamation-triangle"></i> "No items are flowing"</h4>
    <p><strong>Symptoms:</strong> Pipes are set up but no items move between containers</p>
    <p><strong>Causes:</strong></p>
    <ul>
      <li>No items in source container</li>
      <li>Source or sink container not properly placed</li>
      <li>Containers are full</li>
      <li>Pipes are disabled by redstone</li>
      <li>Energy system is depleted</li>
    </ul>
    <p><strong>Solutions:</strong></p>
    <ol>
      <li>Check that source container has items</li>
      <li>Verify containers are directly below markers</li>
      <li>Ensure destination container has space</li>
      <li>Check redstone signals if using redstone control</li>
      <li>Check energy levels if using energy system</li>
      <li>Run <code>/function pipes:list_connections</code> to verify setup</li>
    </ol>
  </div>
  
  <div class="alert alert-warning">
    <h4><i class="fas fa-exclamation-triangle"></i> "Items are stuck"</h4>
    <p><strong>Symptoms:</strong> Tokens appear but don't move or reach destination</p>
    <p><strong>Causes:</strong></p>
    <ul>
      <li>Destination container is full</li>
      <li>Token speed is too slow</li>
      <li>Distance is too far</li>
      <li>Performance issues causing lag</li>
    </ul>
    <p><strong>Solutions:</strong></p>
    <ol>
      <li>Clear space in destination container</li>
      <li>Increase token speed: <code>/function pipes:set_token_speed 0.2</code></li>
      <li>Check if distance is within limits</li>
      <li>Optimize performance settings</li>
    </ol>
  </div>
  
  <div class="alert alert-warning">
    <h4><i class="fas fa-exclamation-triangle"></i> "No markers visible"</h4>
    <p><strong>Symptoms:</strong> Commands complete but no visual markers appear</p>
    <p><strong>Causes:</strong></p>
    <ul>
      <li>Commands didn't complete successfully</li>
      <li>No operator permissions</li>
      <li>Visual effects disabled</li>
    </ul>
    <p><strong>Solutions:</strong></p>
    <ol>
      <li>Check chat for success messages</li>
      <li>Ensure you have operator permissions</li>
      <li>Enable cheats in world settings</li>
      <li>Check if visual effects are enabled</li>
    </ol>
  </div>
  
  <h3>Performance Issues</h3>
  
  <div class="alert alert-error">
    <h4><i class="fas fa-times-circle"></i> "Lag or low FPS"</h4>
    <p><strong>Symptoms:</strong> Game becomes slow or unresponsive</p>
    <p><strong>Causes:</strong></p>
    <ul>
      <li>Too many active pipes</li>
      <li>High flow rates</li>
      <li>Large token render distances</li>
      <li>Particle effects enabled</li>
      <li>Complex filtering systems</li>
    </ul>
    <p><strong>Solutions:</strong></p>
    <ol>
      <li>Reduce number of active pipes</li>
      <li>Lower flow rates: <code>/function pipes:set_flow_rate 40</code></li>
      <li>Reduce token render distance</li>
      <li>Disable particle effects</li>
      <li>Use performance mode: <code>/function pipes:optimize_performance</code></li>
    </ol>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-tools"></i>
    </div>
    <h2 class="card-title">Advanced Troubleshooting</h2>
  </div>
  
  <h3>Debug Mode</h3>
  <p>Enable debug mode for detailed logging and troubleshooting:</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_debug</span>
  </div>
  <p>Enable debug mode for detailed logging</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_verbose</span>
  </div>
  <p>Enable verbose logging for more details</p>
  
  <h3>Network Diagnostics</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:network_status</span>
  </div>
  <p>Display network topology and connection status</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:show_network</span>
  </div>
  <p>Visualize the pipe network structure</p>
  
  <h3>Performance Monitoring</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:performance_monitor</span>
  </div>
  <p>Start/stop performance monitoring</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:performance_report</span>
  </div>
  <p>Generate a detailed performance report</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-cog"></i>
    </div>
    <h2 class="card-title">Configuration Issues</h2>
  </div>
  
  <h3>Reset Configuration</h3>
  <p>If you've made configuration changes that are causing issues:</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:reset_config</span>
  </div>
  <p>Reset all settings to default values</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:show_config</span>
  </div>
  <p>Display current configuration settings</p>
  
  <h3>Load Safe Configuration</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_performance_mode</span>
  </div>
  <p>Set performance mode for better stability</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:optimize_performance</span>
  </div>
  <p>Automatically optimize settings for better performance</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-life-ring"></i>
    </div>
    <h2 class="card-title">Getting Help</h2>
  </div>
  
  <p>If you're still experiencing issues after trying these solutions:</p>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fab fa-github"></i>
      </div>
      <h3 class="feature-title">GitHub Issues</h3>
      <p class="feature-description">Report bugs and request features on GitHub</p>
      <a href="https://github.com/minecraft-pipes/minecraft-pipes/issues" class="btn btn-primary">
        <i class="fab fa-github"></i> Report Issue
      </a>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fab fa-discord"></i>
      </div>
      <h3 class="feature-title">Discord Community</h3>
      <p class="feature-description">Get help from the community on Discord</p>
      <a href="https://discord.gg/minecraft-pipes" class="btn btn-secondary">
        <i class="fab fa-discord"></i> Join Discord
      </a>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-book"></i>
      </div>
      <h3 class="feature-title">Documentation</h3>
      <p class="feature-description">Check the full documentation for more details</p>
      <a href="/" class="btn btn-outline">
        <i class="fas fa-book"></i> View Docs
      </a>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-wiki"></i>
      </div>
      <h3 class="feature-title">Wiki</h3>
      <p class="feature-description">Community-maintained wiki with tips and tricks</p>
      <a href="https://github.com/minecraft-pipes/minecraft-pipes/wiki" class="btn btn-outline">
        <i class="fas fa-wiki"></i> View Wiki
      </a>
    </div>
  </div>
  
  <h3>When Reporting Issues</h3>
  <p>When reporting an issue, please include:</p>
  
  <ul>
    <li><strong>Minecraft Version:</strong> The version you're running</li>
    <li><strong>Datapack Version:</strong> The version of the pipe system</li>
    <li><strong>Steps to Reproduce:</strong> How to recreate the issue</li>
    <li><strong>Expected Behavior:</strong> What should happen</li>
    <li><strong>Actual Behavior:</strong> What actually happens</li>
    <li><strong>Error Messages:</strong> Any error messages from chat or logs</li>
    <li><strong>Debug Output:</strong> Output from debug commands</li>
    <li><strong>Screenshots/Videos:</strong> Visual evidence of the issue</li>
  </ul>
</div>

<div class="alert alert-info">
  <h3><i class="fas fa-lightbulb"></i> Pro Tips</h3>
  <ul>
    <li><strong>Always backup your world</strong> before making major changes</li>
    <li><strong>Test in creative mode</strong> before using in survival</li>
    <li><strong>Start small</strong> and expand gradually</li>
    <li><strong>Use debug mode</strong> when troubleshooting complex issues</li>
    <li><strong>Check performance</strong> regularly in large setups</li>
    <li><strong>Keep documentation handy</strong> for reference</li>
  </ul>
</div>

<div class="alert alert-success">
  <h3><i class="fas fa-graduation-cap"></i> Next Steps</h3>
  <p>If you've resolved your issue, consider exploring the <a href="/advanced-features">Advanced Features</a> to enhance your pipe system, or check out the <a href="/configuration">Configuration Guide</a> to optimize your setup.</p>
</div>
