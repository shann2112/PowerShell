$PGSM = Find-Module -name * -Tag 'PSEdition_Core'
"There are {0:NO} Modules that support PowerShell Core" -f $PGSM.Count