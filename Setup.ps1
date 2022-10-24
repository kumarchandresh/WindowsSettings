@('~\Documents\WindowsPowerShell', '~\Documents\PowerShell') | ForEach-Object {
  if (Test-Path $_) { Remove-Item $_ }
  New-Item -ItemType SymbolicLink -Path $_ -Target "$PSScriptRoot\PowerShell"
}
