# AzureHomework
Consists a yaml file for deployment of resources to your azure account, and a script to create, upload
and transfer blobs. The files should run on Windows OS.
## Files explanation
azure-pipelines.yml- A pipeline to create resource group and resources inside it from the res.json ARM file.
Run the pipeline with an agent in the local computer.

main-script.ps1- The script that activates the script that run on the VM.

vm-blobtransfer-script.ps1- A script that runs on the VM through the "RunPowerShellScript" command.
In this script we initialize the azure cli and then make the creation, upload and copy flow.

## How to use?
After that you subscribe to your account in vsCode, run the yaml file for the deployment of resources. Then run main-script.ps1 to run a script on the VM. It will create the demo blobs that you can easly change, upload them to the container in the first storage and copy to the other container in the other storage. 

