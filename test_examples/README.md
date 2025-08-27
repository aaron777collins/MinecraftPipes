# Minecraft Pipes Test Examples

This directory contains test examples for the Minecraft Pipes datapack system.

## Test Structure

### Integrated Tests
These tests are part of the main datapack and are built together with the core system:

- `simple_pipe.mdl` - Basic pipe functionality tests
- `advanced_pipe_test.mdl` - Advanced pipe features tests

**Note**: These files do NOT have pack declarations since they're integrated into the main datapack.

### Standalone Tests
These tests are independent datapacks that can be built and tested separately:

- `standalone_tests/simple_pipe_test/core.mdl` - Standalone simple pipe test
- `standalone_tests/advanced_pipe_test/core.mdl` - Standalone advanced pipe test

**Note**: These files DO have pack declarations since they're independent datapacks.

## Running Tests

### Run All Tests
```bash
python test_examples/run_all_tests.py
```

This will:
1. Test MDL installation
2. Check syntax of all files
3. Build the main project (with integrated tests)
4. Build standalone test datapacks
5. Verify build output structure
6. Test CLI commands

### Build Individual Standalone Tests
```bash
# Build simple pipe test
mdl build --mdl test_examples/standalone_tests/simple_pipe_test -o test_examples/dist --wrapper simple_pipe_test --pack-format 82

# Build advanced pipe test
mdl build --mdl test_examples/standalone_tests/advanced_pipe_test -o test_examples/dist --wrapper advanced_pipe_test --pack-format 82
```

### Build Main Project (with Integrated Tests)
```bash
mdl build --mdl src -o dist --wrapper minecraft_pipes --pack-format 82
```

## Test Output

All built datapacks are placed in the `test_examples/dist/` directory:
- `minecraft_pipes/` - Main project with integrated tests
- `simple_pipe_test/` - Standalone simple pipe test
- `advanced_pipe_test/` - Standalone advanced pipe test

## Test Features

### Simple Pipe Test
- Basic pipe creation and functionality
- Source and sink entity creation
- Test status tracking

### Advanced Pipe Test
- Energy system testing
- Item filtering functionality
- Priority system testing
- Advanced entity management

## Troubleshooting

If you encounter "missing pack declaration" errors:
- **Integrated tests** should NOT have pack declarations
- **Standalone tests** should have pack declarations in their `core.mdl` files

The test runner automatically validates the correct structure for each type of test.
