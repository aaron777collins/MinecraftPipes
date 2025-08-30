---
layout: docs
title: "Quick Start Guide"
description: "Get up and running with Minecraft Pipes in minutes"
permalink: /docs/quick-start/
---

# Quick Start Guide

Get started with Minecraft Pipes in just a few minutes! This guide will walk you through creating your first pipe network.

## 🚀 Prerequisites

Before you begin, make sure you have:

- ✅ **Minecraft Pipes installed** (see [Installation Guide](/docs/installation/))
- ✅ **Datapack loaded** (run `/reload` in-game)
- ✅ **Basic materials**: Glass, Iron Ingots, Redstone, Hoppers

## 🎯 Your First Pipe Network

Let's create a simple pipe network that moves items from one chest to another.

### Step 1: Set Up Your Chests

1. **Place two chests** a few blocks apart
2. **Add some items** to the first chest (source)
3. **Leave the second chest empty** (destination)

### Step 2: Create the Pipe Network

Run these commands in order:

```bash
# Create inlet pipe next to source chest
/function pipes:create_inlet_pipe

# Create basic pipes to connect them
/function pipes:create_pipe
/function pipes:create_pipe

# Create outlet pipe next to destination chest
/function pipes:create_outlet_pipe
```

### Step 3: Power the System

1. **Place a redstone block** next to the inlet pipe
2. **Watch the magic happen!** Items will start flowing through the pipes

## 🎮 Basic Commands

Here are the essential commands you'll use:

### Pipe Creation Commands
```bash
/function pipes:create_pipe          # Basic pipe
/function pipes:create_inlet_pipe    # Inlet pipe (extracts items)
/function pipes:create_outlet_pipe   # Outlet pipe (deposits items)
```

### Testing Commands
```bash
/function pipes:test_help            # Show all test commands
/function pipes:test_setup           # Create a sample network
/function pipes:test_cleanup         # Remove test pipes
```

### Debug Commands
```bash
/function pipes:debug_pipe           # Show pipe information
/function pipes:show_pipe_info       # Detailed pipe status
```

## 📦 Understanding Pipe Types

### Basic Pipe
- **What it does**: Transports items between other pipes
- **When to use**: Connect inlet and outlet pipes
- **Recipe**: 3 glass blocks in a vertical line

### Inlet Pipe
- **What it does**: Extracts items from adjacent chests
- **When to use**: Start of your pipe network
- **Control**: Requires redstone power
- **Recipe**: Glass + Redstone + Iron Ingot

### Outlet Pipe
- **What it does**: Deposits items into adjacent chests
- **When to use**: End of your pipe network
- **Control**: Automatic
- **Recipe**: Glass + Hopper + Iron Ingot

## ⚡ Redstone Control

### Powering Inlet Pipes
- **Redstone Block**: Constant power (signal strength 15)
- **Redstone Torch**: Constant power
- **Lever**: Toggle on/off
- **Button**: Temporary power
- **Pressure Plate**: Power when stepped on

### Signal Strength
- **Higher signal** = Faster extraction
- **Signal strength 1-15** = 1-15 items per cycle
- **No signal** = No extraction

## 🔧 Common Patterns

### Simple Transfer
```
Chest → Inlet Pipe → Basic Pipe → Outlet Pipe → Chest
```

### Multiple Destinations
```
Chest → Inlet Pipe → Junction → Outlet Pipe → Chest 1
                    ↓
                    Outlet Pipe → Chest 2
```

### Redstone Control
```
Redstone Block → Inlet Pipe → Basic Pipe → Outlet Pipe → Chest
```

## 🎯 Quick Examples

### Example 1: Basic Item Transfer
```bash
# 1. Place two chests 3 blocks apart
# 2. Add items to first chest
# 3. Run these commands:

/function pipes:create_inlet_pipe
/function pipes:create_pipe
/function pipes:create_pipe
/function pipes:create_outlet_pipe

# 4. Place redstone block next to inlet pipe
```

### Example 2: Sorting System
```bash
# 1. Place one source chest and two destination chests
# 2. Run these commands:

/function pipes:create_inlet_pipe
/function pipes:create_pipe
/function pipes:create_pipe
/function pipes:create_outlet_pipe
/function pipes:create_pipe
/function pipes:create_outlet_pipe

# 3. Power the inlet pipe
```

### Example 3: Test Setup
```bash
# Create a complete test system instantly:
/function pipes:test_setup

# This creates:
# - Source chest with items
# - Inlet pipe
# - Basic pipes
# - Outlet pipe
# - Destination chest
# - Redstone power source
```

## 🚨 Troubleshooting

### Common Issues

**Pipes not connecting:**
- Make sure pipes are adjacent to each other
- Check that pipe entities were created
- Use `/function pipes:debug_pipe` to check status

**Items not moving:**
- Ensure inlet pipe has redstone power
- Check that source chest has items
- Verify outlet pipe is next to destination chest

**Performance issues:**
- Reduce network size
- Check for entity buildup
- Monitor server performance

### Debug Steps
1. **Check datapack**: `/datapack list`
2. **Reload**: `/reload`
3. **Test setup**: `/function pipes:test_setup`
4. **Debug info**: `/function pipes:debug_pipe`

## 🎮 Next Steps

Now that you have the basics, try these:

1. **Build a sorting system** with multiple outlet pipes
2. **Create a redstone-controlled system** with levers and buttons
3. **Design a complex network** with junctions and branches
4. **Experiment with different materials** and recipes

## 📚 Learn More

- **[Features Guide](/docs/features/)**: Complete feature overview
- **[Examples](/docs/examples/)**: Advanced usage examples
- **[API Reference](/docs/api/)**: All available commands
- **[Troubleshooting](/docs/troubleshooting/)**: Common problems and solutions

## 🆘 Need Help?

- **Discord**: Join our [Discord server](https://discord.gg/minecraft-pipes)
- **GitHub**: Report issues on [GitHub](https://github.com/minecraft-pipes/issues)
- **Documentation**: Check our [Support Guide](/docs/support/)

---

**Ready to build amazing pipe networks?** Start experimenting and have fun! 🚀
