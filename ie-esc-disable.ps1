New-Item -Path "c:\Users\student\Desktop\pat.txt" -ItemType File
$location ="c:\Users\student\Desktop"
$url = "https://go.microsoft.com/fwlink/?LinkId=2109584"
$output = "$location\azure_devops_server_2019.exe"
Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing
