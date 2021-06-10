Function runFormula () {
  $topic_name_text = $env:RIT_TOPIC_NAME_TEXT

  Write-Host "Creating topic with name $topic_name_text"
  
  awslocal sns create-topic --name $topic_name_text

  Write-Host "Done!"
}
