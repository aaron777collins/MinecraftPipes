#!/usr/bin/env python3
"""
Minecraft Pipes Documentation Generator
Automatically generates beautiful documentation from Python README files and source code.
"""

import os
import re
import glob
from pathlib import Path
from datetime import datetime
import frontmatter

class DocGenerator:
    def __init__(self, source_dir="src", docs_dir="docs/_docs"):
        self.source_dir = Path(source_dir)
        self.docs_dir = Path(docs_dir)
        self.docs_dir.mkdir(parents=True, exist_ok=True)
        
    def extract_docstrings(self, python_file):
        """Extract docstrings and comments from Python files."""
        with open(python_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract module docstring
        module_match = re.search(r'"""(.*?)"""', content, re.DOTALL)
        module_doc = module_match.group(1).strip() if module_match else ""
        
        # Extract function docstrings
        functions = []
        func_pattern = r'def\s+(\w+)\s*\([^)]*\):\s*"""(.*?)"""'
        for match in re.finditer(func_pattern, content, re.DOTALL):
            func_name = match.group(1)
            func_doc = match.group(2).strip()
            functions.append({
                'name': func_name,
                'doc': func_doc
            })
        
        return {
            'module_doc': module_doc,
            'functions': functions
        }
    
    def parse_mdl_file(self, mdl_file):
        """Parse MDL files and extract documentation."""
        with open(mdl_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract comments and structure
        lines = content.split('\n')
        sections = []
        current_section = None
        
        for line in lines:
            if line.strip().startswith('//'):
                comment = line.strip()[2:].strip()
                if comment.startswith('#'):
                    # Section header
                    if current_section:
                        sections.append(current_section)
                    current_section = {
                        'title': comment[1:].strip(),
                        'content': [],
                        'code': []
                    }
                elif current_section:
                    current_section['content'].append(comment)
            elif current_section and line.strip():
                current_section['code'].append(line)
        
        if current_section:
            sections.append(current_section)
        
        return sections
    
    def generate_page_content(self, title, description, content_sections):
        """Generate beautiful HTML content for a documentation page."""
        html_content = f"""---
layout: default
title: {title}
description: {description}
---

<div class="page-header">
  <div class="page-header-content">
    <h1><i class="fas fa-book"></i> {title}</h1>
    <p>{description}</p>
  </div>
</div>

"""
        
        for section in content_sections:
            if section.get('title'):
                html_content += f"""
<div class="card">
  <div class="card-header">
    <div class="card-icon">
      <i class="fas fa-code"></i>
    </div>
    <h2 class="card-title">{section['title']}</h2>
  </div>
  
"""
                
                if section.get('content'):
                    html_content += f"  <p>{' '.join(section['content'])}</p>\n"
                
                if section.get('code'):
                    html_content += f"""
  <div class="command-example">
    <pre><code>{chr(10).join(section['code'])}</code></pre>
  </div>
"""
                
                html_content += "</div>\n"
        
        return html_content
    
    def generate_from_readme(self, readme_file, output_file):
        """Generate documentation from a README file."""
        with open(readme_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract title and description
        title_match = re.search(r'#\s*(.+)', content)
        title = title_match.group(1) if title_match else "Documentation"
        
        # Convert markdown to HTML sections
        sections = []
        lines = content.split('\n')
        current_section = None
        
        for line in lines:
            if line.startswith('##'):
                if current_section:
                    sections.append(current_section)
                current_section = {
                    'title': line[2:].strip(),
                    'content': []
                }
            elif line.startswith('#'):
                # Main title, skip
                continue
            elif current_section and line.strip():
                current_section['content'].append(line)
        
        if current_section:
            sections.append(current_section)
        
        # Generate HTML
        html_content = self.generate_page_content(
            title, 
            f"Documentation for {title}",
            sections
        )
        
        # Write to file
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(html_content)
    
    def generate_all_docs(self):
        """Generate all documentation files."""
        print("🔧 Generating documentation from source files...")
        
        # Generate from Python files
        python_files = glob.glob(str(self.source_dir / "**/*.py"), recursive=True)
        for py_file in python_files:
            if py_file.endswith('__init__.py'):
                continue
                
            rel_path = Path(py_file).relative_to(self.source_dir)
            output_file = self.docs_dir / f"{rel_path.stem}.md"
            
            try:
                doc_info = self.extract_docstrings(py_file)
                if doc_info['module_doc'] or doc_info['functions']:
                    content = f"""---
layout: default
title: {rel_path.stem.replace('_', ' ').title()}
description: {doc_info['module_doc'][:100]}...
---

<div class="page-header">
  <div class="page-header-content">
    <h1><i class="fas fa-code"></i> {rel_path.stem.replace('_', ' ').title()}</h1>
    <p>{doc_info['module_doc']}</p>
  </div>
</div>

"""
                    
                    if doc_info['functions']:
                        content += '<div class="feature-grid">\n'
                        for func in doc_info['functions']:
                            content += f"""
  <div class="feature-card">
    <div class="feature-icon">
      <i class="fas fa-function"></i>
    </div>
    <h3 class="feature-title">{func['name']}</h3>
    <p class="feature-description">{func['doc']}</p>
  </div>
"""
                        content += '</div>\n'
                    
                    with open(output_file, 'w', encoding='utf-8') as f:
                        f.write(content)
                    print(f"  ✅ Generated: {output_file}")
                    
            except Exception as e:
                print(f"  ⚠️  Error processing {py_file}: {e}")
        
        # Generate from MDL files
        mdl_files = glob.glob(str(self.source_dir / "**/*.mdl"), recursive=True)
        for mdl_file in mdl_files:
            rel_path = Path(mdl_file).relative_to(self.source_dir)
            output_file = self.docs_dir / f"{rel_path.stem}.md"
            
            try:
                sections = self.parse_mdl_file(mdl_file)
                if sections:
                    html_content = self.generate_page_content(
                        rel_path.stem.replace('_', ' ').title(),
                        f"Documentation for {rel_path.stem}",
                        sections
                    )
                    
                    with open(output_file, 'w', encoding='utf-8') as f:
                        f.write(html_content)
                    print(f"  ✅ Generated: {output_file}")
                    
            except Exception as e:
                print(f"  ⚠️  Error processing {mdl_file}: {e}")
        
        # Generate from README files
        readme_files = glob.glob(str(self.source_dir / "**/README*.md"), recursive=True)
        for readme_file in readme_files:
            rel_path = Path(readme_file).relative_to(self.source_dir)
            output_file = self.docs_dir / f"{rel_path.stem}.md"
            
            try:
                self.generate_from_readme(readme_file, output_file)
                print(f"  ✅ Generated: {output_file}")
            except Exception as e:
                print(f"  ⚠️  Error processing {readme_file}: {e}")
        
        print("🎉 Documentation generation complete!")
        print(f"📁 Generated files are in: {self.docs_dir}")

def main():
    """Main function to run the documentation generator."""
    generator = DocGenerator()
    generator.generate_all_docs()

if __name__ == "__main__":
    main()
