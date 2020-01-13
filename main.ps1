param(
  [Parameter(Mandatory = $true)]
  [string]$workspaceID,
  [Parameter(Mandatory = $true)]
  [string]$workspaceKey,
  [Parameter(Mandatory = $false)]
  [string]$ProxyURL
)

$mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
$mma.AddCloudWorkspace($workspaceId, $workspaceKey)
$mma.SetProxyUrl($ProxyURL)
$mma.ReloadConfiguration()
