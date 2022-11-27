Clear-Host
$MyModulePath = "C:\Users\$env:USERNAME\Documents\PowerShell\Modules\HelloWorld"
$MyModule = @"
# HelloWorld.PSM1
Function Get-HelloWorld {
    "Hello From Mick Shanon"
}
"@
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.PSM1
Get-Module -name HelloWorld -ListAvailable
