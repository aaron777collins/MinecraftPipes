---
layout: docs
title: "Features Overview"
description: "Comprehensive guide to all Minecraft Pipes features and capabilities"
permalink: /docs/features/
---

# Features Overview

Minecraft Pipes is a comprehensive datapack that brings advanced item transportation to your Minecraft world. Here's everything you can do with it!

## 🚀 Core Features

### Visual Pipe System
- **See-through Pipes**: Transparent glass pipes that connect automatically
- **Smooth Animations**: Items move through pipes with fluid motion
- **Visual Feedback**: See exactly what's happening in your pipe network
- **Color Coding**: Different pipe types have distinct colors and appearances

### Item Transportation
- **Automatic Movement**: Items flow through connected pipes without manual intervention
- **Multiple Items**: Up to 4 items can travel through each pipe simultaneously
- **Smart Routing**: Items find the shortest path to their destination
- **Chest Integration**: Automatic detection and connection to adjacent chests

### Redstone Control
- **Power Activation**: Inlet pipes require redstone power to extract items
- **Signal Strength**: Redstone power level affects extraction speed
- **Flexible Control**: Can be configured for inverted logic if needed
- **Automation Ready**: Perfect for complex redstone contraptions

## 📦 Pipe Types

### Basic Pipe
The foundation of any pipe network.

<div class="feature-detail">
  <div class="feature-icon basic"></div>
  <div class="feature-content">
    <h3>Basic Pipe</h3>
    <p>Transparent glass pipes that connect and transport items between other pipes.</p>
    <ul>
      <li><strong>Material:</strong> Glass</li>
      <li><strong>Capacity:</strong> 4 items</li>
      <li><strong>Connections:</strong> Automatic</li>
      <li><strong>Recipe:</strong> 3 glass blocks in a vertical line</li>
    </ul>
  </div>
</div>

### Inlet Pipe
Extracts items from chests when powered with redstone.

<div class="feature-detail">
  <div class="feature-icon inlet"></div>
  <div class="feature-content">
    <h3>Inlet Pipe</h3>
    <p>Red-tinted pipes that extract items from adjacent chests when powered with redstone.</p>
    <ul>
      <li><strong>Material:</strong> Glass + Redstone + Iron Ingot</li>
      <li><strong>Function:</strong> Item extraction</li>
      <li><strong>Control:</strong> Redstone power required</li>
      <li><strong>Speed:</strong> Based on redstone signal strength</li>
    </ul>
  </div>
</div>

### Outlet Pipe
Deposits items into chests automatically.

<div class="feature-detail">
  <div class="feature-icon outlet"></div>
  <div class="feature-content">
    <h3>Outlet Pipe</h3>
    <p>Blue-tinted pipes that deposit items into adjacent chests automatically.</p>
    <ul>
      <li><strong>Material:</strong> Glass + Hopper + Iron Ingot</li>
      <li><strong>Function:</strong> Item deposit</li>
      <li><strong>Control:</strong> Automatic</li>
      <li><strong>Priority:</strong> First available slot</li>
    </ul>
  </div>
</div>

### Pipe Junction
Allows branching and complex network designs.

<div class="feature-detail">
  <div class="feature-icon junction"></div>
  <div class="feature-content">
    <h3>Pipe Junction</h3>
    <p>Yellow-tinted pipes that allow branching and complex network designs.</p>
    <ul>
      <li><strong>Material:</strong> Glass + Redstone</li>
      <li><strong>Function:</strong> Network branching</li>
      <li><strong>Connections:</strong> Multiple directions</li>
      <li><strong>Routing:</strong> Smart pathfinding</li>
    </ul>
  </div>
</div>

## ⚡ Advanced Features

### Performance Optimization
- **Efficient Processing**: Pipe networks processed every 4 ticks
- **Smart Scheduling**: Different systems run at optimal intervals
- **Memory Management**: Minimal impact on server performance
- **Scalable Design**: Works with both small and large networks

### Network Intelligence
- **Automatic Connections**: Pipes detect and connect to adjacent pipes
- **Pathfinding**: Items find optimal routes through complex networks
- **Load Balancing**: Items distribute evenly across available paths
- **Error Recovery**: System handles broken connections gracefully

### Visual System
- **Custom Textures**: Resource pack with beautiful pipe models
- **Particle Effects**: Visual feedback for item movement
- **Status Indicators**: Clear visual cues for pipe states
- **Connection Lines**: Visual representation of pipe connections

## 🎮 Use Cases

### Basic Item Transport
Connect chests with simple pipe networks for basic item movement.

```bash
# Create a simple pipe network
/function pipes:create_pipe          # Place basic pipes
/function pipes:create_inlet_pipe    # Connect to source chest
/function pipes:create_outlet_pipe   # Connect to destination chest
```

### Automated Sorting
Use multiple outlet pipes to sort items into different chests.

<div class="use-case">
  <h4>Sorting System Setup</h4>
  <ol>
    <li>Place inlet pipe next to source chest</li>
    <li>Create pipe network with multiple branches</li>
    <li>Place outlet pipes next to destination chests</li>
    <li>Power inlet pipe with redstone</li>
    <li>Watch items automatically sort!</li>
  </ol>
</div>

### Redstone Automation
Control item flow with redstone signals for complex automation.

<div class="use-case">
  <h4>Automation Examples</h4>
  <ul>
    <li><strong>Timed Extraction:</strong> Use redstone clocks for periodic item movement</li>
    <li><strong>Conditional Flow:</strong> Use redstone logic for conditional item routing</li>
    <li><strong>Batch Processing:</strong> Control extraction speed with signal strength</li>
    <li><strong>Safety Systems:</strong> Use redstone to prevent overflow</li>
  </ul>
</div>

### Factory Systems
Build large-scale item processing and distribution networks.

<div class="use-case">
  <h4>Factory Components</h4>
  <ul>
    <li><strong>Input Stations:</strong> Multiple inlet pipes for different materials</li>
    <li><strong>Processing Lines:</strong> Pipe networks connecting machines</li>
    <li><strong>Output Distribution:</strong> Outlet pipes for finished products</li>
    <li><strong>Storage Systems:</strong> Centralized storage with automatic distribution</li>
  </ul>
</div>

## 🔧 Technical Specifications

### Performance Metrics
| Metric | Value |
|--------|-------|
| **Processing Interval** | Every 2-4 ticks |
| **Item Capacity** | 4 items per pipe |
| **Connection Range** | Adjacent blocks only |
| **Redstone Response** | 1-15 signal strength |
| **Memory Usage** | Minimal impact |
| **Network Size** | Unlimited (performance dependent) |

### Compatibility
- **Minecraft Version**: 1.21+ (Pack Format 82)
- **Multiplayer**: Full server support
- **Mod Compatibility**: Works with most mods
- **Resource Packs**: Optional custom textures

### Limitations
- **Block Connections**: Pipes only connect to adjacent blocks
- **Item Types**: All vanilla items supported
- **Network Size**: Performance decreases with very large networks
- **Redstone Range**: Standard redstone signal range

## 🎯 Advanced Capabilities

### Customization Options
- **Performance Tuning**: Adjust processing intervals for your needs
- **Item Limits**: Configure maximum items per pipe
- **Movement Speed**: Control how fast items travel
- **Redstone Logic**: Invert redstone control if needed

### Debug Features
- **Pipe Information**: Get detailed info about any pipe
- **Network Analysis**: View entire pipe network status
- **Performance Monitoring**: Track system performance
- **Error Detection**: Identify and fix issues

### Testing Tools
- **Test Setup**: Create sample pipe networks instantly
- **Cleanup Tools**: Remove test pipes and entities
- **Validation**: Verify pipe network integrity
- **Examples**: Pre-built demonstration systems

## 🚀 Getting Started

Ready to start using Minecraft Pipes? Here's how to get started:

1. **Install the Datapack**: Follow our [Installation Guide](/docs/installation/)
2. **Learn the Basics**: Read our [Quick Start Guide](/docs/quick-start/)
3. **Explore Examples**: Check out our [Examples](/docs/examples/)
4. **Join the Community**: Get help in our [Discord server](https://discord.gg/minecraft-pipes)

## 📚 Related Documentation

- **[Installation Guide](/docs/installation/)**: How to install Minecraft Pipes
- **[Quick Start Guide](/docs/quick-start/)**: Get up and running quickly
- **[API Reference](/docs/api/)**: Complete function and command reference
- **[Examples](/docs/examples/)**: Real-world usage examples
- **[Troubleshooting](/docs/troubleshooting/)**: Common issues and solutions

---

**Have questions about features?** Check out our [Support Guide](/docs/support/) or ask in our [Discord community](https://discord.gg/minecraft-pipes)!
