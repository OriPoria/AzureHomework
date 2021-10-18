Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

# create 100 files- demo of blobs
New-Item -Path . -Name "demofile.txt" -ItemType "file" -Value "This is a text string."
New-item ./files -itemtype directory
( 1 .. 100 ) | % { Copy-Item .\demofile.txt files\testfile$_.txt }

# create containers in a storages:
az storage container create --account-name "oriporia1" --name "container1" `
 --account-key "kcZ/F7n2ik2Ky/CO3Uq+/R6MmOibBygcichEnkYC6XM11ur8T9HytNUMuPfvpkOVL3IhNFeg2J+S+jqBFULb+g==" `
 --auth-mode key
az storage container create --account-name "oriporia2" --name "container2" `
--account-key "aH8vwTzpt9t8EKz7tjP0QjnUxNtiwO581oHn6OHzu1/bXJnPV8PAzbY1adPSK09HA/nwSEvZoSPJt7FxMHKx0Q==" `
--auth-mode key

# copy all demo files to container1 in storage A:
az storage blob upload-batch -d "container1" --account-name "oriporia1" -s "./files" `
    --account-key "kcZ/F7n2ik2Ky/CO3Uq+/R6MmOibBygcichEnkYC6XM11ur8T9HytNUMuPfvpkOVL3IhNFeg2J+S+jqBFULb+g==" `
    --auth-mode key

# copy blobs from container1 in storage A to container2 in storage B:
az storage blob copy start-batch `
  --destination-container container2 `
  --account-name oriporia2 `
  --account-key "aH8vwTzpt9t8EKz7tjP0QjnUxNtiwO581oHn6OHzu1/bXJnPV8PAzbY1adPSK09HA/nwSEvZoSPJt7FxMHKx0Q==" `
  --source-account-name oriporia1 `
  --source-account-key "kcZ/F7n2ik2Ky/CO3Uq+/R6MmOibBygcichEnkYC6XM11ur8T9HytNUMuPfvpkOVL3IhNFeg2J+S+jqBFULb+g==" `
  --source-container container1