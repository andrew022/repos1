Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
#IPv4
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow
#IPv6
netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol="icmpv6:8,any" dir=in action=allow
Enable-PSRemoting -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol