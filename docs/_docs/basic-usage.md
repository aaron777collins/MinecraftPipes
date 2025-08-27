---
layout: page
title: Basic Usage
---

# Basic Usage Guide

Learn how to create and use pipes to transport items between containers in Minecraft.

## Getting Started

### Prerequisites
- Minecraft Pipes System installed and loaded
- Basic understanding of Minecraft commands
- Some containers (chests, barrels, etc.) and items to transport

### Quick Setup
1. **Get the pipe wrench**: `/function pipes:give_wrench`
2. **Create a source**: `/function pipes:create_source`
3. **Create a sink**: `/function pipes:create_sink`
4. **Place containers**: Put chests below the markers
5. **Add items**: Put items in the source chest
6. **Watch the magic**: Items will flow through the air!

## Creating Your First Pipe

### Step 1: Create a Source

1. **Stand where you want the source** (where items will come from)
2. **Run the command**:
   ```bash
   /function pipes:create_source
   ```
3. **You'll see**: A marker appears with the message "Source created with ID: X"
4. **Place a container**: Put a chest, barrel, hopper, dropper, or dispenser below the marker

### Step 2: Create a Sink

1. **Move to where you want the sink** (where items will go to)
2. **Run the command**:
   ```bash
   /function pipes:create_sink
   ```
3. **You'll see**: A marker appears with the message "Sink created with ID: X"
4. **Place a container**: Put a chest, barrel, hopper, dropper, or dispenser below the marker

### Step 3: Add Items and Watch

1. **Add items to the source container** (the one below the source marker)
2. **Wait a moment** - items will start flowing as visible tokens
3. **Watch the transfer** - tokens move through the air to the sink
4. **Check the destination** - items appear in the sink container

## Basic Commands

### Essential Commands

| Command | Description | Usage |
|---------|-------------|-------|
| `/function pipes:help` | Show all available commands | Always available |
| `/function pipes:create_source` | Create a pipe source | Stand where you want the source |
| `/function pipes:create_sink` | Create a pipe sink | Stand where you want the sink |
| `/function pipes:list_connections` | List all active pipes | Check your setup |
| `/function pipes:clear_all` | Remove all pipes | Clean slate |

### Management Commands

| Command | Description | Usage |
|---------|-------------|-------|
| `/function pipes:check_pipe_status` | Check system status | Debug issues |
| `/function pipes:debug_pipes` | Show debug information | Troubleshooting |
| `/function pipes:remove_pipe` | Remove nearby pipe | Stand near the pipe to remove |

## Container Types

The pipe system supports all vanilla storage blocks:

### Full-Size Containers (64 items per slot)
- **Chests** - Most common, good for large storage
- **Barrels** - Compact, good for automation

### Small Containers
- **Hoppers** - 5 items per slot, good for automation
- **Droppers** - 9 items per slot, good for redstone
- **Dispensers** - 9 items per slot, good for redstone

### Container Placement
- **Place containers directly below** the source/sink markers
- **One container per marker** - the system checks the block below each marker
- **Containers must be accessible** - don't place them inside walls or underground

## How It Works

### The Pipe System Process

1. **Source Detection**: The system checks for containers below source markers
2. **Token Creation**: Items are converted into visible tokens (item displays)
3. **Token Movement**: Tokens move through the air at a configurable speed
4. **Destination Detection**: When tokens reach sink markers, they check for containers
5. **Item Transfer**: Items are transferred from tokens to destination containers
6. **Cleanup**: Tokens are removed after successful transfer

### Visual Indicators

- **Source Markers**: Invisible markers that extract items
- **Sink Markers**: Invisible markers that receive items
- **Tokens**: Visible item displays that show items moving through the air
- **Messages**: Chat messages confirm successful operations

## Common Use Cases

### Simple Storage Transfer
```
Source Chest → Pipe → Destination Chest
```
- Good for moving items between storage areas
- Works with any container type

### Automated Sorting
```
Multiple Sources → Pipes → Different Sinks
```
- Use different containers for different item types
- Create organized storage systems

### Resource Collection
```
Farms → Pipes → Storage
```
- Connect farms to central storage
- Automate resource collection

## Troubleshooting

### Common Issues

#### "No items are flowing"
- **Check**: Are there items in the source container?
- **Check**: Is the source container below the source marker?
- **Check**: Is the sink container below the sink marker?
- **Solution**: Run `/function pipes:list_connections` to verify setup

#### "Items are stuck"
- **Check**: Are containers full?
- **Check**: Is the sink container accessible?
- **Solution**: Clear some space in the destination container

#### "No markers visible"
- **Check**: Did the commands complete successfully?
- **Check**: Do you have operator permissions?
- **Solution**: Run `/function pipes:create_source` again

#### "System not responding"
- **Check**: Is the datapack loaded?
- **Solution**: Run `/reload` and try again
- **Check**: Run `/function pipes:ping` to test the system

### Debug Commands

```bash
# Check if system is working
/function pipes:ping

# List all connections
/function pipes:list_connections

# Show system status
/function pipes:check_pipe_status

# Enable debug mode
/function pipes:toggle_debug

# Show debug information
/function pipes:debug_pipes
```

## Next Steps

Once you're comfortable with basic pipes:

1. **Learn about [Advanced Features](advanced-features)** like filtering and redstone control
2. **Explore [Configuration Options](configuration)** to customize the system
3. **Check out [Performance Optimization](configuration#performance-optimization)** for large setups
4. **Read the [API Reference](api-reference)** for technical details

## Tips and Best Practices

### Performance
- **Limit the number of active pipes** in large worlds
- **Use appropriate flow rates** for your setup
- **Clean up unused pipes** with `/function pipes:clear_all`

### Organization
- **Use descriptive names** for your pipe setups
- **Group related pipes** together
- **Document your setups** for future reference

### Safety
- **Backup your world** before making major changes
- **Test in creative mode** before using in survival
- **Start small** and expand gradually
