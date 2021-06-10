Function runFormula () {
  $topic_name_text = $env:RIT_TOPIC_NAME_TEXT
  $queue_name_text = $env:RIT_QUEUE_NAME_TEXT

  Write-Host "Subscribing queue $queue_name_text to topic $topic_name_text"
  
  awslocal sns subscribe --topic-arn arn:aws:sns:us-east-1:000000000000:$topic_name_text --protocol sqs --notification-endpoint arn:aws:sqs:us-east-1:queue:$queue_name_text

  Write-Host "Done!"
}
