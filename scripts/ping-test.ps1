#PowerShell Script kiểm tra kết nối 1 loạt IP

$ipList = @(
    "8.8.8.8",
    "1.1.1.1",
    "192.168.1.1",
    "google.com"
)
foreach ($ip in $ipList) {
    Write-Host "Pinging $ip ..."
    Test-Connection -ComputerName $ip -Count 2 -Quiet
}
