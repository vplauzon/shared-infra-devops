vault=<vault name>

az keyvault secret set --vault-name $vault --name devops-api-pat --value <VALUE>
az keyvault secret set --vault-name $vault --name devops-api-input --value <VALUE>
