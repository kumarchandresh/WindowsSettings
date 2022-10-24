function which() {
	(Get-Command "$args" -ErrorAction SilentlyContinue
  | Where-Object -Property CommandType -Match 'Application|Script'
  | Select-Object -ExpandProperty Source) -replace [Regex]::Escape("$HOME"), '~'
}
