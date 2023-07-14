#  1          {'Battery Power'}
#  2          {'AC Power'}
#  3          {'Fully Charged'}
#  4          {'Low'}
#  5          {'Critical'}
#  6          {'Charging'}
#  7          {'Charging and High'}
#  8          {'Charging and Low'}
#  9          {'Charging and Critical'}
# 10          {'Undefined'}
# 11          {'Partially Charged'}

# Source: https://powershell.one/wmi/root/cimv2/win32_battery

DO
{
    Start-Sleep -Seconds 5
} While ((Get-CimInstance -ClassName Win32_Battery | Select-Object -ExpandProperty BatteryStatus) -ne 1)

Stop-Computer
