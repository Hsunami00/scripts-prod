#!/usr/bin/env python3
# launch Maya version and mode (dev or prod)
# by Hsunami 
# 1/12/2026

import os
import subprocess
import argparse
import platform

def launch_maya(version, env):
    # 1. Path to your Maya executable
    # On Windows: "C:/Program Files/Autodesk/Maya2024/bin/maya.exe"
    # On Linux: "/usr/autodesk/maya2024/bin/maya"
    if platform.system() == "Windows":
        maya_exe = f"C:/Program Files/Autodesk/Maya{version}/bin/maya.exe"
    elif platform.system() == "Darwin":  # macOS
        maya_exe = f"/Applications/Autodesk/maya{version}/Maya.app/Contents/MacOS/maya"
    else:  # Assume Linux
        maya_exe = f"/usr/autodesk/maya{version}/bin/maya"    
    # 2. Start with a copy of current system environment variables
    custom_env = os.environ.copy()

    # 3. Define environment-specific variables
    if env == "dev":
        print("Launching Maya in DEVELOPMENT mode...")
        custom_env["MAYA_RUNNING_MODE"] = "dev"
    elif env == "prod":
        print("Launching Maya in PRODUCTION mode...")
        custom_env["MAYA_RUNNING_MODE"] = "prod"

    # 4. Launch Maya with the modified environment
    try:
        subprocess.Popen([maya_exe], env=custom_env)
    except Exception as e:
        print(f"Failed to launch Maya: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Maya Pipeline Launcher")
    parser.add_argument("--version", type=str, default="2024", help="Maya version to launch")
    parser.add_argument("--env", choices=["dev", "prod"], default="dev", help="Environment to launch")
    args = parser.parse_args()

    launch_maya(args.version, args.env)