# run shellscript on my "ori-vm"
az vm run-command invoke  --command-id RunPowerShellScript --name ori-vm -g orires `
    --scripts @vm-blobtransfer-script.ps1