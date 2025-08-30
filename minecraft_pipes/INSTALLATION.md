# Installation Guide - Minecraft Pipes Datapack

## Quick Start

### Prerequisites
- **Minecraft Version**: 1.21+ (Pack Format 82)
- **MDL Compiler**: Required for building from source
- **World Access**: Ability to install datapacks

### Option 1: Use Pre-built Datapack (Recommended)

1. **Download the Datapack**:
   - Download `dist.zip` from the releases
   - Or use the built datapack from the `dist` folder

2. **Install in Your World**:
   - Navigate to your world folder
   - Go to the `datapacks` directory
   - Extract `dist.zip` or copy the `dist` folder
   - Rename to `minecraft_pipes` if needed

3. **Load the Datapack**:
   - Start your world
   - In-game, run: `/reload`
   - Or restart the world

4. **Test the System**:
   ```
   /function pipes:test_help
   /function pipes:test_setup
   ```

### Option 2: Build from Source

1. **Install MDL**:
   ```bash
   pip install minecraft-datapack-language
   ```

2. **Clone/Download the Project**:
   ```bash
   git clone <repository-url>
   cd minecraft_pipes
   ```

3. **Build the Datapack**:
   ```bash
   mdl build --mdl . --output dist
   ```

4. **Install as Above**:
   - Copy `dist` folder to your world's `datapacks` directory
   - Load in-game with `/reload`

## Resource Pack Installation (Optional)

For enhanced visual experience:

1. **Copy Resource Pack**:
   - Copy `resource_pack` folder to your world's `resourcepacks` directory
   - Or use it globally in Minecraft settings

2. **Enable Resource Pack**:
   - In-game: Settings → Resource Packs → Enable `minecraft_pipes`
   - Or globally in Minecraft launcher settings

## Verification

### Check Installation
```bash
# In-game commands to verify installation
/datapack list
/function pipes:test_help
```

### Expected Output
- `minecraft_pipes` should appear in datapack list
- Test help should show available commands
- No error messages should appear

## Troubleshooting

### Common Issues

**Datapack not loading**:
- Check Minecraft version (must be 1.21+)
- Verify `pack.mcmeta` exists in datapack root
- Check for syntax errors in console

**Functions not working**:
- Ensure datapack is enabled: `/datapack enable minecraft_pipes`
- Reload the world: `/reload`
- Check for error messages in chat

**Pipes not connecting**:
- Verify pipe entities are created
- Check pipe placement (must be adjacent)
- Use debug command: `/function pipes:debug_pipe`

**Performance issues**:
- Reduce pipe network size
- Check for entity buildup
- Monitor server performance

### Debug Commands
```bash
# Check datapack status
/datapack list

# Reload datapacks
/reload

# Show pipe information
/function pipes:debug_pipe

# Check scoreboards
/scoreboard objectives list

# List pipe entities
/scoreboard players list @e[type=minecraft:marker]
```

## Multiplayer Setup

### Server Installation
1. **Install on Server**:
   - Copy datapack to server's world datapacks folder
   - Restart server or use `/reload`

2. **Client Setup**:
   - Resource pack is optional for clients
   - Datapack functions work server-side

3. **Permissions**:
   - Ensure players have permission to use functions
   - May need to adjust server permissions

### Synchronization
- Pipe states sync automatically
- Item movement may have slight delays
- Redstone signals work normally

## Configuration

### Performance Settings
Edit `minecraft_pipes.mdl` to adjust:

```mdl
// Processing intervals (higher = better performance)
if "$pipe_tick_counter$ % 4 == 0" {  // Pipe network processing
if "$pipe_tick_counter$ % 2 == 0" {  // Item movement
if "$pipe_tick_counter$ % 10 == 0" { // Redstone detection

// Item limits
var num max_items_per_pipe = 4;      // Items per pipe
var num item_movement_speed = 2;     // Movement speed
```

### Customization
- Modify crafting recipes in `data/pipes/recipes/`
- Adjust pipe appearance in resource pack
- Change pipe behavior in main functions

## Uninstallation

### Remove Datapack
1. **Disable Datapack**:
   ```
   /datapack disable minecraft_pipes
   ```

2. **Remove Files**:
   - Delete `minecraft_pipes` folder from `datapacks`
   - Remove resource pack if installed

3. **Clean Up**:
   ```
   /function pipes:test_cleanup
   /reload
   ```

### Clean World
- Remove all pipe blocks manually
- Clear any remaining pipe entities
- Reset affected areas

## Support

### Getting Help
- Check the README.md for detailed documentation
- Review FEATURES.md for feature explanations
- Use debug commands to troubleshoot

### Reporting Issues
- Include Minecraft version
- Describe the problem clearly
- Provide error messages if any
- Include steps to reproduce

### Contributing
- Fork the repository
- Make your changes
- Test thoroughly
- Submit a pull request

## Version Compatibility

| Minecraft Version | Pack Format | Status |
|------------------|-------------|---------|
| 1.21+ | 82 | ✅ Supported |
| 1.20.x | 15 | ❌ Not Supported |
| 1.19.x | 9 | ❌ Not Supported |

## License

This project is licensed under the MIT License. See LICENSE file for details.
