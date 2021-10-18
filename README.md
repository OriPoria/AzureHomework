# AzureHomework

create-script- create the resource group and then apply the ARM file with 2 storages and a VM.

vm-blobtransfer-script- script that runs on the VM through the "RunPowerShellScript" command.
In this script we initialize the azure cli and then transfer the container from storate 1 to the
container in stoarget 2.

## How to use?
After subscribe to your account in vsCode, run create-script.ps1 to create the resources and 
then run data-transfer-script.ps1 to create the demo blobs, upload to the container in the 
first storage 

