---
layout: default
title: API Reference
description: Technical API reference for the Minecraft Pipes System. Advanced documentation for developers and power users.
---

<div class="page-header">
  <h1><i class="fas fa-code"></i> API Reference</h1>
  <p>Technical documentation for developers and advanced users. Learn about the internal workings and advanced features of the Minecraft Pipes System.</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-cogs"></i>
    </div>
    <h2 class="card-title">System Architecture</h2>
  </div>
  
  <p>The Minecraft Pipes System is built using MDL (Minecraft Datapack Language) and consists of several core components:</p>
  
  <h3>Core Components</h3>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-database"></i>
      </div>
      <h3 class="feature-title">Data Storage</h3>
      <p class="feature-description">Scoreboard objectives and storage for pipe data</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-route"></i>
      </div>
      <h3 class="feature-title">Token System</h3>
      <p class="feature-description">Item display entities for visual representation</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-microchip"></i>
      </div>
      <h3 class="feature-title">Processing Engine</h3>
      <p class="feature-description">Tick-based processing for pipe operations</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-network-wired"></i>
      </div>
      <h3 class="feature-title">Network Manager</h3>
      <p class="feature-description">Manages pipe connections and routing</p>
    </div>
  </div>
  
  <h3>File Structure</h3>
  
  <pre><code class="language-plaintext">minecraft_pipes/
├── data/
│   ├── minecraft/
│   │   └── tags/
│   │       └── function/
│   │           ├── load.json      # Load tag for initialization
│   │           └── tick.json      # Tick tag for processing
│   └── pipes/
│       └── function/
│           ├── init.mcfunction    # System initialization
│           ├── tick_main.mcfunction # Main processing loop
│           ├── create_source.mcfunction # Source creation
│           ├── create_sink.mcfunction   # Sink creation
│           ├── token_manager.mcfunction # Token management
│           ├── network_manager.mcfunction # Network operations
│           └── [other functions...]
└── pack.mcmeta                   # Datapack metadata</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-database"></i>
    </div>
    <h2 class="card-title">Data Storage</h2>
  </div>
  
  <p>The system uses scoreboard objectives to store pipe data and configuration:</p>
  
  <h3>Scoreboard Objectives</h3>
  
  <table>
    <thead>
      <tr>
        <th>Objective</th>
        <th>Purpose</th>
        <th>Data Type</th>
        <th>Example Values</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>pipes.source_count</code></td>
        <td>Number of active sources</td>
        <td>Integer</td>
        <td>0, 1, 2, ...</td>
      </tr>
      <tr>
        <td><code>pipes.sink_count</code></td>
        <td>Number of active sinks</td>
        <td>Integer</td>
        <td>0, 1, 2, ...</td>
      </tr>
      <tr>
        <td><code>pipes.token_count</code></td>
        <td>Number of active tokens</td>
        <td>Integer</td>
        <td>0, 1, 2, ...</td>
      </tr>
      <tr>
        <td><code>pipes.flow_rate</code></td>
        <td>Item spawn rate in ticks</td>
        <td>Integer</td>
        <td>20, 40, 100</td>
      </tr>
      <tr>
        <td><code>pipes.token_speed</code></td>
        <td>Token movement speed</td>
        <td>Float</td>
        <td>0.1, 0.2, 0.5</td>
      </tr>
      <tr>
        <td><code>pipes.max_distance</code></td>
        <td>Maximum pipe distance</td>
        <td>Integer</td>
        <td>500, 1000, 2000</td>
      </tr>
      <tr>
        <td><code>pipes.debug_mode</code></td>
        <td>Debug mode status</td>
        <td>Boolean</td>
        <td>0 (off), 1 (on)</td>
      </tr>
      <tr>
        <td><code>pipes.energy_level</code></td>
        <td>Current energy level</td>
        <td>Integer</td>
        <td>0, 100, 1000</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Storage Tags</h3>
  
  <p>The system uses storage tags for complex data structures:</p>
  
  <pre><code class="language-json">{
  "pipes.sources": {
    "source_1": {
      "x": 100,
      "y": 64,
      "z": 200,
      "dimension": "minecraft:overworld",
      "filter": "iron_ingot",
      "priority": 5,
      "enabled": 1
    }
  },
  "pipes.sinks": {
    "sink_1": {
      "x": 150,
      "y": 64,
      "z": 250,
      "dimension": "minecraft:overworld",
      "filter": "diamond",
      "priority": 3,
      "enabled": 1
    }
  },
  "pipes.tokens": {
    "token_1": {
      "x": 125.5,
      "y": 64.0,
      "z": 225.5,
      "item": "iron_ingot",
      "source": "source_1",
      "sink": "sink_1",
      "progress": 0.5
    }
  }
}</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-terminal"></i>
    </div>
    <h2 class="card-title">Function API</h2>
  </div>
  
  <p>Complete list of available functions and their parameters:</p>
  
  <h3>Core Functions</h3>
  
  <table>
    <thead>
      <tr>
        <th>Function</th>
        <th>Parameters</th>
        <th>Description</th>
        <th>Return Value</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>pipes:init</code></td>
        <td>None</td>
        <td>Initialize the pipe system</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:tick_main</code></td>
        <td>None</td>
        <td>Main processing loop (called every tick)</td>
        <td>None</td>
      </tr>
      <tr>
        <td><code>pipes:create_source</code></td>
        <td>None (uses player position)</td>
        <td>Create a pipe source at player location</td>
        <td>Source ID</td>
      </tr>
      <tr>
        <td><code>pipes:create_sink</code></td>
        <td>None (uses player position)</td>
        <td>Create a pipe sink at player location</td>
        <td>Sink ID</td>
      </tr>
      <tr>
        <td><code>pipes:remove_pipe</code></td>
        <td>None (uses nearby pipes)</td>
        <td>Remove pipes near player</td>
        <td>Removal count</td>
      </tr>
      <tr>
        <td><code>pipes:clear_all</code></td>
        <td>None</td>
        <td>Remove all pipes and tokens</td>
        <td>Removal count</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Advanced Functions</h3>
  
  <table>
    <thead>
      <tr>
        <th>Function</th>
        <th>Parameters</th>
        <th>Description</th>
        <th>Return Value</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>pipes:create_smart_source</code></td>
        <td>None</td>
        <td>Create source with filtering</td>
        <td>Source ID</td>
      </tr>
      <tr>
        <td><code>pipes:create_smart_sink</code></td>
        <td>None</td>
        <td>Create sink with filtering</td>
        <td>Sink ID</td>
      </tr>
      <tr>
        <td><code>pipes:set_source_filter</code></td>
        <td>Item ID</td>
        <td>Set filter for selected source</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:set_sink_filter</code></td>
        <td>Item ID</td>
        <td>Set filter for selected sink</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:set_source_priority</code></td>
        <td>Priority (1-10)</td>
        <td>Set priority for selected source</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:set_sink_priority</code></td>
        <td>Priority (1-10)</td>
        <td>Set priority for selected sink</td>
        <td>Success message</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Configuration Functions</h3>
  
  <table>
    <thead>
      <tr>
        <th>Function</th>
        <th>Parameters</th>
        <th>Description</th>
        <th>Return Value</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>pipes:set_flow_rate</code></td>
        <td>Rate (ticks)</td>
        <td>Set item spawn rate</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:set_token_speed</code></td>
        <td>Speed (blocks/tick)</td>
        <td>Set token movement speed</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:set_max_distance</code></td>
        <td>Distance (blocks)</td>
        <td>Set maximum pipe distance</td>
        <td>Success message</td>
      </tr>
      <tr>
        <td><code>pipes:toggle_debug</code></td>
        <td>None</td>
        <td>Toggle debug mode</td>
        <td>Debug status</td>
      </tr>
      <tr>
        <td><code>pipes:optimize_performance</code></td>
        <td>None</td>
        <td>Optimize for performance</td>
        <td>Optimization report</td>
      </tr>
    </tbody>
  </table>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-tags"></i>
    </div>
    <h2 class="card-title">Tags and Predicates</h2>
  </div>
  
  <p>The system uses various tags and predicates for entity and block detection:</p>
  
  <h3>Entity Tags</h3>
  
  <pre><code class="language-json">{
  "pipes:pipe_tokens": {
    "values": [
      "minecraft:item_display"
    ]
  },
  "pipes:pipe_markers": {
    "values": [
      "minecraft:marker"
    ]
  },
  "pipes:storage_blocks": {
    "values": [
      "minecraft:chest",
      "minecraft:barrel",
      "minecraft:hopper",
      "minecraft:dropper",
      "minecraft:dispenser"
    ]
  }
}</code></pre>
  
  <h3>Block Tags</h3>
  
  <pre><code class="language-json">{
  "pipes:pipe_blocks": {
    "values": [
      "minecraft:glass",
      "minecraft:stained_glass",
      "minecraft:iron_block",
      "minecraft:copper_block"
    ]
  },
  "pipes:energy_sources": {
    "values": [
      "minecraft:furnace",
      "minecraft:blast_furnace",
      "minecraft:smoker"
    ]
  }
}</code></pre>
  
  <h3>Predicates</h3>
  
  <pre><code class="language-json">{
  "pipes:has_items": {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "nbt": "{Inventory:[{Count:1b}]}"
    }
  },
  "pipes:has_space": {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "nbt": "{Inventory:[{Count:0b}]}"
    }
  }
}</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-code-branch"></i>
    </div>
    <h2 class="card-title">Custom Integration</h2>
  </div>
  
  <p>Learn how to integrate the pipe system with your own datapacks and functions:</p>
  
  <h3>Calling Pipe Functions</h3>
  
  <p>You can call pipe functions from your own datapack:</p>
  
  <pre><code class="language-minecraft"># Create a source programmatically
execute as @p at @s run function pipes:create_source

# Set flow rate
scoreboard players set @p pipes.flow_rate 10

# Check if system is loaded
execute if score @p pipes.source_count matches 1.. run say System is loaded!</code></pre>
  
  <h3>Listening for Events</h3>
  
  <p>Listen for pipe events using scoreboard values:</p>
  
  <pre><code class="language-minecraft"># Check when items are transferred
execute if score @p pipes.token_count matches 1.. run function mypack:item_transferred

# Monitor energy levels
execute if score @p pipes.energy_level matches ..50 run function mypack:low_energy

# Detect new pipes
execute if score @p pipes.source_count matches 1.. unless score @p mypack.last_source_count matches 1.. run function mypack:new_pipe_created</code></pre>
  
  <h3>Custom Token Types</h3>
  
  <p>Create custom token types by modifying the token creation function:</p>
  
  <pre><code class="language-minecraft"># Example: Create a special token
summon item_display ~ ~ ~ {item:{id:"minecraft:diamond",Count:1b},transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["pipes:custom_token","pipes:special_item"]}

# Add custom behavior
execute as @e[type=item_display,tag=pipes:custom_token] run function mypack:custom_token_behavior</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-bug"></i>
    </div>
    <h2 class="card-title">Debugging and Development</h2>
  </div>
  
  <p>Tools and techniques for debugging and developing with the pipe system:</p>
  
  <h3>Debug Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:debug_pipes</span>
  </div>
  <p>Show detailed debug information for all pipes</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:show_network</span>
  </div>
  <p>Visualize the pipe network structure</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:performance_monitor</span>
  </div>
  <p>Start/stop performance monitoring</p>
  
  <h3>Development Tools</h3>
  
  <h4>MDL Development</h4>
  <pre><code class="language-bash"># Check syntax
mdl check src/

# Build with debug symbols
mdl build --mdl . -o dist --wrapper minecraft_pipes --pack-format 48 --debug

# Run tests
mdl test .</code></pre>
  
  <h4>In-Game Testing</h4>
  <pre><code class="language-minecraft"># Enable debug mode
/function pipes:toggle_debug

# Test specific functions
/function pipes:test_token_creation
/function pipes:test_network_routing
/function pipes:test_performance</code></pre>
  
  <h3>Performance Profiling</h3>
  
  <p>Monitor system performance using built-in tools:</p>
  
  <pre><code class="language-minecraft"># Start performance monitoring
/function pipes:performance_monitor

# Generate performance report
/function pipes:performance_report

# Check specific metrics
scoreboard players get @p pipes.token_count
scoreboard players get @p pipes.processing_time</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-shield-alt"></i>
    </div>
    <h2 class="card-title">Security and Permissions</h2>
  </div>
  
  <p>Security considerations and permission system for the pipe system:</p>
  
  <h3>Permission Levels</h3>
  
  <table>
    <thead>
      <tr>
        <th>Permission</th>
        <th>Description</th>
        <th>Required Level</th>
        <th>Commands</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Basic Usage</strong></td>
        <td>Create and manage basic pipes</td>
        <td>Operator (1)</td>
        <td>create_source, create_sink, list_connections</td>
      </tr>
      <tr>
        <td><strong>Advanced Features</strong></td>
        <td>Use filtering and advanced features</td>
        <td>Operator (2)</td>
        <td>create_smart_source, set_filters, set_priorities</td>
      </tr>
      <tr>
        <td><strong>Configuration</strong></td>
        <td>Modify system settings</td>
        <td>Operator (3)</td>
        <td>set_flow_rate, set_token_speed, optimize_performance</td>
      </tr>
      <tr>
        <td><strong>Administration</strong></td>
        <td>Full system control</td>
        <td>Operator (4)</td>
        <td>clear_all, reset_config, debug_pipes</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Security Best Practices</h3>
  
  <div class="alert alert-warning">
    <h4><i class="fas fa-exclamation-triangle"></i> Security Recommendations</h4>
    <ul>
      <li><strong>Limit operator permissions</strong> to trusted players only</li>
      <li><strong>Use command blocks</strong> for automated systems instead of giving players direct access</li>
      <li><strong>Monitor pipe usage</strong> in large multiplayer servers</li>
      <li><strong>Set reasonable limits</strong> on pipe counts and distances</li>
      <li><strong>Regular backups</strong> before major changes</li>
    </ul>
  </div>
</div>

<div class="alert alert-info">
  <h3><i class="fas fa-lightbulb"></i> Development Tips</h3>
  <ul>
    <li><strong>Use debug mode</strong> when developing custom integrations</li>
    <li><strong>Test in isolation</strong> before integrating with other systems</li>
    <li><strong>Monitor performance</strong> when adding custom features</li>
    <li><strong>Follow naming conventions</strong> for consistency</li>
    <li><strong>Document custom functions</strong> for future reference</li>
  </ul>
</div>

<div class="alert alert-success">
  <h3><i class="fas fa-graduation-cap"></i> Next Steps</h3>
  <p>Now that you understand the API, consider contributing to the project on <a href="https://github.com/minecraft-pipes/minecraft-pipes">GitHub</a>, or explore the <a href="/troubleshooting">Troubleshooting Guide</a> for help with development issues.</p>
</div>
