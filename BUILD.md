# Build System Documentation

This document explains how to build and release the Minecraft Pipes project.

## 🚀 Quick Start

### Prerequisites

1. **Python 3.11+** - Required for MDL
2. **MDL (Minecraft Datapack Language)** - Install with `pip install minecraft-datapack-language`
3. **zip** - Usually pre-installed on most systems

### Local Build

```bash
# Install MDL if you haven't already
pip install minecraft-datapack-language

# Run the build script
./scripts/build.sh

# Or use npm scripts
npm run build
```

## 📦 Build Outputs

The build process creates the following files in the `dist/` directory:

- `pipes_datapack.zip` - The datapack with recipes and functions
- `pipes_resource_pack.zip` - The resource pack with custom 3D models and textures
- `pipes_complete.zip` - Combined package with both datapack and resource pack
- `README.md` - Installation and usage instructions

## 🔧 Build Script Details

### What the build script does:

1. **Validates Environment**
   - Checks if MDL is installed
   - Verifies required tools are available

2. **Builds Datapack**
   - Uses MDL to compile the `.mdl` files
   - Generates Minecraft datapack structure
   - Includes recipes, functions, and metadata

3. **Prepares Resource Pack**
   - Copies custom models and textures
   - Organizes files in proper resource pack structure
   - Includes CustomModelData overrides

4. **Creates Distribution Packages**
   - Zips individual components
   - Creates combined package
   - Generates documentation

## 🎯 CI/CD Pipeline

### GitHub Actions Workflows

#### Test Build (`test-build.yml`)
- **Triggers:** Pull requests and pushes to main/master
- **Purpose:** Validates that the build works correctly
- **Outputs:** Test artifacts for verification

#### Build and Release (`build-and-release.yml`)
- **Triggers:** 
  - Version tags (e.g., `v1.0.0`)
  - Manual workflow dispatch
- **Purpose:** Creates official releases
- **Outputs:** GitHub releases with downloadable files

### Release Process

#### Automatic Release (Tag-based)
```bash
# Create and push a version tag
git tag v1.0.0
git push --tags
```

#### Manual Release
1. Go to GitHub Actions tab
2. Select "Build and Release" workflow
3. Click "Run workflow"
4. Review and publish the draft release

## 📋 NPM Scripts

For convenience, the following npm scripts are available:

```bash
npm run build          # Full build process
npm run build:datapack # Build only the datapack
npm run build:resource # Build only the resource pack
npm run test           # Test the build process
npm run clean          # Clean build artifacts
npm run release        # Create a new version tag
```

## 🛠️ Development Workflow

### Making Changes

1. **Edit Source Files**
   - Modify `.mdl` files in `pipes/`
   - Update models in `assets/pipes/models/`
   - Change textures in `assets/pipes/textures/`

2. **Test Locally**
   ```bash
   npm run build
   # Check the dist/ directory for outputs
   ```

3. **Commit and Push**
   ```bash
   git add .
   git commit -m "Description of changes"
   git push
   ```

### Creating a Release

1. **Update Version** (if needed)
   - Edit `package.json` version
   - Update any version references in code

2. **Create Release**
   ```bash
   # Option 1: Tag-based release
   git tag v1.0.1
   git push --tags
   
   # Option 2: Manual release
   # Use GitHub Actions workflow dispatch
   ```

## 🔍 Troubleshooting

### Common Issues

#### MDL Not Found
```bash
pip install minecraft-datapack-language
```

#### Permission Denied
```bash
chmod +x scripts/build.sh
```

#### Build Fails
1. Check that all required files exist
2. Verify MDL syntax in `.mdl` files
3. Ensure texture paths are correct

#### CI/CD Fails
1. Check GitHub Actions logs
2. Verify workflow files are in `.github/workflows/`
3. Ensure secrets are configured (if needed)

### Debug Mode

To run the build script with more verbose output:

```bash
bash -x scripts/build.sh
```

## 📁 Project Structure

```
├── scripts/
│   └── build.sh              # Main build script
├── .github/workflows/
│   ├── build-and-release.yml # Release workflow
│   └── test-build.yml        # Test workflow
├── pipes/
│   ├── pipes.mdl             # MDL source files
│   ├── recipes/              # Recipe JSON files
│   └── models/               # Blockbench models
├── assets/
│   └── pipes/
│       ├── models/           # Item models
│       └── textures/         # Custom textures
├── dist/                     # Build outputs
└── build/                    # Temporary build files
```

## 🤝 Contributing

When contributing to the build system:

1. **Test Locally** - Always test builds locally first
2. **Update Documentation** - Keep this file updated
3. **Follow Standards** - Use consistent naming and structure
4. **Add Tests** - Include verification steps in workflows

## 📞 Support

If you encounter issues with the build system:

1. Check the troubleshooting section above
2. Review GitHub Actions logs
3. Create an issue with detailed error information
4. Include your environment details (OS, Python version, etc.)
