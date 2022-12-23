Get-EventLog -LogName System -EntryType Warning -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\asite\OneDrive\Desktop\last_24.txt
Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\asite\OneDrive\Desktop\errors.text
Get-EventLog -LogName System -InstanceID 16
Get-EventLog -LogName System -Newest 20
Get-EventLog -LogName System -Newest 500 | Format-Table -auto