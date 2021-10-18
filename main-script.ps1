# # create 100 files- demo of blobs
# new-item ./files -itemtype directory
# ( 1 .. 100 ) | % { Copy-Item .\demofile.txt files\testfile$_.txt }
# # create containers in a storage
# az storage container create --account-name "oriporia1" --name "container1" --auth-mode login
# az storage container create --account-name "oriporia2" --name "container2" --auth-mode login

# # copy all demo files to container1 in storage A:
# az storage blob upload-batch -d "container1" --account-name "oriporia1" -s "./files" --auth-mode key

# run shellscript on my "ori-vm"
az vm run-command invoke  --command-id RunPowerShellScript --name ori-vm -g orires `
    --scripts @vm-blobtransfer-script.ps1