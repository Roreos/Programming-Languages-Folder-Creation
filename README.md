# Programming Languages Folder Creation ( No Name )

Welcome to the Programming Languages Folder Creation PowerShell Script. This script is designed to save programmers time by automating the creation of common project folders for various programming languages. Instead of spending time manually creating folders, this script handles it all for you in just a few seconds.

## Overview

This PowerShell script:
- Automatically creates a set of folders for different programming languages within a specified base directory.
- Launches the base directory in File Explorer upon completion.
- Can be freely re-uploaded and shared as it is non-licensed.

## Supported Languages

The script creates the following folders:
- Python
- C#
- JavaScript
- PHP
- Ruby
- Go
- C++
- Swift
- Java
- C
- TypeScript
- PowerShell ( Meant for PS Scripts )
- SQL
- HTML
- CSS
- Rust

## Requirements

- **Python**: The script requires Python to be installed on your system. If Python is not installed, the script will error then exit.
- **PowerShell**: Make sure that PowerShell is set to allow script execution, if it is not then it will error. Run the following command to set the execution policy for the current user:

Before running the command, I suggest you research SetExecution.

```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Restricted
