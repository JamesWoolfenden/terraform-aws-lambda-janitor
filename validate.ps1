#!/usr/bin/env pwsh
Push-Location
Remove-Item .terraform -force -Recurse -ErrorAction SilentlyContinue
terraform init
terraform validate
Pop-Location
