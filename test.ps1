Write-Warning "This script is used for testing small portions of code and should never be run by a normal user"
Write-Warning "This code may be completely untested and should only be run as a test"
Write-Warning "By running this code, you accept all risk" -WarningAction Inquire 
# DO NOT REMOVE ANYTHING ABOVE THIS LINE UNDER ANY CIRCUMSTANCE

#place code under this line
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
