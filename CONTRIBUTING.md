# Contributing to Minecraft Pipes

Thank you for your interest in contributing to Minecraft Pipes! This document provides guidelines and information for contributors.

## Getting Started

### Prerequisites

- **Minecraft Java Edition 1.21+**
- **Python 3.7+** (for MDL)
- **Ruby 3.0+** (for documentation)
- **Git**

### Development Setup

1. **Fork the repository**
   ```bash
   # Fork on GitHub, then clone your fork
   git clone https://github.com/your-username/MinecraftPipes.git
   cd MinecraftPipes
   ```

2. **Install MDL (Minecraft Datapack Language)**
   ```bash
   pip install minecraft-datapack-language
   ```

3. **Install documentation dependencies**
   ```bash
   cd docs
   bundle install
   ```

4. **Create a development branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Workflow

### Making Changes

1. **Make your changes** to the MDL files
2. **Test your changes**:
   ```bash
   # Check syntax
   mdl check .
   
   # Build the datapack
   mdl build --mdl . -o dist --wrapper minecraft_pipes --pack-format 48
   ```
3. **Test in Minecraft**:
   - Copy the built datapack to your test world
   - Run `/reload` in-game
   - Test the functionality

### Code Style Guidelines

#### MDL Files
- Use **4 spaces** for indentation (no tabs)
- Use **descriptive function names** in snake_case
- Add **comments** for complex logic
- Keep functions **focused and small**
- Use **consistent naming** for scoreboards and tags

#### Documentation
- Follow **Markdown best practices**
- Use **clear and concise language**
- Include **code examples** where helpful
- Update **both README and docs** when adding features

### Testing

#### Before Submitting
- [ ] **Syntax check passes**: `mdl check .`
- [ ] **Build succeeds**: `mdl build --mdl . -o dist --wrapper minecraft_pipes --pack-format 48`
- [ ] **Tested in Minecraft**: Functionality works as expected
- [ ] **Documentation updated**: README and docs reflect changes
- [ ] **No breaking changes**: Unless explicitly intended

#### Testing Checklist
- [ ] Basic pipe creation works
- [ ] Item transportation functions correctly
- [ ] Advanced features work (if applicable)
- [ ] Configuration options work
- [ ] Error handling is appropriate
- [ ] Performance is acceptable

## Pull Request Process

### Creating a Pull Request

1. **Push your changes** to your fork
   ```bash
   git add .
   git commit -m "Add feature: brief description"
   git push origin feature/your-feature-name
   ```

2. **Create a Pull Request** on GitHub
   - Use a **descriptive title**
   - Provide a **detailed description**
   - Include **screenshots/videos** if relevant
   - Link any related issues

### Pull Request Guidelines

#### Title Format
```
Type: Brief description
```
Examples:
- `Feature: Add item filtering system`
- `Fix: Resolve token movement issues`
- `Docs: Update installation guide`

#### Description Template
```markdown
## Description
Brief description of what this PR does.

## Changes Made
- [ ] Change 1
- [ ] Change 2
- [ ] Change 3

## Testing
- [ ] Tested in Minecraft 1.21+
- [ ] All existing functionality still works
- [ ] New features work as expected

## Screenshots/Videos
[If applicable]

## Related Issues
Closes #123
```

### Review Process

1. **Automated checks** must pass
2. **Code review** by maintainers
3. **Testing** by maintainers
4. **Documentation review**
5. **Final approval** and merge

## Issue Reporting

### Bug Reports

When reporting bugs, please include:

- **Minecraft version**
- **Datapack version**
- **Steps to reproduce**
- **Expected behavior**
- **Actual behavior**
- **Screenshots/videos** (if applicable)
- **System information** (OS, Java version, etc.)

### Feature Requests

When requesting features, please include:

- **Detailed description** of the feature
- **Use case** and motivation
- **Proposed implementation** (if you have ideas)
- **Alternative solutions** considered

## Code of Conduct

### Our Standards

- **Be respectful** and inclusive
- **Be constructive** in feedback
- **Be patient** with newcomers
- **Be helpful** to other contributors

### Unacceptable Behavior

- **Harassment** or discrimination
- **Trolling** or inflammatory comments
- **Spam** or off-topic content
- **Personal attacks**

## Getting Help

### Resources

- **Documentation**: [docs/](docs/) directory
- **Issues**: [GitHub Issues](https://github.com/your-username/MinecraftPipes/issues)
- **Discussions**: [GitHub Discussions](https://github.com/your-username/MinecraftPipes/discussions)

### Questions

If you have questions about contributing:

1. **Check the documentation** first
2. **Search existing issues** for similar questions
3. **Create a new issue** with the "question" label
4. **Join discussions** in GitHub Discussions

## Recognition

Contributors will be recognized in:

- **README.md** contributors section
- **Release notes** for significant contributions
- **GitHub contributors** page

## License

By contributing to Minecraft Pipes, you agree that your contributions will be licensed under the same license as the project.

---

Thank you for contributing to Minecraft Pipes! 🎮
