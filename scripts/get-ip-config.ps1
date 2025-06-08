# Script PowerShell đơn giản lấy thông tin IP IPv4 trên máy tính

Write-Output "Đang lấy thông tin IP..."

Get-NetIPAddress |
    Where-Object { $_.AddressFamily -eq "IPv4" } |
    Format-Table InterfaceAlias, IPAddress, PrefixLength

# Chỉ lấy IP khi kết nối Wifi

Get-NetIPAddress -InterfaceAlias "Wi-Fi" |
  Where-Object { $_.AddressFamily -eq "IPv4" } |
  Format-Table InterfaceAlias, IPAddress, PrefixLength
