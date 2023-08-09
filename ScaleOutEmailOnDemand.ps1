Connect-VBRServer
$scaleout_repos = Get-VBRBackupRepository -ScaleOut
foreach($repo in $scaleout_repos)
{
    Send-VBRScaleOutBackupRepositoryReport -Repository $repo
    Write-Host "Sent email for $repo"
}
Disconnect-VBRServer