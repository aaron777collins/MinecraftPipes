# Minecraft Pipes - Build and Release Scripts

This directory contains the build and release automation scripts for the Minecraft Pipes project.

## 📁 Scripts Overview

### `build.sh` - Main Build Script
**Purpose:** Builds the complete Minecraft Pipes package with automatic syntax fixes.

**Features:**
- Builds datapack using MDL (Minecraft Datapack Language)
- Automatically applies syntax fixes for MDL bugs
- Creates resource pack from assets
- Generates all distribution packages (datapack, resource pack, combined)
- Creates SHA1 hashes for file integrity
- Generates comprehensive README with installation instructions

**Usage:**
```bash
bash scripts/build.sh
```

**Output:** Files in `dist/` directory:
- `pipes_datapack.zip` - Datapack only
- `pipes_resource_pack.zip` - Resource pack only  
- `pipes_complete.zip` - Combined package
- `README.md` - Installation instructions
- `SHA1SUMS.txt` - File integrity hashes

### `release.sh` - Release Automation Script
**Purpose:** Creates GitHub releases with automated build integration.

**Features:**
- Semantic versioning support (major, minor, patch)
- Automatic tag creation and pushing
- Integrated build process with syntax fixes
- GitHub release creation with assets
- Clean working tree validation

**Usage:**
```bash
# Create patch release (v1.0.20 → v1.0.21)
bash scripts/release.sh patch "Release notes here"

# Create minor release (v1.0.21 → v1.1.0)
bash scripts/release.sh minor "New features added"

# Create major release (v1.1.0 → v2.0.0)
bash scripts/release.sh major "Breaking changes"

# Create specific version
bash scripts/release.sh v2.0.1 "Specific version release"
```

### `ci.sh` - CI/CD Integration Script
**Purpose:** Provides CI-friendly interface for automated builds and releases.

**Features:**
- CI-optimized output with colored status messages
- Automatic release detection on tags
- Flexible build-only or build+release modes
- Error handling and status reporting

**Usage:**
```bash
# Build only (for CI)
bash scripts/ci.sh build

# Build and release if on tag (for CI)
bash scripts/ci.sh release

# Create patch release (for CI)
bash scripts/ci.sh release-patch
```

## 🔧 Syntax Fixes

The build script automatically applies fixes for known MDL issues:

### Give Command Syntax Fix
**Problem:** MDL generates incorrect syntax with spaces around NBT data:
```mcfunction
give @s minecraft:iron_ingot {display: {Name: '...'}, CustomModelData:1001} 1
```

**Solution:** Automatically corrected to proper syntax:
```mcfunction
give @s minecraft:iron_ingot{display:{Name:'...'},CustomModelData:1001} 1
```

## 🚀 Workflow

### Local Development
1. **Build for testing:**
   ```bash
   bash scripts/build.sh
   ```

2. **Create release:**
   ```bash
   bash scripts/release.sh patch "Bug fixes and improvements"
   ```

### CI/CD Integration
1. **For builds:**
   ```bash
   bash scripts/ci.sh build
   ```

2. **For releases (when tag is pushed):**
   ```bash
   bash scripts/ci.sh release
   ```

3. **For automated patch releases:**
   ```bash
   bash scripts/ci.sh release-patch
   ```

## 📋 Requirements

- **MDL:** `pip install minecraft-datapack-language`
- **GitHub CLI:** `gh` (for releases)
- **Bash:** Unix-like shell environment
- **PowerShell:** For Windows zip creation

## 🔍 Troubleshooting

### Common Issues

1. **MDL not found:**
   ```bash
   pip install minecraft-datapack-language
   ```

2. **GitHub CLI not installed:**
   - Releases will be created by CI instead
   - Build artifacts available in `dist/` for manual upload

3. **Working tree not clean:**
   ```bash
   git add . && git commit -m "Your changes"
   ```

4. **Permission denied:**
   ```bash
   chmod +x scripts/*.sh
   ```

## 📝 Version History

- **v1.0.21+:** Integrated syntax fixes and CI automation
- **v1.0.20:** Basic build and release scripts
- **v1.0.19:** Initial release
