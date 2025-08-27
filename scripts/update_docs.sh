#!/bin/bash

# Script to update documentation from the main README
# This script extracts sections from README.md and updates the docs

set -e

echo "Updating documentation from README.md..."

# Create docs directory if it doesn't exist
mkdir -p docs/_docs

# Function to extract section from README and create doc file
extract_section() {
    local section_name=$1
    local output_file=$2
    local start_pattern=$3
    local end_pattern=$4
    
    echo "Extracting $section_name..."
    
    # Extract content between patterns
    awk -v start="$start_pattern" -v end="$end_pattern" '
        BEGIN { in_section = 0; content = "" }
        $0 ~ start { in_section = 1; next }
        $0 ~ end { in_section = 0; exit }
        in_section { content = content $0 "\n" }
        END { print content }
    ' README.md > "docs/_docs/$output_file"
    
    # Add front matter
    temp_file=$(mktemp)
    cat > "$temp_file" << EOF
---
layout: page
title: $section_name
permalink: /docs/${output_file%.md}/
---

EOF
    
    cat "docs/_docs/$output_file" >> "$temp_file"
    mv "$temp_file" "docs/_docs/$output_file"
    
    echo "Created docs/_docs/$output_file"
}

# Extract main sections from README
# Note: This is a simplified version - you may need to adjust patterns based on your README structure

# Extract Installation section
if grep -q "## 🔧 Installation" README.md; then
    extract_section "Installation" "installation.md" "## 🔧 Installation" "## 📁 Project Structure"
fi

# Extract Basic Usage section
if grep -q "## 🚀 Usage Examples" README.md; then
    extract_section "Basic Usage" "basic-usage.md" "## 🚀 Usage Examples" "## 🔧 Configuration"
fi

# Extract Configuration section
if grep -q "## 🔧 Configuration" README.md; then
    extract_section "Configuration" "configuration.md" "## 🔧 Configuration" "## 🐛 Troubleshooting"
fi

# Extract Troubleshooting section
if grep -q "## 🐛 Troubleshooting" README.md; then
    extract_section "Troubleshooting" "troubleshooting.md" "## 🐛 Troubleshooting" "## 🤝 Contributing"
fi

# Extract Contributing section
if grep -q "## 🤝 Contributing" README.md; then
    extract_section "Contributing" "contributing.md" "## 🤝 Contributing" "## 📄 License"
fi

# Create API Reference
cat > "docs/_docs/api-reference.md" << 'EOF'
---
layout: page
title: API Reference
permalink: /docs/api-reference/
---

# API Reference

## Functions

### Core Functions

#### `pipes:init`
Initializes the pipe system and sets up scoreboards.

#### `pipes:tick_main`
Main tick function that runs every game tick.

#### `pipes:create_source`
Creates a pipe source at the player's location.

#### `pipes:create_sink`
Creates a pipe sink at the player's location.

### Advanced Functions

#### `pipes:create_smart_source`
Creates a smart source with filtering capabilities.

#### `pipes:create_smart_sink`
Creates a smart sink with filtering capabilities.

#### `pipes:set_source_filter`
Sets item filter for a source.

#### `pipes:set_sink_filter`
Sets item filter for a sink.

### Configuration Functions

#### `pipes:set_flow_rate`
Sets the item flow rate.

#### `pipes:set_token_speed`
Sets the movement speed of pipe tokens.

#### `pipes:toggle_debug`
Toggles debug mode.

#### `pipes:optimize_performance`
Optimizes performance settings.

## Scoreboards

### Core Scoreboards
- `pipes_tick` - Global tick counter
- `pipes_steps` - Token step counter
- `pipes_spawn` - Spawn counter
- `pipes_flow_rate` - Flow rate setting
- `pipes_connection_id` - Connection ID counter

### Advanced Scoreboards
- `pipes_energy` - Energy level
- `pipes_redstone` - Redstone state
- `pipes_priority` - Priority level
- `pipes_filter_type` - Filter type

### Configuration Scoreboards
- `pipes_token_speed` - Token movement speed
- `pipes_max_distance` - Maximum pipe distance
- `pipes_auto_extract` - Auto-extract setting
- `pipes_debug` - Debug mode setting

## Tags

### Entity Tags
- `pipes.controller` - Pipe controller entities
- `pipes.source` - Source entities
- `pipes.sink` - Sink entities
- `pipes.token` - Item token entities
- `pipes.flow` - Flowing item tokens

### Function Tags
- `minecraft:load` - Load functions
- `minecraft:tick` - Tick functions

## NBT Data

### Item Display NBT
```json
{
  "Tags": ["pipes.token", "pipes.flow"],
  "item": {
    "id": "minecraft:iron_ingot",
    "count": 1
  },
  "transformation": {
    "translation": [0.0, 0.0, 0.0],
    "left_rotation": [0.0, 0.0, 0.0, 1.0],
    "right_rotation": [0.0, 0.0, 0.0, 1.0],
    "scale": [0.3, 0.3, 0.3]
  },
  "billboard": "fixed"
}
```

### Marker NBT
```json
{
  "Tags": ["pipes.controller", "pipes.source"],
  "CustomName": "{\"text\":\"Pipe Source\",\"italic\":false}"
}
```
EOF

echo "Documentation update complete!"
echo ""
echo "Next steps:"
echo "1. Review the extracted content in docs/_docs/"
echo "2. Manually adjust section boundaries if needed"
echo "3. Update _config.yml navigation if needed"
echo "4. Test locally with: cd docs && bundle exec jekyll serve"
echo "5. Commit and push changes to trigger GitHub Pages deployment"
