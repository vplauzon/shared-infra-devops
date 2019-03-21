#!/bin/bash

###################################################################################################
### Copy local projects.json file to storage account

#   Bind script parameters
rg=$1
account=$2

echo "Resource Group:  $rg"
echo "Account Name:  $account"

#   Fetch key
echo "Fetching key..."
key=$(az storage account keys list --account-name $account -g $rg --query "[0].value" -o tsv)

#   Get Blob Container name
echo "Fetching blob container name..."
container=$(az storage container list --account-name $account --account-key $key --query "[0].name" -o tsv)
echo "Container:  $container"

#   Upload file
echo "Upload file to blob"
az storage blob upload --account-name $account --account-key $key --container-name $container --name projects.json --file projects.json
