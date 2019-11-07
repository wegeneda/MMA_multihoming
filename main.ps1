param(
  [Parameter(Mandatory = $true)]
  [string]$workspaceID,
  [Parameter(Mandatory = $true)]
  [string]$workspaceKey,
)

$mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'
$mma.AddCloudWorkspace($workspaceId, $workspaceKey)
$mma.ReloadConfiguration()
