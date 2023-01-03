Get-Process | Sort-Object -Property CPU -Descending
Get-Process | Sort-Object -Property ID -Descending
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5
$i=1
while($i -le 10) {
Start-Process -FilePath 'iexplore.exe' -ArgumentList 'https://owasp.org/www-project-top-ten/.'
$i++
}
Get-Process msedge | Stop-Process
Stop-Process -ID 3604