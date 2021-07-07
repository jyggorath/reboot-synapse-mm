Restart-Service -Name 'Razer Synapse Service'
Get-PnpDevice | Where-Object {$_.FriendlyName -like "NVIDIA Quadro P400*"} | ForEach-Object {
	Disable-PnpDevice -InstanceId $_.InstanceId -Confirm:$false
	Enable-PnpDevice -InstanceId $_.InstanceId -Confirm:$false
}