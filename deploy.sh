#!/bin/bash

uniqueId=$(uuidgen)
name="deploy-$uniqueId"

az group deployment create -n $name -g shared-infra-dev-ops --template-file deploy.json