#!/usr/bin/env bash
# ci.sh — CI/CD script for Minecraft Pipes
# Usage:
#   ./scripts/ci.sh build          # Build only
#   ./scripts/ci.sh release         # Build and release (if tag exists)
#   ./scripts/ci.sh release-patch   # Build and create patch release

set -euo pipefail

ACTION="${1:-build}"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[CI]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[CI SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[CI WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[CI ERROR]${NC} $1"
}

# Function to check if we're on a release tag
is_release_tag() {
    local current_tag
    current_tag=$(git describe --tags --exact-match 2>/dev/null || echo "")
    [[ "$current_tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]
}

# Function to get current tag
get_current_tag() {
    git describe --tags --exact-match 2>/dev/null || echo ""
}

case "$ACTION" in
    "build")
        print_status "Running build process..."
        bash scripts/build.sh
        print_success "Build completed successfully!"
        ;;
    
    "release")
        print_status "Checking for release tag..."
        if is_release_tag; then
            current_tag=$(get_current_tag)
            print_status "Release tag detected: $current_tag"
            print_status "Running release process..."
            bash scripts/release.sh "$current_tag" "CI automated release"
            print_success "Release completed successfully!"
        else
            print_warning "Not on a release tag, skipping release"
            print_status "Running build only..."
            bash scripts/build.sh
            print_success "Build completed successfully!"
        fi
        ;;
    
    "release-patch")
        print_status "Creating patch release..."
        bash scripts/release.sh patch "CI automated patch release"
        print_success "Patch release completed successfully!"
        ;;
    
    *)
        print_error "Unknown action: $ACTION"
        echo "Usage: $0 <build|release|release-patch>"
        exit 1
        ;;
esac
