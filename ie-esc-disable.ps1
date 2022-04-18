$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0 -Force
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0 -Force
Stop-Process -Name Explorer -Force
New-Item -Path 'c:\Users\student\Desktop\pat.txt' -ItemType File
# ------------------------------------------------------------------------
# Download Files
# ------------------------------------------------------------------------
$location ="c:\Users\student\Desktop"
$url = "https://go.microsoft.com/fwlink/?LinkId=2109584"
$output = "$location\azure_devops_server_2019.exe"
Invoke-WebRequest -Uri $url -OutFile $output
