# Start of logging
$currentchocopath = Get-Location
Write-Output "current path is set to $currentchocopath"
Start-Transcript -Path "$currentchocopath\md5log.txt" -Verbose -Force
# message
Write-Output "this script is to check the md5 hashes"
Write-output "It will only output the hashes of files in the current directory, please compare them to them to the ones on github at https://github.com/joejoe135791/Personal-Install-Script/blob/main/scamwarning.md"
# Ask to continue
Write-Output "Would you like to continue?"
$continue = Read-Host -Prompt "Continue? [y/n]"
  
  if ( $continue -eq 'n' ) { 
    Write-Output "exiting"
      Exit
  }
  Write-Output "Checking hashes, Please wait"
  #begin the commands
  Write-Output "installsoftware.txt"
  certutil -hashfile installsoftware.txt MD5 | Write-Output
  Write-Output "installsoftware.ps1"
  certutil -hashfile installsoftware.ps1 MD5 | Write-Output
  Write-Output "test.ps1"
  certutil -hashfile test.ps1 MD5 | Write-Output
  Write-Output "uninstall.txt"
  certutil -hashfile uninstall.txt MD5 | Write-Output
  Write-Output "uninstall.ps1"
  certutil -hashfile uninstall.ps1 MD5 | Write-Output
  Write-Output "checkmd5.ps1"
  certutil -hashfile checkmd5.ps1 MD5 | Write-Output
  Write-Output "checkmd5.txt"
  certutil -hashfile checkmd5.txt MD5 | Write-Output
  # stop logging
  Stop-Transcript
  Write-output "log saved to md5log.txt"
  #end of script
  Write-Output "Press enter to exit"
  pause
  exit