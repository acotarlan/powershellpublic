
#Name:   Time-Command
#Usage: .\Time-Command.ps1  <COMMAND>


# Define a parameter to accept the command as an argument
param (
    [string]$Command
)

# Start time
$start = Get-Date

# Run the command passed as an argument and show output
Invoke-Expression $Command

# End time
$end = Get-Date

# Calculate and show the duration
$duration = $end - $start
Write-Output "Execution Time: $($duration.TotalSeconds) seconds"
