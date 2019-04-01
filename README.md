# shared-infra-devops

DevOps Automation for the [shared-infra projects](https://github.com/vplauzon/shared-infra)

## Manage projects.json

During the build we embed the projects.json file within the input parameters file using [create-input-parameters.py](create-input-parameters.py).

## Logic Apps

Logic App|Uses|Description
--|--|--
create-release-app||Create a release in a specified project
get-release-status-app||Get the status of a release
get-secret-app||Returns a secret from KeyVault
rebuilt-dev-app|get-secret-app, create-release-app, get-release-status-app|Heavy lifting:  loop through stages and releases to create releases
rebuilt-dev-blue-app|rebuilt-dev-app|Invoke a rebuild in dev with blue parameter
