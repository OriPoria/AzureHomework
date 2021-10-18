Remove-Item './files'
# delete containers from last run:
az storage container delete --account-name "poriastore1" --name "container1" --auth-mode login
az storage container delete --account-name "poriastore2" --name "container2" --auth-mode login

#xsa