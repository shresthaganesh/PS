param([string] $name)
$output = 'Hello {0}' -f $name
Write-Output $output

$a = '::before::'
Install-PackageProvider -Name NuGet -RequiredVersion 2.8.5.201 -Scope AllUsers -Force
Install-Module -Name PowerShellGet -Force -AllowClobber
Install-Module -Name MicrosoftTeams -RequiredVersion 2.5.1 -Force -AllowClobber
Install-Module -Name MSOnline -RequiredVersion 1.1.183.57 -Scope AllUsers -Force
Install-Module -Name Posh-SSH -RequiredVersion 2.3.0 -Scope AllUsers -Force

$a+="after"

$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output+$a
