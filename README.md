# Minecraft Pipes 🚰

A comprehensive Minecraft datapack and resource pack that adds a beautiful pipe transportation system to your world. Features custom 3D models, automatic item transportation, and redstone integration.

![Minecraft Pipes](https://img.shields.io/badge/Minecraft-1.21+-green) ![Pack Format](https://img.shields.io/badge/Pack%20Format-82-blue) ![License](https://img.shields.io/badge/License-MIT-yellow)

## 🎮 Features

### 🚰 **Pipe System**
- **Custom 3D Models** - Beautiful, detailed pipe models with your own textures
- **Multiple Pipe Types** - Inlet, outlet, and basic pipes for different functions
- **Automatic Transportation** - Items flow through connected pipes automatically
- **Redstone Integration** - Inlet pipes require redstone power to extract items

### 🎨 **Visual Design**
- **Transparent Pipes** - See items moving through the system
- **Color-Coded Items** - Different pipe types have distinct colors
- **Smooth Animations** - Fluid item movement through pipes
- **Custom Textures** - Your own unique pipe designs

### ⚡ **Technical Features**
- **MDL (Minecraft Datapack Language)** - Modern, maintainable code
- **CustomModelData** - Efficient resource pack integration
- **Cross-Platform** - Works on Windows, Linux, and macOS
- **CI/CD Pipeline** - Automated builds and releases

## 📦 Installation

### Quick Install
1. **Download the latest release** from [GitHub Releases](https://github.com/aaron777collins/MinecraftPipes/releases)
2. **Extract the files** to your Minecraft world
3. **Install both packs:**
   - Copy `pipes_datapack` to your world's `datapacks` folder
   - Copy `pipes_resource_pack` to your world's `resourcepacks` folder
4. **Load in game:**
   - Run `/reload` to load the datapack
   - Enable the resource pack in Settings → Resource Packs

### Manual Installation
```bash
# Clone the repository
git clone https://github.com/aaron777collins/MinecraftPipes.git
cd MinecraftPipes

# Build the project
./scripts/build.sh

# Copy the generated files to your world
cp dist/pipes_datapack.zip /path/to/your/world/datapacks/
cp dist/pipes_resource_pack.zip /path/to/your/world/resourcepacks/
```

## 🛠️ Building from Source

### Prerequisites
- **Python 3.11+** - Required for MDL
- **MDL (Minecraft Datapack Language)** - Install with `pip install minecraft-datapack-language`
- **Git** - For cloning the repository

### Build Commands
```bash
# Clone the repository
git clone https://github.com/aaron777collins/MinecraftPipes.git
cd MinecraftPipes

# Install MDL
pip install minecraft-datapack-language

# Build everything
./scripts/build.sh

# Or use npm scripts
npm run build
```

### Build Outputs
The build process creates the following files in the `dist/` directory:
- `pipes_datapack.zip` - The datapack with recipes and functions
- `pipes_resource_pack.zip` - The resource pack with custom 3D models and textures
- `pipes_complete.zip` - Combined package with both datapack and resource pack
- `README.md` - Installation and usage instructions

## 🎯 Usage

### Crafting Recipes

#### Pipe Inlet
```
I G I
G H G
I G I
```
- **I** = Iron Ingot
- **G** = Glass Pane  
- **H** = Hopper
- **Result**: Blue pipe inlet that extracts items when powered

#### Pipe Outlet
```
I G I
G D G
I G I
```
- **I** = Iron Ingot
- **G** = Glass Pane
- **D** = Dispenser
- **Result**: Green pipe outlet that deposits items automatically

#### Basic Pipe
```
I G I
G   G
I G I
```
- **I** = Iron Ingot
- **G** = Glass Pane
- **Result**: 4 gray pipes for connecting the system

#### Pipe Wrench
```
  I  
  I  
  S  
```
- **I** = Iron Ingot
- **S** = Stick
- **Result**: Yellow wrench for pipe maintenance

### Gameplay
1. **Craft the pipes** using the recipes above
2. **Place inlet pipes** next to chests you want to extract from
3. **Place outlet pipes** next to chests you want to deposit to
4. **Connect with basic pipes** to create a network
5. **Power inlet pipes** with redstone to start extraction
6. **Watch items flow** through your beautiful pipe system!

## 🔧 Development

### Project Structure
```
MinecraftPipes/
├── pipes/                    # MDL source files
│   ├── pipes.mdl            # Main datapack definition
│   ├── recipes/             # Recipe JSON files
│   └── models/              # Blockbench source models
├── assets/                   # Resource pack files
│   └── pipes/
│       ├── models/          # Item models
│       └── textures/        # Custom textures
├── scripts/                  # Build scripts
│   └── build.sh             # Main build script
├── .github/workflows/        # CI/CD pipelines
└── dist/                     # Build outputs
```

### Making Changes
1. **Edit MDL files** in `pipes/` for datapack logic
2. **Update models** in `assets/pipes/models/` for visual changes
3. **Modify textures** in `assets/pipes/textures/` for appearance
4. **Test locally** with `npm run build`
5. **Commit and push** to trigger CI/CD

### NPM Scripts
```bash
npm run build          # Full build process
npm run build:datapack # Build only the datapack
npm run build:resource # Build only the resource pack
npm run test           # Test the build process
npm run clean          # Clean build artifacts
npm run release        # Create a new version tag
```

## 🚀 CI/CD Pipeline

### Automated Builds
- **Test Builds** - Run on every pull request and push
- **Release Builds** - Triggered by version tags
- **Manual Builds** - Can be triggered manually via GitHub Actions

### Creating Releases
```bash
# Create a version tag
git tag v1.0.0
git push --tags

# This automatically triggers a release build
```

Or manually trigger via GitHub Actions → Build and Release → Run workflow

## 🐛 Troubleshooting

### Common Issues

#### Items appear as regular iron ingots
- **Solution**: Make sure the resource pack is enabled in Minecraft settings

#### Recipes don't work
- **Solution**: Run `/reload` to reload the datapack

#### Build fails
- **Solution**: Check that MDL is installed with `pip install minecraft-datapack-language`

#### CI/CD fails
- **Solution**: Check GitHub Actions logs for specific error messages

### Getting Help
1. Check the [BUILD.md](BUILD.md) file for detailed build instructions
2. Review [GitHub Issues](https://github.com/aaron777collins/MinecraftPipes/issues) for known problems
3. Create a new issue with detailed error information

## 📋 Requirements

- **Minecraft Version**: 1.21+ (Pack Format 82)
- **Python**: 3.11+ (for building from source)
- **MDL**: minecraft-datapack-language (for building from source)

## 🤝 Contributing

We welcome contributions! Here's how to get started:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/amazing-feature`)
3. **Make your changes**
4. **Test locally** with `npm run build`
5. **Commit your changes** (`git commit -m 'Add amazing feature'`)
6. **Push to the branch** (`git push origin feature/amazing-feature`)
7. **Open a Pull Request**

### Development Guidelines
- Test builds locally before pushing
- Follow the existing code style
- Update documentation for new features
- Add tests for new functionality

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **MDL Team** - For the amazing Minecraft Datapack Language
- **Blockbench** - For the excellent 3D modeling tools
- **Minecraft Community** - For inspiration and feedback

## 📞 Support

- **GitHub Issues**: [Report bugs or request features](https://github.com/aaron777collins/MinecraftPipes/issues)
- **Discussions**: [Join the community](https://github.com/aaron777collins/MinecraftPipes/discussions)
- **Wiki**: [Detailed documentation](https://github.com/aaron777collins/MinecraftPipes/wiki)

---

**Made with ❤️ for the Minecraft community**

[![GitHub stars](https://img.shields.io/github/stars/aaron777collins/MinecraftPipes?style=social)](https://github.com/aaron777collins/MinecraftPipes/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/aaron777collins/MinecraftPipes?style=social)](https://github.com/aaron777collins/MinecraftPipes/network/members)
[![GitHub issues](https://img.shields.io/github/issues/aaron777collins/MinecraftPipes)](https://github.com/aaron777collins/MinecraftPipes/issues)
