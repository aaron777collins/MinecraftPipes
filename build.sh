#!/usr/bin/env bash
# build.sh — Build the Minecraft Pipes datapack
# Usage: ./build.sh [pack_format] [version]

set -euo pipefail

PACK_FORMAT="${1:-82}"
VERSION="${2:-$(git describe --tags --abbrev=0 2>/dev/null || echo "dev")}"
BUILD_DATE=$(date -u +'%Y-%m-%d %H:%M:%S UTC')

echo "Building Minecraft Pipes datapack..."
echo "Pack format: $PACK_FORMAT"
echo "Version: $VERSION"
echo "Build date: $BUILD_DATE"

# Clean previous build
rm -rf dist

# Build from src directory (excludes test files)
mdl build --mdl src -o dist --wrapper minecraft_pipes --pack-format "$PACK_FORMAT"

# Update pack.mcmeta with version and build information
if [[ -f "dist/minecraft_pipes/pack.mcmeta" ]]; then
    echo "Updating pack.mcmeta with version information..."
    cat > "dist/minecraft_pipes/pack.mcmeta" << EOF
{
  "pack": {
    "pack_format": $PACK_FORMAT,
    "description": "§6Minecraft Pipes System $VERSION§r\\n§7Advanced pipe system for item transportation between containers\\n§8By Minecraft Pipes Team\\n§9§nhttps://github.com/aaron777collins/MinecraftPipes\\n§7Built: $BUILD_DATE"
  }
}
EOF
    echo "✅ Updated pack.mcmeta with version $VERSION"
else
    echo "❌ pack.mcmeta not found after build"
    exit 1
fi

echo "✅ Build complete! Datapack available in dist/minecraft_pipes"
echo "📦 Zip file available in dist/minecraft_pipes.zip"
