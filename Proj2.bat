# PowerShell script to interact with Chrome's remote debugging and close specific tabs.

# The URL of Chrome's remote debugging JSON endpoint
$debuggerUrl = "http://localhost:9222/json"

# Get the list of open tabs in Chrome via the remote debugging API
$response = Invoke-RestMethod -Uri $debuggerUrl

# Log the list of open tabs for debugging purposes
Write-Host "Currently open tabs:"
$response | ForEach-Object { Write-Host $_.url }

# Find the tabs with the URLs you want to close
$tabsToClose = $response | Where-Object { 
    $_.url -eq "http://192.168.1.188/html/remote.html" -or $_.url -eq "http://192.168.1.145/html/remote.html" 
}

# Close each of the tabs
foreach ($tab in $tabsToClose) {
    # Close
