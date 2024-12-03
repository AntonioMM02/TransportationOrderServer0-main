# Set the path to your JSON file
$filePath = "orders.json"

# Open the file and process each line
Get-Content $filePath | ForEach-Object {
    $line = $_
    # Perform the PUT request for each line using PowerShell's native method
    Invoke-RestMethod -Uri "http://localhost:8080/transportationorders" -Method Put -Body $line -ContentType "application/json"
}