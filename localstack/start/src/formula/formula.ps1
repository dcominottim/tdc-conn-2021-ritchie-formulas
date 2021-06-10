Function runFormula () {
  Write-Host "Starting container rit-localstack..."
  docker start rit-localstack | out-null
  Write-Host "Done!"
}
