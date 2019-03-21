#!/bin/bash

uniqueId=$(uuidgen)
name="deploy-$uniqueId"

az group deployment create -n $name -g test-dev-ops --template-file deploy.json --parameters @deploy.parameters.test.json