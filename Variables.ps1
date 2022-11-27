'''
$Rubbish = 1, 2, "a", "££"
$Rubbish
clear-variable -Name Rubbish
$Rubbish
Remove-Variable -Name Rubbish
'''
# This wil return an Object
#$Rubbish = 1, 2, "a", "££"
#$Rubbish.GetType()

#Usefully, we can cast a variable, so it has a fixed type.
#[int]$Rubbish = 1
#$Rubbish.GetType()

# If I pass a string to variable, it will automatically convert it. As long as the String contains only numbers
#[int]$Rubbish = 1
#$Rubbish = "123456789"
#$Rubbish

################################################################################################################
''' You can translate a date into a datetime object, but the format of the input string is assumed to be
US, mmddyyyy. Do some reading and see if you can figure out how to get PowerShell to expect the
input string in ddmmyyyy format as we would use in Ireland.

[datetime]$OGGI = "11/13/2022"
$OGGI

# Exercise convert EU to US date
$mydate = "29/12/2022"
$dateParts = $mydate -split “/”
$deDate = “$($dateparts[1]).$($dateParts[0]).$($dateParts[2])”
$deDate
'''
################################################################################################################

#Below I do a simple tax calculation.
#$amount = 111
#$VAT = 0.23
#$result = $amount * $VAT
#$result
#$text = "Total €$result is the sum of €$amount with $VAT% VAT"
#$text

# I can store the output of a command for later use.
#$dir_listing = Get-ChildItem c:\
#$dir_listing
#test-path variable:\dir_listing

#When programmes get more complex, it can be tough keeping track of variables. I love this feature!
Clear-Host
New-Variable JORzVariable -value 3.142 -description "PI with write-protection" -option ReadOnly
Get-Variable JORzVariable
