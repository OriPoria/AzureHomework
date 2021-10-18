# create resource group:
az group create --name orires --location eastus

# deploy resources from json files:
az deployment group create --resource-group orires --template-file res.json --parameters res.parameters.json

# delete resource group:
# az group delete --name devops  