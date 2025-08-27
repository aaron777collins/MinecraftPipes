---
layout: default
title: Advanced Features
description: Learn about advanced features like item filtering, energy systems, redstone control, and priority systems in the Minecraft Pipes System.
---

<div class="page-header">
  <h1><i class="fas fa-cogs"></i> Advanced Features</h1>
  <p>Explore the advanced capabilities of the Minecraft Pipes System including filtering, energy systems, redstone control, and more.</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-filter"></i>
    </div>
    <h2 class="card-title">Item Filtering</h2>
  </div>
  
  <p>Item filtering allows you to control which items are extracted from sources and inserted into sinks. This is essential for creating organized storage systems and automation setups.</p>
  
  <h3>Smart Sources</h3>
  <p>Smart sources can filter items based on specific criteria:</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:create_smart_source</span>
  </div>
  <p>Creates a source with filtering capabilities</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_source_filter</span>
  </div>
  <p>Configure the filter for a smart source</p>
  
  <h4>Filter Types</h4>
  <table>
    <thead>
      <tr>
        <th>Filter Type</th>
        <th>Description</th>
        <th>Example</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Item Type</strong></td>
        <td>Filter by specific item types</td>
        <td><code>iron_ingot</code>, <code>diamond</code></td>
      </tr>
      <tr>
        <td><strong>Item Category</strong></td>
        <td>Filter by item categories</td>
        <td><code>tools</code>, <code>weapons</code>, <code>food</code></td>
      </tr>
      <tr>
        <td><strong>Enchantment</strong></td>
        <td>Filter by enchantments</td>
        <td><code>efficiency</code>, <code>unbreaking</code></td>
      </tr>
      <tr>
        <td><strong>Custom NBT</strong></td>
        <td>Filter by custom NBT data</td>
        <td><code>CustomName</code>, <code>Lore</code></td>
      </tr>
    </tbody>
  </table>
  
  <h3>Smart Sinks</h3>
  <p>Smart sinks can filter which items they accept:</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:create_smart_sink</span>
  </div>
  <p>Creates a sink with filtering capabilities</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_sink_filter</span>
  </div>
  <p>Configure the filter for a smart sink</p>
  
  <div class="alert alert-info">
    <h4><i class="fas fa-lightbulb"></i> Pro Tip</h4>
    <p>Use smart sources and sinks together to create sophisticated sorting systems. For example, create multiple smart sinks, each accepting only specific item types, to automatically sort items into different storage containers.</p>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-bolt"></i>
    </div>
    <h2 class="card-title">Energy System</h2>
  </div>
  
  <p>The energy system adds a resource management aspect to pipe operations, making automation more strategic and balanced.</p>
  
  <h3>Energy Sources</h3>
  <p>Energy can be provided by various sources:</p>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-fire"></i>
      </div>
      <h3 class="feature-title">Furnaces</h3>
      <p class="feature-description">Burning furnaces provide energy based on fuel type and burn time.</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-solar-panel"></i>
      </div>
      <h3 class="feature-title">Solar Panels</h3>
      <p class="feature-description">Generate energy during daylight hours with varying efficiency.</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-water"></i>
      </div>
      <h3 class="feature-title">Water Wheels</h3>
      <p class="feature-description">Generate energy from flowing water sources.</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-battery-full"></i>
      </div>
      <h3 class="feature-title">Batteries</h3>
      <p class="feature-description">Store and provide energy on demand.</p>
    </div>
  </div>
  
  <h3>Energy Consumption</h3>
  <p>Different pipe operations consume different amounts of energy:</p>
  
  <table>
    <thead>
      <tr>
        <th>Operation</th>
        <th>Energy Cost</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Item Extraction</strong></td>
        <td>1-5 energy</td>
        <td>Based on item stack size and rarity</td>
      </tr>
      <tr>
        <td><strong>Token Movement</strong></td>
        <td>0.1 energy/tick</td>
        <td>Per block of movement</td>
      </tr>
      <tr>
        <td><strong>Item Insertion</strong></td>
        <td>1-3 energy</td>
        <td>Based on destination container type</td>
      </tr>
      <tr>
        <td><strong>Filtering</strong></td>
        <td>+0.5 energy</td>
        <td>Additional cost for smart sources/sinks</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Energy Management Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:enable_energy_system</span>
  </div>
  <p>Enable the energy system for all pipes</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:check_energy_status</span>
  </div>
  <p>Display current energy levels and consumption</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_energy_source</span>
  </div>
  <p>Configure an energy source for your pipe network</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-sliders-h"></i>
    </div>
    <h2 class="card-title">Redstone Control</h2>
  </div>
  
  <p>Redstone control allows you to enable or disable pipe operations using redstone signals, perfect for automation and control systems.</p>
  
  <h3>Redstone Modes</h3>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-toggle-on"></i>
      </div>
      <h3 class="feature-title">Active High</h3>
      <p class="feature-description">Pipes operate when redstone signal is present (default)</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-toggle-off"></i>
      </div>
      <h3 class="feature-title">Active Low</h3>
      <p class="feature-description">Pipes operate when redstone signal is absent</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-clock"></i>
      </div>
      <h3 class="feature-title">Pulse Mode</h3>
      <p class="feature-description">Pipes operate only on redstone signal changes</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-wave-square"></i>
      </div>
      <h3 class="feature-title">Analog Control</h3>
      <p class="feature-description">Pipe speed varies with redstone signal strength</p>
    </div>
  </div>
  
  <h3>Redstone Control Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:enable_redstone_control</span>
  </div>
  <p>Enable redstone control for all pipes</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_redstone_mode</span>
  </div>
  <p>Set the redstone control mode for pipes</p>
  
  <h3>Redstone Integration Examples</h3>
  
  <h4>Day/Night Automation</h4>
  <p>Use daylight sensors to control pipe operations:</p>
  <pre><code class="language-minecraft"># Place a daylight sensor near your pipes
# Connect it to a redstone line
# Pipes will only operate during daylight hours</code></pre>
  
  <h4>Storage Level Control</h4>
  <p>Use comparators to control pipes based on storage levels:</p>
  <pre><code class="language-minecraft"># Place a comparator on a storage container
# Connect to redstone line leading to pipes
# Pipes stop when container is full</code></pre>
  
  <h4>Manual Override</h4>
  <p>Use levers or buttons for manual control:</p>
  <pre><code class="language-minecraft"># Place a lever near your pipe system
# Connect to redstone line
# Toggle pipes on/off manually</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-sort-amount-up"></i>
    </div>
    <h2 class="card-title">Priority System</h2>
  </div>
  
  <p>The priority system allows you to control the order in which pipes process items, essential for complex automation setups.</p>
  
  <h3>Priority Levels</h3>
  <p>Pipes can have priority levels from 1 (highest) to 10 (lowest):</p>
  
  <table>
    <thead>
      <tr>
        <th>Priority Level</th>
        <th>Description</th>
        <th>Use Case</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>1-2</strong></td>
        <td>Critical priority</td>
        <td>Emergency systems, essential resources</td>
      </tr>
      <tr>
        <td><strong>3-4</strong></td>
        <td>High priority</td>
        <td>Important production lines, fuel systems</td>
      </tr>
      <tr>
        <td><strong>5-6</strong></td>
        <td>Normal priority</td>
        <td>Standard item transport, general storage</td>
      </tr>
      <tr>
        <td><strong>7-8</strong></td>
        <td>Low priority</td>
        <td>Bulk storage, overflow systems</td>
      </tr>
      <tr>
        <td><strong>9-10</strong></td>
        <td>Background priority</td>
        <td>Cleanup systems, non-essential items</td>
      </tr>
    </tbody>
  </table>
  
  <h3>Priority Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_source_priority</span>
  </div>
  <p>Set priority for a pipe source</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:set_sink_priority</span>
  </div>
  <p>Set priority for a pipe sink</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:list_priorities</span>
  </div>
  <p>Display priority levels for all pipes</p>
  
  <h3>Priority Examples</h3>
  
  <h4>Fuel Management System</h4>
  <pre><code class="language-minecraft"># High priority (3): Fuel to active furnaces
# Normal priority (5): Fuel to storage
# Low priority (7): Fuel to backup storage</code></pre>
  
  <h4>Resource Processing</h4>
  <pre><code class="language-minecraft"># Critical priority (1): Essential items (food, tools)
# High priority (3): Processing materials (ores, crops)
# Normal priority (5): Decorative items, building materials</code></pre>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-network-wired"></i>
    </div>
    <h2 class="card-title">Network Management</h2>
  </div>
  
  <p>Advanced network management features for complex pipe systems with multiple sources, sinks, and routing options.</p>
  
  <h3>Network Topology</h3>
  <p>Understanding how pipes connect and route items:</p>
  
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-project-diagram"></i>
      </div>
      <h3 class="feature-title">Star Network</h3>
      <p class="feature-description">Multiple sources feeding into a central hub</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-sitemap"></i>
      </div>
      <h3 class="feature-title">Tree Network</h3>
      <p class="feature-description">Hierarchical structure with main and branch lines</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-circle"></i>
      </div>
      <h3 class="feature-title">Ring Network</h3>
      <p class="feature-description">Circular routing for redundancy and load balancing</p>
    </div>
    
    <div class="feature-card">
      <div class="feature-icon">
        <i class="fas fa-share-alt"></i>
      </div>
      <h3 class="feature-title">Mesh Network</h3>
      <p class="feature-description">Multiple connections for maximum flexibility</p>
    </div>
  </div>
  
  <h3>Network Commands</h3>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:network_status</span>
  </div>
  <p>Display network topology and connection status</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:optimize_network</span>
  </div>
  <p>Automatically optimize network routing and performance</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:network_backup</span>
  </div>
  <p>Create a backup of current network configuration</p>
  
  <div class="command-example">
    <span class="prompt">$</span> <span class="command">/function pipes:network_restore</span>
  </div>
  <p>Restore network configuration from backup</p>
</div>

<div class="alert alert-warning">
  <h3><i class="fas fa-exclamation-triangle"></i> Performance Considerations</h3>
  <p>Advanced features can impact performance in large worlds. Consider the following:</p>
  <ul>
    <li><strong>Energy System:</strong> Adds computational overhead for energy calculations</li>
    <li><strong>Filtering:</strong> Increases processing time for item checks</li>
    <li><strong>Priority System:</strong> Requires sorting operations for item queues</li>
    <li><strong>Redstone Control:</strong> Adds redstone signal monitoring overhead</li>
  </ul>
  <p>Use the performance optimization commands to balance features with performance.</p>
</div>

<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-tools"></i>
    </div>
    <h2 class="card-title">Advanced Commands Reference</h2>
  </div>
  
  <table>
    <thead>
      <tr>
        <th>Command</th>
        <th>Description</th>
        <th>Category</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>/function pipes:advanced_help</code></td>
        <td>Show all advanced features and commands</td>
        <td>General</td>
      </tr>
      <tr>
        <td><code>/function pipes:create_smart_source</code></td>
        <td>Create source with filtering capabilities</td>
        <td>Filtering</td>
      </tr>
      <tr>
        <td><code>/function pipes:create_smart_sink</code></td>
        <td>Create sink with filtering capabilities</td>
        <td>Filtering</td>
      </tr>
      <tr>
        <td><code>/function pipes:set_source_filter</code></td>
        <td>Configure item filter for source</td>
        <td>Filtering</td>
      </tr>
      <tr>
        <td><code>/function pipes:set_sink_filter</code></td>
        <td>Configure item filter for sink</td>
        <td>Filtering</td>
      </tr>
      <tr>
        <td><code>/function pipes:enable_energy_system</code></td>
        <td>Enable energy consumption for pipes</td>
        <td>Energy</td>
      </tr>
      <tr>
        <td><code>/function pipes:check_energy_status</code></td>
        <td>Display energy levels and consumption</td>
        <td>Energy</td>
      </tr>
      <tr>
        <td><code>/function pipes:set_energy_source</code></td>
        <td>Configure energy source for network</td>
        <td>Energy</td>
      </tr>
      <tr>
        <td><code>/function pipes:enable_redstone_control</code></td>
        <td>Enable redstone control for pipes</td>
        <td>Redstone</td>
      </tr>
      <tr>
        <td><code>/function pipes:set_redstone_mode</code></td>
        <td>Set redstone control mode</td>
        <td>Redstone</td>
      </tr>
      <tr>
        <td><code>/function pipes:set_source_priority</code></td>
        <td>Set priority for pipe source</td>
        <td>Priority</td>
      </tr>
      <tr>
        <td><code>/function pipes:set_sink_priority</code></td>
        <td>Set priority for pipe sink</td>
        <td>Priority</td>
      </tr>
      <tr>
        <td><code>/function pipes:network_status</code></td>
        <td>Display network topology</td>
        <td>Network</td>
      </tr>
      <tr>
        <td><code>/function pipes:optimize_network</code></td>
        <td>Optimize network performance</td>
        <td>Network</td>
      </tr>
    </tbody>
  </table>
</div>

<div class="alert alert-success">
  <h3><i class="fas fa-graduation-cap"></i> Next Steps</h3>
  <p>Now that you understand the advanced features, explore the <a href="/configuration">Configuration Guide</a> to learn how to customize these features for your specific needs, or check out the <a href="/api-reference">API Reference</a> for technical details.</p>
</div>
