---
layout: page
title: Installation Guide
---

# Installation Guide

This guide will help you install and set up the Minecraft Pipes System in your world.

## Prerequisites

- **Minecraft Java Edition 1.20+** (required for pack format 82)
- **A Minecraft world** (singleplayer or multiplayer server)
- **Basic knowledge** of Minecraft datapacks

## Quick Installation

### Step 1: Download the Datapack

1. Go to the [Releases page](https://github.com/aaron777collins/MinecraftPipes/releases)
2. Download the latest `minecraft_pipes.zip` file
3. Extract the ZIP file to get the `minecraft_pipes` folder

### Step 2: Install in Your World

1. **Locate your world folder**:
   - **Singleplayer**: `%appdata%/.minecraft/saves/[WorldName]/`
   - **Multiplayer**: Ask your server administrator for the world folder location

2. **Copy the datapack**:
   - Copy the `minecraft_pipes` folder to the `datapacks` directory in your world
   - If the `datapacks` folder doesn't exist, create it

3. **File structure should look like**:
   ```
   [WorldName]/
   ├── datapacks/
   │   └── minecraft_pipes/
   │       ├── data/
   │       │   ├── minecraft/
   │       │   │   └── tags/
   │       │   │       └── function/
   │       │   │           ├── load.json
   │       │   │           └── tick.json
   │       │   └── pipes/
   │       │       └── function/
   │       │           ├── init.mcfunction
   │       │           ├── tick_main.mcfunction
   │       │           └── [other functions...]
   │       └── pack.mcmeta
   └── [other world files...]
   ```

### Step 3: Enable the Datapack

1. **Start or load your world**
2. **Open the world settings**:
   - Press `Esc` → `Open to LAN` → `Allow Cheats: ON`
   - Or use `/reload` if you have operator permissions

3. **Reload datapacks**:
   - Type `/reload` in the chat
   - You should see: `[PIPES] Advanced pipe system loaded!`

4. **Verify installation**:
   - Type `/function pipes:help` to see available commands
   - You should see a list of pipe system commands

## Building from Source

If you want to build the datapack from source or modify it:

### Prerequisites for Building

- **Python 3.7+**
- **MDL (Minecraft Datapack Language)**

### Install MDL

```bash
# Using pipx (recommended)
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pipx install minecraft-datapack-language

# Or using pip
pip install minecraft-datapack-language
```

### Build the Datapack

```bash
# Clone the repository
git clone https://github.com/your-username/minecraft-pipes.git
cd minecraft-pipes

# Check syntax
mdl check src/

# Build the datapack
mdl build --mdl src/ -o dist --wrapper minecraft_pipes --pack-format 82

# The built datapack will be in dist/minecraft_pipes/
```

## Troubleshooting Installation

### Common Issues

#### "Datapack not found"
- **Solution**: Make sure the `minecraft_pipes` folder is directly inside the `datapacks` folder
- **Check**: The path should be `[WorldName]/datapacks/minecraft_pipes/`

#### "Function not found"
- **Solution**: Run `/reload` after installing the datapack
- **Check**: Make sure you have operator permissions or cheats enabled

#### "Pack format not supported"
- **Solution**: Update to Minecraft 1.20+ or rebuild with an older pack format
- **Command**: `mdl build --mdl src/ -o dist --wrapper minecraft_pipes --pack-format 47`

#### "Permission denied"
- **Solution**: Make sure you have write permissions to the world folder
- **Check**: Try running Minecraft as administrator (Windows) or with proper permissions (Linux/Mac)

### Verification Commands

After installation, run these commands to verify everything is working:

```bash
# Check if the system loaded
/function pipes:ping

# Show available commands
/function pipes:help

# Check system status
/function pipes:check_pipe_status
```

## Next Steps

Once installation is complete:

1. **Read the [Basic Usage Guide](basic-usage)** to learn how to create your first pipe
2. **Check the [Configuration Guide](configuration)** to customize the system
3. **Explore [Advanced Features](advanced-features)** for more complex setups

## Support

If you encounter issues during installation:

1. **Check the [Troubleshooting Guide](troubleshooting)**
2. **Enable debug mode**: `/function pipes:toggle_debug`
3. **Report issues** on [GitHub Issues](https://github.com/aaron777collins/MinecraftPipes/issues)
4. **Ask for help** in [GitHub Discussions](https://github.com/aaron777collins/MinecraftPipes/discussions)
