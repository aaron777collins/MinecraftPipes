#!/usr/bin/env bash
# release.sh — Automated release with build integration
# Usage:
#   ./scripts/release.sh v1.2.3 "Notes..."
#   ./scripts/release.sh patch   "Notes..."
#   ./scripts/release.sh minor   "Notes..."
#   ./scripts/release.sh major   "Notes..."

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <vX.Y.Z|major|minor|patch> [notes]"
  exit 1
fi

BUMP="$1"
NOTES="${2:-}"

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

# Ensure clean working tree
if ! git diff --quiet || ! git diff --cached --quiet; then
  print_error "Working tree not clean. Commit or stash changes first."
  exit 1
fi

# Find latest semver tag (vX.Y.Z). If none, start at v0.0.0
LATEST_TAG=$(git tag --list 'v[0-9]*.[0-9]*.[0-9]*' | sort -V | tail -n1 || true)
[ -z "$LATEST_TAG" ] && LATEST_TAG="v0.0.0"

parse_semver () {
  local v="${1#v}"
  IFS='.' read -r MAJ MIN PAT <<<"$v"
  echo "$MAJ" "$MIN" "$PAT"
}

bump_part () {
  local part="$1" MAJ="$2" MIN="$3" PAT="$4"
  case "$part" in
    major) MAJ=$((MAJ+1)); MIN=0; PAT=0;;
    minor) MIN=$((MIN+1)); PAT=0;;
    patch) PAT=$((PAT+1));;
    *) echo "Unknown bump: $part"; exit 1;;
  esac
  echo "v${MAJ}.${MIN}.${PAT}"
}

if [[ "$BUMP" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  NEW_TAG="$BUMP"
elif [[ "$BUMP" =~ ^(major|minor|patch)$ ]]; then
  read -r MAJ MIN PAT < <(parse_semver "$LATEST_TAG")
  NEW_TAG=$(bump_part "$BUMP" "$MAJ" "$MIN" "$PAT")
else
  print_error "First arg must be vX.Y.Z or one of: major, minor, patch"
  exit 1
fi

print_status "Latest tag: ${LATEST_TAG:-<none>}"
print_status "New tag:    $NEW_TAG"

# Create annotated tag and push
print_status "Creating and pushing tag..."
git tag -a "$NEW_TAG" -m "Release $NEW_TAG"
git push origin "$NEW_TAG"
git push || true

# 🔥 Clean old local artifacts so we never upload stale files
print_status "Cleaning old build artifacts..."
rm -rf dist build

# Build the project using the improved build script
print_status "Building project with syntax fixes..."
if [[ -f "scripts/build.sh" ]]; then
    bash scripts/build.sh
    print_success "Build completed successfully!"
else
    print_error "Build script not found: scripts/build.sh"
    exit 1
fi

# Create GitHub Release and attach build artifacts
if command -v gh >/dev/null 2>&1; then
    if gh release view "$NEW_TAG" >/dev/null 2>&1; then
        print_status "GitHub Release $NEW_TAG exists — uploading build assets..."
        if ls dist/* >/dev/null 2>&1; then 
            gh release upload "$NEW_TAG" dist/* --clobber
            print_success "Assets uploaded to existing release"
        fi
    else
        [ -z "$NOTES" ] && NOTES="Automated release $NEW_TAG with syntax fixes"
        print_status "Creating new GitHub Release $NEW_TAG..."
        if ls dist/* >/dev/null 2>&1; then
            gh release create "$NEW_TAG" dist/* --notes "$NOTES"
            print_success "GitHub Release created with assets"
        else
            gh release create "$NEW_TAG" --notes "$NOTES"
            print_warning "GitHub Release created without assets (dist/ directory empty)"
        fi
    fi
else
    print_warning "GitHub CLI (gh) not installed — tag pushed. CI will create the GitHub Release."
    print_status "Build artifacts are ready in dist/ directory for manual upload."
fi

print_success "✅ Release $NEW_TAG completed successfully!"
print_status "📦 Build artifacts: dist/"
print_status "🏷️  Git tag: $NEW_TAG"
