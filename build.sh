#!/usr/bin/env bash
# build.sh — Build the Minecraft Pipes datapack
# Usage: ./build.sh [pack_format]

set -euo pipefail

PACK_FORMAT="${1:-82}"

echo "Building Minecraft Pipes datapack..."
echo "Pack format: $PACK_FORMAT"

# Clean previous build
rm -rf dist

# Build from src directory (excludes test files)
mdl build --mdl src -o dist --wrapper minecraft_pipes --pack-format "$PACK_FORMAT"

echo "✅ Build complete! Datapack available in dist/minecraft_pipes"
echo "📦 Zip file available in dist/minecraft_pipes.zip"
