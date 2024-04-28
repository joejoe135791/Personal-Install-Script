#scam warning
Write-Warning "This script is completely free and open source and must not be sold, the only legitimate way to obtain this script is at https://github.com/joejoe135791/Personal-Install-Script"
Write-Warning "If you have purchased this script or recieved it as part of a bundle, you have been scammed and should request your money back IMMEDIATELY"
Write-Warning "For more information, please visit https://github.com/joejoe135791/Personal-Install-Script/blob/main/scamwarning.md" -WarningAction Inquire 
# start of script required info
# Check if Chocolatey installation directory exists
if (-not (Test-Path -Path "$env:ProgramData\chocolatey")) {
    Write-Warning "Chocolatey is not currently installed."
    $installChocolatey = Read-Host -Prompt "Would you like to install Chocolatey now? [Y/n]"
  
    if ($installChocolatey -eq 'y' -or $installChocolatey -eq 'Y') {
      # Install Chocolatey
      Write-Output "Installing Chocolatey..."
      Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) # Chocolatey install script from their website
  
    } else {
      Write-Warning "Chocolatey installation skipped. This script requires Chocolatey for package management."
      Exit
    }
  }
  $Tab = [char]9 # Needed for A tab character. Only used for formatting
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
  Write-Output "Installation process initiated..." #If the user responded with y, the install starts
  Write-Output "Installing Epic Games Launcher"
  choco install epicgameslauncher -y --force --ignore-checksum
  Write-Output "Installing steam"
  choco install steam -y --force --ignore-checksum
  Write-Output "Installing Google Chrome"
  choco install googlechrome -y --force --ignore-checksum
  Write-Output "Installing OperaGX"
  choco install opera-gx -y --force --ignore-checksum
  # Once script is finished, pauses in case of an error in the logs. Will add logging as an option later
  Write-Output "I'm unable to make sure that there are no errors, if any programs fail to install, please rerun the script or install them manually"
  Write-output "Installation complete, Press 'Enter' to close"
  Pause  