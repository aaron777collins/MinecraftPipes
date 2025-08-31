#!/bin/bash

# Minecraft Pipes Build Script
# Builds both datapack and resource pack

set -e  # Exit on any error

echo "🚀 Starting Minecraft Pipes build process..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to create zip files cross-platform
create_zip() {
    local source_dir="$1"
    local output_file="$2"
    
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        # Windows (Git Bash)
        print_status "Using PowerShell for compression on Windows..."
        powershell -Command "Compress-Archive -Path '$source_dir/*' -DestinationPath '$output_file' -Force"
    elif command -v zip &> /dev/null; then
        # Unix-like systems with zip
        zip -r "$output_file" "$source_dir/"
    else
        print_error "No zip tool available. Please install zip or use PowerShell."
        exit 1
    fi
}

# Check if MDL is installed
if ! command -v mdl &> /dev/null; then
    print_error "MDL (Minecraft Datapack Language) is not installed!"
    print_status "Please install it with: pip install minecraft-datapack-language"
    exit 1
fi

print_success "MDL found: $(mdl --version)"

# Create build directory
BUILD_DIR="build"
DIST_DIR="dist"

print_status "Creating build directories..."
rm -rf "$BUILD_DIR" "$DIST_DIR"
mkdir -p "$BUILD_DIR" "$DIST_DIR"

# Build the datapack
print_status "Building datapack with MDL..."
cd pipes
mdl build --mdl . --output ../"$BUILD_DIR"/pipes_datapack

if [ $? -eq 0 ]; then
    print_success "Datapack built successfully!"
else
    print_error "Failed to build datapack!"
    exit 1
fi

cd ..

# Copy resource pack files
print_status "Preparing resource pack..."
cp -r assets "$BUILD_DIR"/pipes_resource_pack

# Create zip files
print_status "Creating zip files..."

# Datapack zip
print_status "Creating datapack zip..."
create_zip "$BUILD_DIR/pipes_datapack" "$DIST_DIR/pipes_datapack.zip"

# Resource pack zip
print_status "Creating resource pack zip..."
create_zip "$BUILD_DIR/pipes_resource_pack" "$DIST_DIR/pipes_resource_pack.zip"

# Create combined zip
print_status "Creating combined package..."
cd "$BUILD_DIR"
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows - create combined zip with PowerShell
    powershell -Command "Compress-Archive -Path 'pipes_datapack/*', 'pipes_resource_pack/*' -DestinationPath '../$DIST_DIR/pipes_complete.zip' -Force"
else
    # Unix-like systems
    zip -r ../"$DIST_DIR"/pipes_complete.zip pipes_datapack/ pipes_resource_pack/
fi
cd ..

# Create release info
print_status "Creating release information..."
cat > "$DIST_DIR"/README.md << 'EOF'
# Minecraft Pipes - Release Package

This release contains the complete Minecraft Pipes system with both datapack and resource pack.

## 📦 Contents

- `pipes_datapack.zip` - The datapack with recipes and functions
- `pipes_resource_pack.zip` - The resource pack with custom 3D models and textures
- `pipes_complete.zip` - Combined package with both datapack and resource pack

## 🎮 Installation

### Option 1: Individual Installation
1. **Install Datapack:**
   - Copy `pipes_datapack.zip` to your world's `datapacks` folder
   - Or extract and copy the `pipes_datapack` folder

2. **Install Resource Pack:**
   - Copy `pipes_resource_pack.zip` to your world's `resourcepacks` folder
   - Or extract and copy the `pipes_resource_pack` folder

### Option 2: Combined Installation
1. Extract `pipes_complete.zip`
2. Copy `pipes_datapack` to your world's `datapacks` folder
3. Copy `pipes_resource_pack` to your world's `resourcepacks` folder

## 🚀 Usage

1. **Load the Datapack:**
   - In-game, run: `/reload`
   - Or restart the world

2. **Enable the Resource Pack:**
   - Go to Settings → Resource Packs
   - Enable `pipes_resource_pack`

3. **Craft Items:**
   - Pipe Inlet: Iron + Glass + Hopper
   - Pipe Outlet: Iron + Glass + Dispenser
   - Pipe: Iron + Glass
   - Pipe Wrench: Iron + Stick

## 📋 Requirements

- Minecraft 1.21+ (Pack Format 82)
- Both datapack and resource pack must be installed for full functionality

## 🔧 Troubleshooting

- If items appear as regular iron ingots, make sure the resource pack is enabled
- If recipes don't work, ensure the datapack is loaded with `/reload`
- Check the console for any error messages

## 📝 Version

Built on: $(date)
MDL Version: $(mdl --version 2>/dev/null || echo "Unknown")
EOF

# Show build results
print_success "Build completed successfully!"
echo ""
print_status "Build outputs:"
echo "  📦 $DIST_DIR/pipes_datapack.zip"
echo "  🎨 $DIST_DIR/pipes_resource_pack.zip"
echo "  📋 $DIST_DIR/pipes_complete.zip"
echo "  📖 $DIST_DIR/README.md"
echo ""

# Show file sizes
print_status "File sizes:"
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows - simplified file size display without complex PowerShell
    echo "  File sizes available in dist/ directory:"
    for file in "$DIST_DIR"/*.zip; do
        if [[ -f "$file" ]]; then
            size=$(stat -c%s "$file" 2>/dev/null || echo "unknown")
            echo "  $(basename "$file"): $size bytes"
        fi
    done
else
    # Unix-like
    ls -lh "$DIST_DIR"/*.zip
fi

print_success "🎉 Build process completed! Files are ready in the $DIST_DIR directory."
