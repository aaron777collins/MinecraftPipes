#!/bin/bash

# Minecraft Pipes Documentation Server
# This script builds and serves the documentation locally

echo "🚀 Starting Minecraft Pipes Documentation Server"
echo "================================================"

# Check if bundle is installed
if ! command -v bundle &> /dev/null; then
    echo "❌ Error: bundle is not installed. Please install Ruby and Bundler first."
    echo "   Visit: https://jekyllrb.com/docs/installation/"
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
bundle install

# Build the site
echo "🔨 Building documentation site..."
bundle exec jekyll build

# Serve the site
echo "🌐 Starting local server..."
echo "   📖 Documentation will be available at: http://localhost:4000"
echo "   🛑 Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --livereload --host 0.0.0.0
