<#
Server setup script.
Run one line at a time, under supervision!
#>

# Name the first DC computer
#Rename-Computer -NewName server-1
Rename-Computer -NewName Lucashannon-Core
# Check existing IP addresses
Get-NetIPAddress
# My interface index was #5, get an IP address from the lecturer, the range is 172.28.78.1-50
#New-NetIPAddress -InterfaceIndex 5 -IPAddress 172.28.78.2 -PrefixLength 22 -DefaultGateway 172.28.76.20
New-NetIPAddress -InterfaceIndex 5 -IPAddress 192.168.200.5 -PrefixLength 24 -DefaultGateway 192.186.200.1
# Set DC-1 as being the DNS
Set-DnsClientServerAddress -InterfaceIndex 6 -ServerAddresses 192.168.200.10
#Set-DnsClientServerAddress -InterfaceIndex 5 -ServerAddresses 172.28.78.1
# Join the domain, you will be asked for dc-1 username and password
#add-computer –domainname "ads.solarsubmaines.com"  -restart
add-computer –domainname "lucashannon.com"  -restart
# Now reboot
Restart-Computer
# Allow for remote scripting
Enable-PSRemoting