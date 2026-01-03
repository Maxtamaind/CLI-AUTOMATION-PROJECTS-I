while($true) {
  $cpu = (Get-Counter '\Processor(_Total)\% Processor Time'). Countersample.CookedValue
  Write-Host "CPU Usage: $([math]::Round($cpu,2))%"
  Start-Sleep -Seconds 2
  }
