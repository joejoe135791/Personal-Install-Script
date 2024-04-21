# listing packages
Write-Output "The following packages will be uninstalled"
Write-Output "$Tab epicgameslauncher,"
Write-Output "$Tab steam," 
Write-Output "$Tab googlechrome," 
Write-Output "$Tab operagx"
Write-warning "THIS ACTION IS IRREVERSIBLE"
$continue = Read-Host -Prompt "Continue? [y/n]"

if ( $continue -eq 'n' ) { 
    Exit
}
Write-Output "You have said yes (testing message)"