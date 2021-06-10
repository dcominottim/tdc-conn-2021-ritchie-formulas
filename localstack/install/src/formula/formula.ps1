Function runFormula () {
  $version_text = $env:RIT_VERSION_TEXT
  $install_type_list = $env:RIT_INSTALL_TYPE_LIST

  Write-Host "Let's install LocalStack ($version_text) with $install_type_list"

  pip install awscli | Out-Null
  pip install awscli-local | Out-Null

  if ($install_type_list -eq "pip") {
    pip install localstack
  } else {
    docker pull localstack/localstack:$version_text
    $existing_container_id = (docker ps -aqf "name=rit-localstack")

    if ($existing_container_id) {
      rit localstack stop
      Write-Host "Removing existing rit-localstack container with ID $existing_container_id"
      docker rm -f $existing_container_id
    }

    docker create --name rit-localstack -p 4566:4566 -p 4571:4571 -p 4575:4575 -p 4576:4576 localstack/localstack:$version_text
  }

  Write-Host "Done!"
}
