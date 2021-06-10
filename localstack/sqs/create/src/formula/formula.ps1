Function runFormula () {
  $queue_name_text = $env:RIT_QUEUE_NAME_TEXT

  Write-Host "Creating queue with name $queue_name_text"
  
  awslocal sqs create-queue --queue-name $queue_name_text

  Write-Host "Done!"
}
