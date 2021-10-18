# AzureHomework

azure-pipelines- pipeline to create resource group and resources from the res.json ARM file.
Run the pipeline with an agent in the local computer.

vm-blobtransfer-script- script that runs on the VM through the "RunPowerShellScript" command.
In this script we initialize the azure cli and then make the creation, upload and copy flow.

## How to use?
After subscribe to your account in vsCode, run the yaml file and then run main-script.ps1 to run a script on the VM  and it will create the demo blobs, upload to the container in the first storage and copy to the other container. 

