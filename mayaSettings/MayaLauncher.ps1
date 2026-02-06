function MayaLauncher {
    param (
        [Parameter(Mandatory=$true)]
        [string]$version,

        [Parameter(Mandatory=$true)]
        [string]$env
    )
    
    Write-Host "MayaLauncher PS function running..." -ForegroundColor Cyan
    
    # Absolute path to your Python script
    $scriptPath = "C:\github\dev\scripts\mayaSettings\mayaLauncher.py"
    
    # Use the call operator (&) to execute python with the script path and arguments
    # Ensure you use $version and $env as defined in the param block
    $pythonOutput = & python $scriptPath --version $version --env $env
    
    Write-Host "Python script output:" -ForegroundColor Green
    $pythonOutput
}
