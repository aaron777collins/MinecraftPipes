# Minecraft Pipes System

A comprehensive pipe system for Minecraft that allows item transportation between containers using MDL (Minecraft Datapack Language).

[![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21+-green.svg)](https://www.minecraft.net/)
[![Pack Format](https://img.shields.io/badge/Pack%20Format-48-blue.svg)](https://minecraft.wiki/w/Data_pack)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## 🚀 Quick Start

1. **Download** the latest release from [Releases](https://github.com/your-username/minecraft-pipes/releases)
2. **Extract** `minecraft_pipes.zip` to your world's `datapacks` folder
3. **Run** `/reload` in-game
4. **Create your first pipe**:
   ```bash
   /function pipes:create_source
   /function pipes:create_sink
   ```

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

📚 **[Full Documentation Website](https://minecraft-pipes.github.io)** - Beautiful, comprehensive guides and tutorials

- [Installation Guide](https://minecraft-pipes.github.io/installation) - Step-by-step setup instructions
- [Basic Usage](https://minecraft-pipes.github.io/basic-usage) - Get started with your first pipe
- [Advanced Features](https://minecraft-pipes.github.io/advanced-features) - Filtering, energy, redstone control
- [Configuration](https://minecraft-pipes.github.io/configuration) - Customize performance and behavior
- [Troubleshooting](https://minecraft-pipes.github.io/troubleshooting) - Common issues and solutions
- [API Reference](https://minecraft-pipes.github.io/api-reference) - Technical documentation for developers

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

### Configuration Commands
| Command | Description |
|---------|-------------|
| `/function pipes:config_help` | Show configuration options |
| `/function pipes:show_config` | Display current settings |
| `/function pipes:set_flow_rate` | Set item spawn rate |
| `/function pipes:set_token_speed` | Set token movement speed |
| `/function pipes:toggle_debug` | Enable/disable debug mode |
| `/function pipes:optimize_performance` | Optimize for better FPS |

## 🔧 Installation

### Prerequisites
- **Minecraft Java Edition 1.21+** (required for the datapack format)
- **A Minecraft world** (singleplayer or multiplayer server)
- **Basic knowledge** of Minecraft datapacks

### Quick Install
1. Download the latest release from [Releases](https://github.com/your-username/minecraft-pipes/releases)
2. Extract `minecraft_pipes.zip` to your world's `datapacks` folder
3. Run `/reload` in-game
4. Start with `/function pipes:example_quick_start`

### Build from Source
```bash
# Clone the repository
git clone https://github.com/your-username/minecraft-pipes.git
cd minecraft-pipes

# Install MDL (Minecraft Datapack Language)
pip install minecraft-datapack-language

# Build the datapack
mdl build --mdl . -o dist --wrapper minecraft_pipes --pack-format 48

# Install the built datapack
cp -r dist/minecraft_pipes /path/to/your/world/datapacks/
```

## 📁 Project Structure

```
minecraft-pipes/
├── core.mdl              # Main pack declaration and lifecycle hooks
├── pipes.mdl             # Core pipe system functionality
├── pipes_advanced.mdl    # Advanced features (filtering, energy, etc.)
├── pipes_config.mdl      # Configuration system
├── pipes_creation.mdl    # Pipe creation and management
├── example_usage.mdl     # Example usage and tutorials
├── docs/                 # Documentation site (Jekyll)
│   ├── _config.yml       # Jekyll configuration
│   ├── _docs/            # Documentation pages
│   ├── index.md          # Main documentation page
│   └── Gemfile           # Jekyll dependencies
├── dist/                 # Built datapack (generated)
│   └── minecraft_pipes/  # Final datapack
└── README.md            # This file
```

## 🎮 How It Works

### Pipe Components
1. **Source**: Extracts items from containers and creates tokens
2. **Sink**: Receives tokens and transfers items to containers
3. **Tokens**: Visual representations of items moving through pipes
4. **Controllers**: Marker entities that manage pipe behavior

### Item Flow
1. **Extraction**: Source extracts items from containers (chests, barrels, etc.)
2. **Token Creation**: Creates visible tokens representing the items
3. **Movement**: Tokens move along the pipe path at configurable speed
4. **Transfer**: When tokens reach a sink, items are transferred to destination containers
5. **Cleanup**: Tokens are removed after successful transfer

### Container Support
The system supports all vanilla storage blocks:
- **Chests**: 64 items per slot
- **Barrels**: 64 items per slot  
- **Hoppers**: 5 items per slot
- **Droppers**: 9 items per slot
- **Dispensers**: 9 items per slot

## 🚀 Usage Examples

### Simple Storage Transfer
```bash
# Create source and sink
/function pipes:create_source
/function pipes:create_sink

# Place containers below markers
# Add items to source container
# Watch items flow automatically!
```

### Advanced Setup with Filtering
```bash
# Create smart source with filtering
/function pipes:create_smart_source

# Create smart sink with filtering
/function pipes:create_smart_sink

# Set filters for specific items
/function pipes:set_source_filter
/function pipes:set_sink_filter
```

### Performance Optimization
```bash
# Optimize for better performance
/function pipes:optimize_performance

# Enable debug mode for troubleshooting
/function pipes:toggle_debug

# Check system status
/function pipes:check_pipe_status
```

## 🔧 Configuration

### Default Settings
- **Flow Rate**: 20 ticks (1 second)
- **Token Speed**: 0.1 blocks per tick
- **Max Distance**: 500 blocks
- **Auto-extract**: Enabled
- **Debug Mode**: Disabled
- **Energy System**: Disabled
- **Redstone Control**: Disabled
- **Priority System**: Disabled

### Performance Modes
- **Normal**: Balanced performance and functionality
- **Optimized**: Better FPS, reduced features
- **High Performance**: Maximum FPS, minimal features

## 🐛 Troubleshooting

### Common Issues

#### Pipes not working
- Check if containers are properly placed
- Ensure source and sink are within distance limits
- Verify the datapack is loaded (`/reload`)

#### Items not transferring
- Check container capacity
- Verify item filters are set correctly
- Ensure energy system is not depleted

#### Performance issues
- Use `/function pipes:optimize_performance`
- Reduce flow rate and token speed
- Limit number of active pipes

### Debug Mode
Enable debug mode for detailed logging:
```bash
/function pipes:toggle_debug
```

This will show:
- Pipe connection status
- Item transfer attempts
- Error messages
- Performance metrics

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add some amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Development Setup
```bash
# Clone the repository
git clone https://github.com/your-username/minecraft-pipes.git
cd minecraft-pipes

# Install dependencies
pip install minecraft-datapack-language

# Check syntax
mdl check .

# Build datapack
mdl build --mdl . -o dist --wrapper minecraft_pipes --pack-format 48

# Run documentation site locally
cd docs
bundle install
bundle exec jekyll serve
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **📚 Documentation**: [Beautiful Documentation Website](https://minecraft-pipes.github.io)
- **🐛 Issues**: [GitHub Issues](https://github.com/minecraft-pipes/minecraft-pipes/issues)
- **💬 Discussions**: [GitHub Discussions](https://github.com/minecraft-pipes/minecraft-pipes/discussions)
- **📖 Wiki**: [GitHub Wiki](https://github.com/minecraft-pipes/minecraft-pipes/wiki)
- **🎮 Discord**: [Join our Community](https://discord.gg/minecraft-pipes)

## 🙏 Acknowledgments

- **Minecraft Community** - For inspiration and feedback
- **MDL Team** - For the amazing Minecraft Datapack Language
- **Contributors** - Everyone who has helped improve this project

## 📊 Statistics

- **Downloads**: [![Downloads](https://img.shields.io/github/downloads/your-username/minecraft-pipes/total.svg)](https://github.com/your-username/minecraft-pipes/releases)
- **Stars**: [![Stars](https://img.shields.io/github/stars/your-username/minecraft-pipes.svg)](https://github.com/your-username/minecraft-pipes/stargazers)
- **Forks**: [![Forks](https://img.shields.io/github/forks/your-username/minecraft-pipes.svg)](https://github.com/your-username/minecraft-pipes/network)
- **Issues**: [![Issues](https://img.shields.io/github/issues/your-username/minecraft-pipes.svg)](https://github.com/your-username/minecraft-pipes/issues)

---

**Made with ❤️ for the Minecraft community**

[![Documentation](https://img.shields.io/badge/Documentation-View%20Docs-green.svg)](https://minecraft-pipes.github.io)
[![GitHub](https://img.shields.io/badge/GitHub-View%20on%20GitHub-blue.svg)](https://github.com/minecraft-pipes/minecraft-pipes)
[![Discord](https://img.shields.io/badge/Discord-Join%20our%20Discord-7289DA.svg)](https://discord.gg/minecraft-pipes)
[![Twitter](https://img.shields.io/badge/Twitter-Follow%20us-1DA1F2.svg)](https://twitter.com/minecraft_pipes)
