# I created this powershell script so that programmers didn't have to spend 5 minutes (i'm overexaggerating this) creating folders.
# The reason you would be creating folders is so you could store your project folders in the language you created in. (Backend)

# This script can be re-uploaded by anyone else. It is non-licensed.

$runPy = @"
import os
import sys

def create_folders(base_directory):
    folders = ['Python', 'C#', 'JavaScript', 'PHP', 'Ruby', 'Go', 'C++', 'Swift', 'Java', 'C', 'PHP', 'TypeScript', 'Powershell', 'SQL', 'HTML', 'CSS', 'Rust', 'Go']
    for folder in folders:
        path = os.path.join(base_directory, folder)
        if not os.path.exists(path):
            os.makedirs(path)

    # Open the base directory in File Explorer
    os.startfile(base_directory)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: your_script <directory_path>")
        sys.exit(1)
    
    base_directory = sys.argv[1]
    create_folders(base_directory)
"@

$tempFile = [System.IO.Path]::GetTempFileName() + ".py"
[System.IO.File]::WriteAllText($tempFile, $runPy)

$python = Get-Command python -ErrorAction SilentlyContinue
if (-not $python) {
    Write-Error "Python is not installed"
    exit 1
}

$directory = Read-Host "Enter the directory where the language folders should be created"

& $python $tempFile $directory

Remove-Item $tempFile

pause