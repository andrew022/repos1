ipconfig /all > C:\Users\asite\OneDrive\Desktop\test.txt
Select-String -Path C:\Users\asite\OneDrive\Desktop\test.txt -Pattern 'IPv4'
Remove-Item C:\Users\asite\OneDrive\Desktop\test.txt