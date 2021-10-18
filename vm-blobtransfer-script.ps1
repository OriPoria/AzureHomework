Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
az version
az storage blob copy start-batch `
  --destination-container container2 `
  --account-name oriporia2 `
  --account-key "aH8vwTzpt9t8EKz7tjP0QjnUxNtiwO581oHn6OHzu1/bXJnPV8PAzbY1adPSK09HA/nwSEvZoSPJt7FxMHKx0Q==" `
  --source-account-name oriporia1 `
  --source-account-key "kcZ/F7n2ik2Ky/CO3Uq+/R6MmOibBygcichEnkYC6XM11ur8T9HytNUMuPfvpkOVL3IhNFeg2J+S+jqBFULb+g==" `
  --source-container container1