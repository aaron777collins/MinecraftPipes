# Minecraft Pipes System

An advanced pipe system for item transportation between containers in Minecraft, built using the [Minecraft Datapack Language (MDL)](https://www.aaroncollins.info/MinecraftDatapackLanguage/docs/language-reference/) with support for conditional logic.

## Features

### 🚀 Core Features
- **Item Transportation**: Automatically move items between containers
- **Multiple Container Support**: Works with chests, barrels, hoppers, droppers, dispensers, and shulker boxes
- **Visual Tokens**: See items flowing through the air as visible tokens
- **Smart Item Detection**: Automatically detects and transports different item types

### 🔧 Advanced Features
- **Conditional Logic**: Uses MDL's new `if`/`else if`/`else` syntax for complex decision making
- **Energy System**: Pipes consume energy and can be recharged
- **Redstone Control**: Enable/disable pipes with redstone signals
- **Priority System**: Set priorities for multiple pipe sources
- **Item Filtering**: Filter specific items for extraction and insertion
- **Performance Modes**: Optimize for different computer capabilities

### 🎮 User-Friendly
- **Debug Mode**: Detailed logging and troubleshooting
- **Demo System**: Built-in demonstrations for all features
- **Configuration System**: Easy-to-use settings management
- **Help System**: Comprehensive command documentation

## New Conditional Syntax

This datapack showcases MDL's new conditional syntax, making complex logic much cleaner and more readable:

### Basic Conditionals
```mdl
function "example":
    if "entity @s[type=minecraft:player]":
        say Player detected!
        effect give @s minecraft:glowing 5 1
    else if "entity @s[type=minecraft:zombie]":
        say Zombie detected!
        effect give @s minecraft:poison 5 1
    else:
        say Unknown entity
        effect give @s minecraft:slowness 5 1
```

### Complex Conditionals
```mdl
function "smart_item_detection":
    if "block ~ ~-1 ~ minecraft:chest":
        execute store result score #temp pipes_tmp run data get block ~ ~-1 ~ Items[{id:"minecraft:diamond"}].Count
        if "score #temp pipes_tmp > 0":
            function pipes:spawn_diamond_token
            return
        else if "score #temp pipes_tmp = 0":
            function pipes:spawn_iron_token
    else:
        say No container found
```

## Installation

1. **Download the datapack**: Clone or download this repository
2. **Compile with MDL**: Use the MDL compiler to generate the datapack
   ```bash
   mdl build src/ dist/minecraft_pipes/
   ```
3. **Install in Minecraft**: Copy the generated datapack to your world's `datapacks` folder
4. **Load the datapack**: In-game, run `/reload` or `/datapack enable minecraft_pipes`

## Quick Start

1. **Initialize the system**:
   ```
   /function pipes:init
   ```

2. **Create a pipe source**:
   ```
   /function pipes:create_source
   ```
   Then place a chest below the marker and add items.

3. **Create a pipe sink**:
   ```
   /function pipes:create_sink
   ```
   Then place a chest below the marker.

4. **Watch items flow!** Items will automatically move from source to sink.

## Commands

### Basic Commands
- `/function pipes:help` - Show all available commands
- `/function pipes:create_source` - Create a pipe source
- `/function pipes:create_sink` - Create a pipe sink
- `/function pipes:list_connections` - List all active connections
- `/function pipes:clear_all` - Remove all pipes

### Configuration Commands
- `/function pipes:config_help` - Configuration commands
- `/function pipes:toggle_debug` - Enable/disable debug mode
- `/function pipes:show_config` - Show current settings
- `/function pipes:optimize_performance` - Optimize for better FPS

### Advanced Commands
- `/function pipes:advanced_help` - Advanced features
- `/function pipes:create_smart_source` - Create source with filtering
- `/function pipes:create_smart_sink` - Create sink with filtering
- `/function pipes:set_redstone_control` - Enable redstone control
- `/function pipes:set_priority` - Set pipe priority

### Demo Commands
- `/function pipes:demo_help` - Show all demos
- `/function pipes:demo_basic_pipe` - Basic pipe demonstration
- `/function pipes:demo_advanced_pipe` - Advanced features demo
- `/function pipes:demo_redstone_control` - Redstone control demo
- `/function pipes:quick_start` - Quick start guide

## File Structure

```
src/
├── core.mdl              # Main datapack configuration and tags
├── pipes.mdl             # Core pipe system with conditionals
├── pipes_config.mdl      # Configuration system
├── pipes_advanced.mdl    # Advanced features (energy, redstone, etc.)
└── example_usage.mdl     # Demo and example functions
```

## Conditional Logic Examples

### Energy Management
```mdl
function "tick_main":
    if "score #global pipes_energy > 0":
        # Normal operation
        function pipes:spawn_from_sources
        function pipes:move_all_tokens
    else:
        # Low energy warning
        if "score #global pipes_tick % 200 = 0":
            tellraw @a [{"text":"[PIPES] Warning: System low on energy!","color":"red"}]
```

### Smart Container Detection
```mdl
function "process_item_transfer":
    if "block ~ ~-1 ~ minecraft:chest":
        function pipes:transfer_to_chest
    else if "block ~ ~-1 ~ minecraft:barrel":
        function pipes:transfer_to_barrel
    else if "block ~ ~-1 ~ minecraft:hopper":
        function pipes:transfer_to_hopper
    else:
        if "score #global pipes_debug = 1":
            tellraw @a [{"text":"[PIPES DEBUG] No container found at sink","color":"yellow"}]
```

### Priority System
```mdl
function "check_priority_order":
    if "entity @e[type=marker,tag=pipes.source,scores={pipes_priority=6..}]":
        # Higher priority source exists, don't spawn
        if "score #global pipes_debug = 1":
            tellraw @a [{"text":"[PIPES DEBUG] Higher priority source exists","color":"yellow"}]
    else:
        # No higher priority source, spawn token
        function pipes:spawn_one_token
```

## Performance Optimization

The system includes three performance modes:

- **High Performance**: Fast flow rate, high token speed
- **Optimized**: Balanced for most computers
- **Low Performance**: Slow flow rate, low token speed for older computers

Run `/function pipes:high_performance`, `/function pipes:optimize_performance`, or `/function pipes:low_performance` to switch modes.

## Troubleshooting

### Common Issues

1. **Items not flowing**: Check if containers are placed below markers
2. **System not working**: Run `/function pipes:init`
3. **No debug messages**: Run `/function pipes:toggle_debug`
4. **Low performance**: Run `/function pipes:low_performance`

### Debug Mode

Enable debug mode for detailed information:
```
/function pipes:toggle_debug
/function pipes:debug_show_entities
```

## Technical Details

### Scoreboard Objectives
- `pipes_tick` - Global tick counter
- `pipes_steps` - Token movement steps
- `pipes_energy` - Energy system
- `pipes_priority` - Priority system
- `pipes_debug` - Debug mode toggle

### Entity Tags
- `pipes.controller` - All pipe controllers
- `pipes.source` - Pipe sources
- `pipes.sink` - Pipe sinks
- `pipes.token` - Item tokens
- `pipes.flow` - Flowing tokens

### Supported Items
- Iron Ingots (default)
- Diamonds
- Gold Ingots
- Emeralds

## Contributing

This project demonstrates the power of MDL's conditional syntax. Feel free to:

1. Add new conditional logic examples
2. Improve the pipe system features
3. Add support for more item types
4. Create additional demo functions

## License

This project is open source. See the LICENSE file for details.

## Credits

Built with the [Minecraft Datapack Language (MDL)](https://www.aaroncollins.info/MinecraftDatapackLanguage/docs/language-reference/) by Aaron Collins, showcasing the new conditional syntax for cleaner, more readable datapack code.
