Function runFormula () {
  Write-Host "Stopping container rit-localstack..."
  docker stop rit-localstack | out-null
  Write-Host "Done!"
}
