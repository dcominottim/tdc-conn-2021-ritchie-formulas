Function runFormula () {
  $queue_name_text = $env:RIT_QUEUE_NAME_TEXT

  Write-Host "Reading queue with name $queue_name_text"
  
  awslocal sqs receive-message --queue-url http://localhost:4566/000000000000/$queue_name_text

  Write-Host "Done!"
}
