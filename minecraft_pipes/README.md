# Minecraft Pipes Datapack

A comprehensive Minecraft datapack that creates a visual pipe system for transporting items between chests, inspired by the classic Tekkit pipes but implemented as a datapack with custom blocks, animations, and redstone control.

## Features

### 🚀 Core Features
- **Visual Pipe System**: See-through pipes that connect to transport items
- **Item Animation**: Watch items travel through pipes with smooth movement
- **Redstone Control**: Power inlet pipes with redstone to control item extraction
- **Multiple Pipe Types**: Basic pipes, inlet pipes, outlet pipes, and junctions
- **Chest Integration**: Automatically connect to adjacent chests for input/output
- **Affordable Crafting**: Uses common materials like glass, iron, and redstone

### 🎮 Pipe Types

#### Basic Pipe
- **Crafting**: 3 glass blocks in a vertical line
- **Function**: Transports items between other pipes
- **Appearance**: Transparent glass with metallic rim

#### Inlet Pipe (Red)
- **Crafting**: Glass + Redstone + Iron Ingot
- **Function**: Extracts items from adjacent chests
- **Control**: Requires redstone power to activate
- **Appearance**: Red-tinted glass with extraction indicators

#### Outlet Pipe (Blue)
- **Crafting**: Glass + Hopper + Iron Ingot
- **Function**: Deposits items into adjacent chests
- **Control**: Automatic operation
- **Appearance**: Blue-tinted glass with deposit indicators

#### Pipe Junction (Yellow)
- **Crafting**: Glass + Redstone in cross pattern
- **Function**: Allows pipes to branch in multiple directions
- **Control**: Automatic routing
- **Appearance**: Yellow-tinted glass with connection points

## Installation

### Prerequisites
- Minecraft 1.21+ (Pack Format 82)
- MDL (Minecraft Datapack Language) compiler

### Installation Steps

1. **Build the Datapack**:
   ```bash
   cd minecraft_pipes
   mdl build --mdl . --output dist
   ```

2. **Install the Datapack**:
   - Copy the generated `dist` folder to your world's `datapacks` directory
   - Or use the provided release script: `./scripts/release.sh`

3. **Load the Datapack**:
   - In-game: `/reload` or `/datapack enable minecraft_pipes`
   - Or restart your world

4. **Optional Resource Pack**:
   - Copy the `resource_pack` folder to your world's `resourcepacks` directory
   - Enable it in the resource pack settings

## Usage

### Basic Setup

1. **Create Pipes**:
   ```
   /function pipes:create_pipe          # Basic pipe
   /function pipes:create_inlet_pipe    # Inlet pipe
   /function pipes:create_outlet_pipe   # Outlet pipe
   ```

2. **Connect Pipes**:
   - Place pipes adjacent to each other
   - They will automatically connect
   - Pipes can connect in all 6 directions (N, S, E, W, Up, Down)

3. **Connect to Chests**:
   - Place inlet pipes next to source chests
   - Place outlet pipes next to destination chests
   - Pipes will automatically detect adjacent chests

4. **Power the System**:
   - Provide redstone power to inlet pipes
   - Items will start flowing through the pipe network

### Advanced Usage

#### Redstone Control
- **Power Level 1-15**: Controls extraction speed
- **Power Level 0**: Stops extraction
- **Inverted Logic**: Can be configured for opposite behavior

#### Pipe Networks
- **Automatic Routing**: Items find the shortest path to destinations
- **Multiple Destinations**: Items distribute evenly among available outlets
- **Network Optimization**: Efficient processing for large pipe systems

#### Debug Commands
```
/function pipes:debug_pipe              # Show pipe information
/scoreboard objectives list             # View pipe statistics
```

## Crafting Recipes

### Basic Pipe
```
   G
   G  → 4x Basic Pipes
   G
```

### Inlet Pipe
```
   R
  GIG  → 1x Inlet Pipe
   G
```

### Outlet Pipe
```
   H
  GIG  → 1x Outlet Pipe
   G
```

### Pipe Junction
```
   G
  GRG  → 1x Pipe Junction
   G
```

**Legend**: G = Glass, R = Redstone, I = Iron Ingot, H = Hopper

## Technical Details

### Performance
- **Optimized Processing**: Pipe networks processed every 4 ticks
- **Item Movement**: Items move every 2 ticks for smooth animation
- **Redstone Detection**: Checked every 10 ticks for efficiency
- **Entity Management**: Automatic cleanup of visual item entities

### Limitations
- **Render Distance**: Particle effects may not be visible at long distances
- **Network Size**: Very large pipe networks may impact performance
- **Multiplayer**: Synchronization may have slight delays
- **Compatibility**: May conflict with other mods/datapacks

### Customization
- **Item Movement Speed**: Adjustable via `item_movement_speed` variable
- **Max Items Per Pipe**: Configurable via `max_items_per_pipe` variable
- **Redstone Sensitivity**: Can be modified in the redstone detection functions

## Troubleshooting

### Common Issues

**Pipes not connecting**:
- Ensure pipes are placed adjacent to each other
- Check that the datapack is properly loaded
- Verify pipe entities are created correctly

**Items not moving**:
- Check redstone power on inlet pipes
- Ensure destination chests have space
- Verify pipe connections are valid

**Performance issues**:
- Reduce the size of pipe networks
- Increase processing intervals in the main function
- Check for entity buildup in the world

### Debug Steps

1. **Check Datapack Status**:
   ```
   /datapack list
   /reload
   ```

2. **Verify Pipe Entities**:
   ```
   /function pipes:debug_pipe
   ```

3. **Check Scoreboards**:
   ```
   /scoreboard objectives list
   /scoreboard players list @e[type=minecraft:marker]
   ```

## Development

### Project Structure
```
minecraft_pipes/
├── minecraft_pipes.mdl      # Main datapack logic
├── recipes.mdl              # Crafting recipes
├── FEATURES.md              # Feature documentation
├── resource_pack/           # Custom textures and models
└── README.md               # This file
```

### Building
```bash
# Build datapack
mdl build --mdl . --output dist

# Check for errors
mdl check .

# Run tests
mdl test .
```

### Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Inspired by classic Tekkit/BuildCraft pipes
- Built with MDL (Minecraft Datapack Language)
- Community feedback and testing

## Version History

### v1.0.0 (Current)
- Basic pipe system implementation
- Inlet and outlet pipes
- Redstone control
- Visual item movement
- Crafting recipes
- Resource pack support

### Planned Features
- Item filtering system
- Advanced pipe types
- Pipe upgrades and tiers
- Network optimization
- Enhanced visual effects
- Multi-dimensional support
