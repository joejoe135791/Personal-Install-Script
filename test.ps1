# start of script "housekeeping"
$Tab = [char]9 #Needed for A tab character
# listing packages
Write-Output "The following packages will be installed"
Write-Output "$Tab epicgameslauncher,"
Write-Output "$Tab steam," 
Write-Output "$Tab googlechrome," 
Write-Output "$Tab operagx"
$continue = Read-Host -Prompt "Continue? [y/n]"

if ( $continue -eq 'n' ) { 
    Exit
}
Write-Output "You have said yes (testing message)"