#!/usr/bin/env python3
"""
Test runner for Minecraft Pipes examples
"""

import os
import sys
import subprocess
import json
from pathlib import Path

def run_command(cmd, cwd=None):
    """Run a command and return the result"""
    try:
        result = subprocess.run(
            cmd, 
            cwd=cwd, 
            capture_output=True, 
            text=True, 
            check=True
        )
        return True, result.stdout
    except subprocess.CalledProcessError as e:
        return False, e.stderr

def test_mdl_installation():
    """Test if MDL is properly installed"""
    print("Testing MDL installation...")
    success, output = run_command(["mdl", "--help"])
    if success:
        print("✅ MDL is installed and working")
        return True
    else:
        print("❌ MDL is not installed or not working")
        print(f"Error: {output}")
        return False

def test_mdl_syntax_check():
    """Test MDL syntax check on all .mdl files"""
    print("\nTesting MDL syntax check...")
    
    # Check main project files (only core.mdl should have pack declaration)
    main_files = ["src/core.mdl", "src/pipes.mdl", "src/pipes_advanced.mdl", "src/pipes_config.mdl", "src/pipes_creation.mdl"]
    
    for file in main_files:
        if os.path.exists(file):
            print(f"Checking {file}...")
            # For module files (not core.mdl), we need to check them in context
            if file == "src/core.mdl":
                success, output = run_command(["mdl", "check", file])
                if success:
                    print(f"✅ {file} syntax is valid")
                else:
                    print(f"❌ {file} has syntax errors")
                    print(f"Error: {output}")
                    return False
            else:
                # For module files, check if they can be parsed (they won't have pack declarations)
                try:
                    with open(file, 'r') as f:
                        content = f.read()
                    if 'namespace' in content:
                        print(f"✅ {file} structure is valid")
                    else:
                        print(f"❌ {file} missing namespace declaration")
                        return False
                except Exception as e:
                    print(f"❌ {file} has errors: {e}")
                    return False
    
    # Check integrated test files (these are part of the main datapack, no pack declaration)
    integrated_test_files = ["test_examples/simple_pipe.mdl", "test_examples/advanced_pipe_test.mdl"]
    for file in integrated_test_files:
        if os.path.exists(file):
            print(f"Checking integrated test {file}...")
            # These files should NOT have pack declarations since they're part of main datapack
            try:
                with open(file, 'r') as f:
                    content = f.read()
                if 'pack' not in content and 'namespace' in content:
                    print(f"✅ {file} structure is valid (integrated test)")
                else:
                    print(f"❌ {file} should not have pack declaration (integrated test)")
                    return False
            except Exception as e:
                print(f"❌ {file} has errors: {e}")
                return False
    
    # Check standalone test files (these should have pack declarations)
    standalone_test_dir = Path("test_examples/standalone_tests")
    if standalone_test_dir.exists():
        for test_folder in standalone_test_dir.iterdir():
            if test_folder.is_dir():
                core_file = test_folder / "core.mdl"
                if core_file.exists():
                    print(f"Checking standalone test {core_file}...")
                    success, output = run_command(["mdl", "check", str(core_file)])
                    if success:
                        print(f"✅ {core_file} syntax is valid")
                    else:
                        print(f"❌ {core_file} has syntax errors")
                        print(f"Error: {output}")
                        return False
    
    return True

def test_mdl_build():
    """Test MDL build functionality"""
    print("\nTesting MDL build...")
    
    # Create dist directory
    os.makedirs("test_examples/dist", exist_ok=True)
    
    # Build main project from src directory (includes integrated tests)
    print("Building main project (with integrated tests)...")
    success, output = run_command([
        "mdl", "build", 
        "--mdl", "src", 
        "-o", "test_examples/dist", 
        "--wrapper", "minecraft_pipes", 
        "--pack-format", "82"
    ])
    
    if success:
        print("✅ Main project built successfully")
    else:
        print("❌ Main project build failed")
        print(f"Error: {output}")
        return False
    
    # Build standalone test examples
    standalone_test_dir = Path("test_examples/standalone_tests")
    if standalone_test_dir.exists():
        for test_folder in standalone_test_dir.iterdir():
            if test_folder.is_dir():
                print(f"Building standalone test {test_folder.name}...")
                success, output = run_command([
                    "mdl", "build", 
                    "--mdl", str(test_folder), 
                    "-o", "test_examples/dist",
                    "--wrapper", test_folder.name,
                    "--pack-format", "82"
                ])
                if success:
                    print(f"✅ {test_folder.name} built successfully")
                else:
                    print(f"❌ {test_folder.name} build failed")
                    print(f"Error: {output}")
                    return False
    
    return True

def verify_build_output():
    """Verify that build output has correct structure"""
    print("\nVerifying build output...")
    
    dist_dir = Path("test_examples/dist")
    if not dist_dir.exists():
        print("❌ No dist directory found")
        return False
    
    # Check main datapack
    main_datapack = dist_dir / "minecraft_pipes"
    if main_datapack.exists():
        print("Checking main datapack structure...")
        
        # Check required files
        required_files = [
            "pack.mcmeta",
            "data/pipes/function/init.mcfunction",
            "data/pipes/function/tick_main.mcfunction",
            "data/pipes/function/create_source.mcfunction",
            "data/pipes/function/create_sink.mcfunction"
        ]
        
        for file_path in required_files:
            full_path = main_datapack / file_path
            if full_path.exists():
                print(f"✅ {file_path} found")
            else:
                print(f"❌ {file_path} missing")
                return False
        
        # Check pack.mcmeta content
        pack_mcmeta = main_datapack / "pack.mcmeta"
        if pack_mcmeta.exists():
            try:
                with open(pack_mcmeta, 'r') as f:
                    content = json.load(f)
                if "pack" in content and "pack_format" in content["pack"]:
                    print(f"✅ pack.mcmeta has valid format (pack_format: {content['pack']['pack_format']})")
                else:
                    print("❌ pack.mcmeta has invalid format")
                    return False
            except json.JSONDecodeError:
                print("❌ pack.mcmeta is not valid JSON")
                return False
    else:
        print("❌ Main datapack not found")
        return False
    
    return True

def test_cli_commands():
    """Test MDL CLI commands"""
    print("\nTesting MDL CLI commands...")
    
    # Test help
    success, output = run_command(["mdl", "--help"])
    if success:
        print("✅ mdl --help works")
    else:
        print("❌ mdl --help failed")
        return False
    
    # Test new command
    success, output = run_command([
        "mdl", "new", "cli_test", 
        "--name", "CLI Test", 
        "--pack-format", "48"
    ])
    
    if success:
        print("✅ mdl new command works")
        
        # Check created project
        if os.path.exists("cli_test"):
            print("✅ CLI test project created")
            
            # Clean up
            import shutil
            shutil.rmtree("cli_test")
            print("✅ CLI test project cleaned up")
        else:
            print("❌ CLI test project not created")
            return False
    else:
        print("❌ mdl new command failed")
        print(f"Error: {output}")
        return False
    
    return True

def main():
    """Run all tests"""
    print("🚀 Starting Minecraft Pipes test suite...")
    print("=" * 50)
    
    tests = [
        ("MDL Installation", test_mdl_installation),
        ("MDL Syntax Check", test_mdl_syntax_check),
        ("MDL Build", test_mdl_build),
        ("Build Output Verification", verify_build_output),
        ("CLI Commands", test_cli_commands),
    ]
    
    passed = 0
    total = len(tests)
    
    for test_name, test_func in tests:
        print(f"\n📋 Running {test_name}...")
        try:
            if test_func():
                print(f"✅ {test_name} passed")
                passed += 1
            else:
                print(f"❌ {test_name} failed")
        except Exception as e:
            print(f"❌ {test_name} failed with exception: {e}")
    
    print("\n" + "=" * 50)
    print(f"📊 Test Results: {passed}/{total} tests passed")
    
    if passed == total:
        print("🎉 All tests passed!")
        return 0
    else:
        print("💥 Some tests failed!")
        return 1

if __name__ == "__main__":
    sys.exit(main())
