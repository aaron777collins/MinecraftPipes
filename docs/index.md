---
layout: default
title: Minecraft Pipes System
---

# Minecraft Pipes System

A comprehensive pipe system for Minecraft that allows item transportation between containers using MDL (Minecraft Datapack Language).

## 🚀 Quick Start

1. **Install the datapack**:
   - Download `minecraft_pipes.zip` from the releases
   - Extract to your world's `datapacks` folder
   - Run `/reload` in-game

2. **Create your first pipe**:
   ```bash
   /function pipes:create_source
   /function pipes:create_sink
   ```

3. **Place containers**:
   - Put a chest with items below the source marker
   - Put an empty chest below the sink marker
   - Watch items flow through the air!

## ✨ Features

### Core System
- **Item Transportation**: Move items between chests, barrels, hoppers, droppers, and dispensers
- **Visual Tokens**: See items moving through pipes as visible tokens
- **Automatic Transfer**: Items automatically transfer when tokens reach destination containers
- **Multiple Container Support**: Works with all vanilla storage blocks

### Advanced Features
- **Item Filtering**: Filter specific items for extraction and insertion
- **Energy System**: Optional energy consumption for pipe operations
- **Redstone Control**: Enable/disable pipes with redstone signals
- **Priority System**: Set priorities for pipe connections
- **Different Item Types**: Support for iron, diamond, gold, and other items

### Configuration
- **Flow Rate Control**: Adjust how often items spawn
- **Token Speed**: Control movement speed of pipe tokens
- **Distance Limits**: Set maximum pipe connection distances
- **Debug Mode**: Detailed logging for troubleshooting
- **Performance Optimization**: Built-in performance modes

## 📖 Documentation

- [Installation Guide](installation)
- [Basic Usage](basic-usage)
- [Advanced Features](advanced-features)
- [Configuration](configuration)
- [Troubleshooting](troubleshooting)
- [API Reference](api-reference)

## 🛠️ Commands

### Basic Commands
| Command | Description |
|---------|-------------|
| `/function pipes:help` | Show all available commands |
| `/function pipes:create_source` | Create a pipe source at your location |
| `/function pipes:create_sink` | Create a pipe sink at your location |
| `/function pipes:list_connections` | List all active pipe connections |
| `/function pipes:clear_all` | Remove all pipes |

### Advanced Commands
| Command | Description |
|---------|-------------|
| `/function pipes:advanced_help` | Show advanced features |
| `/function pipes:create_smart_source` | Create source with filtering |
| `/function pipes:create_smart_sink` | Create sink with filtering |
| `/function pipes:set_source_filter` | Set item filter for source |
| `/function pipes:set_sink_filter` | Set item filter for sink |

## 🔧 Installation

### Prerequisites
- Minecraft Java Edition 1.21+
- MDL (Minecraft Datapack Language) for building from source

### Quick Install
1. Download the latest release from GitHub
2. Extract `minecraft_pipes.zip` to your world's `datapacks` folder
3. Run `/reload` in-game
4. Start with `/function pipes:example_quick_start`

### Build from Source
```bash
# Clone the repository
git clone https://github.com/your-username/minecraft-pipes.git
cd minecraft-pipes

# Build the datapack
mdl build --mdl . -o dist --wrapper minecraft_pipes --pack-format 48

# Install the built datapack
cp -r dist/minecraft_pipes /path/to/your/world/datapacks/
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Documentation**: Check the [troubleshooting guide](troubleshooting)
- **Issues**: Report bugs on [GitHub Issues](https://github.com/your-username/minecraft-pipes/issues)
- **Discussions**: Join the [GitHub Discussions](https://github.com/your-username/minecraft-pipes/discussions)

---

**Made with ❤️ for the Minecraft community**
