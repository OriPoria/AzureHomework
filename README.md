# AzureHomework

azure-pipelines- pipeline to create resource group and resources from the res.json ARM file.
Run the pipeline with an agent in the local computer.

vm-blobtransfer-script- script that runs on the VM through the "RunPowerShellScript" command.
In this script we initialize the azure cli and then make the creation, upload and copy flow.

## How to use?
After subscribe to your account in vsCode, run create-script.ps1 to create the resources and 
then run data-transfer-script.ps1 to create the demo blobs, upload to the container in the 
first storage 

