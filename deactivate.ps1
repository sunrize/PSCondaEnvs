Param(
    [string]$condaEnvName
    )

# fix for pre-PS3
if (-not $PSScriptRoot) { 
    $PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent 
}

# Get location of Anaconda installation
$anacondaInstallPath = (get-item $PSScriptRoot).parent.FullName

# Build ENVS path
$env:ANACONDA_ENVS = $anacondaInstallPath + '\envs'

if (-not (test-path env:\CONDA_DEFAULT_ENV)) {
    write-host
    write-host "No active Conda environment detected."
    write-host
    write-host "Usage: deactivate"
    write-host "Deactivates previously activated Conda environment."
    write-host
    write-host
    exit
}

# Deactivate a previous activation if it is live
if (test-path env:\CONDA_DEFAULT_ENV) {
    write-host
    write-host "Deactivating environment `"$env:CONDA_DEFAULT_ENV...`""

    # This removes the previous env from the path and restores the original path
    $env:PATH = $env:ANACONDA_BASE_PATH

    # Restore original prompt
    $function:prompt = $function:condaUserPrompt
    # Clean up
    remove-item env:\CONDA_DEFAULT_ENV
    remove-item function:\condaUserPrompt
    write-host
    write-host
}