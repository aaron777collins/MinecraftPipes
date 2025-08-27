---
layout: default
title: Configuration
description: Learn how to configure the Minecraft Pipes System including flow rates, token speeds, performance settings, and more.
---

<div class="page-header">
  <h1><i class="fas fa-sliders-h"></i> Configuration</h1>
  <p>Customize the Minecraft Pipes System to match your needs with comprehensive configuration options for performance, behavior, and appearance.</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-cog"></i>
    </div>
    <h2 class="card-title">Basic Configuration</h2>
  </div>
  
  <p>The configuration system allows you to customize various aspects of the pipe system to optimize performance and behavior for your specific setup.</p>
  
  <h3>Configuration Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:config_help</span>
  </div>
  <p>Show all available configuration options</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:show_config</span>
  </div>
  <p>Display current configuration settings</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:reset_config</span>
  </div>
  <p>Reset all settings to default values</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-tachometer-alt"></i>
    </div>
    <h2 class="card-title">Flow Rate Control</h2>
  </div>
  
  <p>Control how often items are extracted from sources and how quickly the system processes pipe operations.</p>
  
  <h3>Flow Rate Settings</h3>
  
  <table>
    <thead>
      <tr>
        <th>Setting</th>
        <th>Default</th>
        <th>Range</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Item Spawn Rate</strong></td>
        <td>20 ticks</td>
        <td>1-100 ticks</td>
        <td>How often items are extracted from sources</td>
      </tr>
      <tr>
        <td><strong>Processing Rate</strong></td>
        <td>10 ticks</td>
        <td>1-50 ticks</td>
        <td>How often pipe operations are processed</td>
      </tr>
      <tr>
        <td><strong>Token Update Rate</strong></td>
        <td>2 ticks</td>
        <td>1-10 ticks</td>
        <td>How often token positions are updated</td>
      </tr>
      <tr>
        <td><strong>Network Scan Rate</strong></td>
        <td>100 ticks</td>
        <td>50-1000 ticks</td>
        <td>How often the network topology is scanned</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Flow Rate Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_flow_rate</span>
  </div>
  <p>Set the item spawn rate (how often items are extracted)</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_processing_rate</span>
  </div>
  <p>Set the processing rate for pipe operations</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_token_update_rate</span>
  </div>
  <p>Set how often token positions are updated</p>
  
  <h3>Flow Rate Examples</h3>
  
  <h4>High-Speed Setup</h4>
  <pre><code class="language-minecraft"># For fast item transport
/function pipes:set_flow_rate 5
/function pipes:set_processing_rate 2
/function pipes:set_token_update_rate 1</code></pre>
  
  <h4>Performance-Optimized Setup</h4>
  <pre><code class="language-minecraft"># For better performance
/function pipes:set_flow_rate 40
/function pipes:set_processing_rate 20
/function pipes:set_token_update_rate 5</code></pre>
  
  <h4>Bulk Transport Setup</h4>
  <pre><code class="language-minecraft"># For large quantities
/function pipes:set_flow_rate 10
/function pipes:set_processing_rate 5
/function pipes:set_token_update_rate 3</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-running"></i>
    </div>
    <h2 class="card-title">Token Speed and Movement</h2>
  </div>
  
  <p>Control how fast tokens move through pipes and their visual appearance.</p>
  
  <h3>Token Settings</h3>
  
  <table>
    <thead>
      <tr>
        <th>Setting</th>
        <th>Default</th>
        <th>Range</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Movement Speed</strong></td>
        <td>0.1 blocks/tick</td>
        <td>0.01-1.0 blocks/tick</td>
        <td>How fast tokens move through pipes</td>
      </tr>
      <tr>
        <td><strong>Visual Scale</strong></td>
        <td>1.0</td>
        <td>0.5-2.0</td>
        <td>Size of token visual representation</td>
      </tr>
      <tr>
        <td><strong>Particle Effects</strong></td>
        <td>Enabled</td>
        <td>On/Off</td>
        <td>Show particle effects for tokens</td>
      </tr>
      <tr>
        <td><strong>Glow Effect</strong></td>
        <td>Disabled</td>
        <td>On/Off</td>
        <td>Add glow effect to tokens</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Token Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_token_speed</span>
  </div>
  <p>Set the movement speed of pipe tokens</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_token_scale</span>
  </div>
  <p>Set the visual scale of tokens</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_particles</span>
  </div>
  <p>Toggle particle effects for tokens</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_glow</span>
  </div>
  <p>Toggle glow effect for tokens</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-expand-arrows-alt"></i>
    </div>
    <h2 class="card-title">Distance and Limits</h2>
  </div>
  
  <p>Configure distance limits and other constraints for pipe operations.</p>
  
  <h3>Distance Settings</h3>
  
  <table>
    <thead>
      <tr>
        <th>Setting</th>
        <th>Default</th>
        <th>Range</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Max Pipe Distance</strong></td>
        <td>500 blocks</td>
        <td>10-2000 blocks</td>
        <td>Maximum distance for pipe connections</td>
      </tr>
      <tr>
        <td><strong>Token Render Distance</strong></td>
        <td>64 blocks</td>
        <td>16-256 blocks</td>
        <td>How far tokens are visible to players</td>
      </tr>
      <tr>
        <td><strong>Network Scan Distance</strong></td>
        <td>100 blocks</td>
        <td>50-500 blocks</td>
        <td>Distance for network topology scanning</td>
      </tr>
      <tr>
        <td><strong>Chunk Loading Distance</strong></td>
        <td>2 chunks</td>
        <td>1-8 chunks</td>
        <td>How many chunks around pipes to keep loaded</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Distance Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_max_distance</span>
  </div>
  <p>Set maximum pipe connection distance</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_render_distance</span>
  </div>
  <p>Set token render distance</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_chunk_distance</span>
  </div>
  <p>Set chunk loading distance for pipes</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-tachometer-alt"></i>
    </div>
    <h2 class="card-title">Performance Optimization</h2>
  </div>
  
  <p>Optimize the pipe system for better performance in large worlds or complex setups.</p>
  
  <h3>Performance Modes</h3>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-balance-scale"></i>
      </div>
      <h3 class="feature-title">Balanced Mode</h3>
      <p class="feature-description">Default settings optimized for most setups</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-rocket"></i>
      </div>
      <h3 class="feature-title">Performance Mode</h3>
      <p class="feature-description">Optimized for better FPS and lower resource usage</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-tachometer-alt"></i>
      </div>
      <h3 class="feature-title">High Performance Mode</h3>
      <p class="feature-description">Maximum performance, minimal visual effects</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-eye"></i>
      </div>
      <h3 class="feature-title">Visual Mode</h3>
      <p class="feature-description">Enhanced visual effects, may impact performance</p>
    </div>
  </div>
  
  <h3>Performance Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:optimize_performance</span>
  </div>
  <p>Automatically optimize settings for better performance</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_performance_mode</span>
  </div>
  <p>Set a specific performance mode</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:performance_report</span>
  </div>
  <p>Generate a performance report with recommendations</p>
  
  <h3>Performance Optimization Tips</h3>
  
  <div class="alert alert-info">
    <h4><i class="fas fa-lightbulb"></i> Performance Tips</h4>
    <ul>
      <li><strong>Reduce flow rates</strong> for large networks</li>
      <li><strong>Increase processing intervals</strong> for better performance</li>
      <li><strong>Limit token render distance</strong> in crowded areas</li>
      <li><strong>Use performance mode</strong> for complex setups</li>
      <li><strong>Disable particle effects</strong> if experiencing lag</li>
      <li><strong>Optimize chunk loading</strong> for distant pipes</li>
    </ul>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-bug"></i>
    </div>
    <h2 class="card-title">Debug and Logging</h2>
  </div>
  
  <p>Configure debug settings and logging for troubleshooting and development.</p>
  
  <h3>Debug Settings</h3>
  
  <table>
    <thead>
      <tr>
        <th>Setting</th>
        <th>Default</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Debug Mode</strong></td>
        <td>Disabled</td>
        <td>Enable detailed debug logging</td>
      </tr>
      <tr>
        <td><strong>Verbose Logging</strong></td>
        <td>Disabled</td>
        <td>Show detailed operation logs</td>
      </tr>
      <tr>
        <td><strong>Performance Monitoring</strong></td>
        <td>Disabled</td>
        <td>Monitor and log performance metrics</td>
      </tr>
      <tr>
        <td><strong>Error Reporting</strong></td>
        <td>Enabled</td>
        <td>Report errors and warnings</td>
      </tr>
      <tr>
        <td><strong>Network Visualization</strong></td>
        <td>Disabled</td>
        <td>Show visual network connections</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Debug Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_debug</span>
  </div>
  <p>Toggle debug mode on/off</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_verbose</span>
  </div>
  <p>Toggle verbose logging</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:debug_pipes</span>
  </div>
  <p>Show debug information for all pipes</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:performance_monitor</span>
  </div>
  <p>Start/stop performance monitoring</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:show_network</span>
  </div>
  <p>Visualize the pipe network structure</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-palette"></i>
    </div>
    <h2 class="card-title">Visual and UI Settings</h2>
  </div>
  
  <p>Customize the visual appearance and user interface of the pipe system.</p>
  
  <h3>Visual Settings</h3>
  
  <table>
    <thead>
      <tr>
        <th>Setting</th>
        <th>Default</th>
        <th>Options</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Token Style</strong></td>
        <td>Item Display</td>
        <td>Item Display, Block Display, Particle</td>
        <td>Visual style of pipe tokens</td>
      </tr>
      <tr>
        <td><strong>Color Scheme</strong></td>
        <td>Default</td>
        <td>Default, Rainbow, Monochrome, Custom</td>
        <td>Color scheme for tokens and effects</td>
      </tr>
      <tr>
        <td><strong>Message Style</strong></td>
        <td>Compact</td>
        <td>Compact, Detailed, Minimal</td>
        <td>Style of system messages</td>
      </tr>
      <tr>
        <td><strong>Sound Effects</strong></td>
        <td>Enabled</td>
        <td>Enabled, Disabled</td>
        <td>Play sound effects for operations</td>
      </tr>
      <tr>
        <td><strong>HUD Display</strong></td>
        <td>Enabled</td>
        <td>Enabled, Disabled</td>
        <td>Show HUD information for pipes</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Visual Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_token_style</span>
  </div>
  <p>Set the visual style of pipe tokens</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_color_scheme</span>
  </div>
  <p>Set the color scheme for tokens and effects</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_message_style</span>
  </div>
  <p>Set the style of system messages</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_sounds</span>
  </div>
  <p>Toggle sound effects</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:toggle_hud</span>
  </div>
  <p>Toggle HUD display</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-save"></i>
    </div>
    <h2 class="card-title">Configuration Management</h2>
  </div>
  
  <p>Save, load, and manage different configuration profiles.</p>
  
  <h3>Profile Management</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:save_config</span>
  </div>
  <p>Save current configuration to a profile</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:load_config</span>
  </div>
  <p>Load configuration from a saved profile</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:list_profiles</span>
  </div>
  <p>List all saved configuration profiles</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:delete_profile</span>
  </div>
  <p>Delete a saved configuration profile</p>
  
  <h3>Preset Configurations</h3>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-home"></i>
      </div>
      <h3 class="feature-title">Home Setup</h3>
      <p class="feature-description">Optimized for small home automation systems</p>
      <button class="btn btn-primary" style="margin-top: 1rem;">Load Preset</button>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-industry"></i>
      </div>
      <h3 class="feature-title">Industrial</h3>
      <p class="feature-description">High-capacity setup for large-scale automation</p>
      <button class="btn btn-primary" style="margin-top: 1rem;">Load Preset</button>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-gamepad"></i>
      </div>
      <h3 class="feature-title">Gaming</h3>
      <p class="feature-description">Balanced for performance and visual appeal</p>
      <button class="btn btn-primary" style="margin-top: 1rem;">Load Preset</button>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-server"></i>
      </div>
      <h3 class="feature-title">Server</h3>
      <p class="feature-description">Optimized for multiplayer server performance</p>
      <button class="btn btn-primary" style="margin-top: 1rem;">Load Preset</button>
    </div>
  </div>
</div>

<div class="alert alert-warning">
  <h3><i class="fas fa-exclamation-triangle"></i> Configuration Warnings</h3>
  <p>Be careful when modifying configuration settings:</p>
  <ul>
    <li><strong>Very low flow rates</strong> may cause lag due to frequent processing</li>
    <li><strong>Very high token speeds</strong> may cause visual glitches</li>
    <li><strong>Large distances</strong> may impact performance in large worlds</li>
    <li><strong>Debug mode</strong> can generate a lot of chat spam</li>
  </ul>
  <p>Always test configuration changes in a safe environment first.</p>
</div>

<div class="alert alert-success">
  <h3><i class="fas fa-graduation-cap"></i> Next Steps</h3>
  <p>Now that you understand configuration options, explore the <a href="/troubleshooting">Troubleshooting Guide</a> to learn how to solve common issues, or check out the <a href="/api-reference">API Reference</a> for advanced customization.</p>
</div>
