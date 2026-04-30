param()

Clear-Host

function Show-AsciiHeader {
    Write-Host ".#####....####...##...##..######..#####...........######...####...##..##...####.." -ForegroundColor Cyan
    Write-Host ".##..##..##..##..##...##..##......##..##............##....##..##...####...##....." -ForegroundColor Green
    Write-Host ".#####...##..##..##.#.##..####....#####...######....##....##..##....##.....####.." -ForegroundColor Yellow
    Write-Host ".##......##..##..#######..##......##..##............##....##..##....##........##." -ForegroundColor Magenta
    Write-Host ".##.......####....##.##...######..##..##............##.....####.....##.....####.." -ForegroundColor Red
    Write-Host "................................................................................." -ForegroundColor Gray
    Write-Host ""
    Write-Host "                    POWERSHELL CONFIGURATION MANAGER v3.0" -ForegroundColor White
    Write-Host "                     Manage all PowerShell settings" -ForegroundColor Gray
    Write-Host ""
}

function Show-MainMenu {
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host " 1.  PowerShell Environment Information" -ForegroundColor White
    Write-Host " 2.  Manage PowerShell Profiles" -ForegroundColor White
    Write-Host " 3.  Manage Modules (Install/Update/Remove)" -ForegroundColor White
    Write-Host " 4.  Manage Execution Policy" -ForegroundColor White
    Write-Host " 5.  Console Colors Configuration" -ForegroundColor White
    Write-Host " 6.  Environment Variables Management" -ForegroundColor White
    Write-Host " 7.  Aliases Management" -ForegroundColor White
    Write-Host " 8.  PowerShell Functions Management" -ForegroundColor White
    Write-Host " 9.  PSReadLine Configuration (Auto-completion/History)" -ForegroundColor White
    Write-Host "10.  PowerShell Providers" -ForegroundColor White
    Write-Host "11.  Output Formatting Settings" -ForegroundColor White
    Write-Host "12.  Sessions and Jobs Management" -ForegroundColor White
    Write-Host "13.  Logs and Transcripts Configuration" -ForegroundColor White
    Write-Host "14.  Certificates Management" -ForegroundColor White
    Write-Host "15.  Remote Management (WinRM/SSH)" -ForegroundColor White
    Write-Host "16.  Drives and Locations Management" -ForegroundColor White
    Write-Host "17.  Error Output and Debugging" -ForegroundColor White
    Write-Host "18.  Hash Tables and Objects" -ForegroundColor White
    Write-Host "19.  Timeouts and Limits Configuration" -ForegroundColor White
    Write-Host "20.  Extended Types Management (PSType)" -ForegroundColor White
    Write-Host "21.  Date and Time Formatting" -ForegroundColor White
    Write-Host "22.  Error Color Scheme" -ForegroundColor White
    Write-Host "23.  Warning Output Configuration" -ForegroundColor White
    Write-Host "24.  Progress Bar Settings" -ForegroundColor White
    Write-Host "25.  Default Encoding Configuration" -ForegroundColor White
    Write-Host "26.  Path Management (PSModulePath/PSPath)" -ForegroundColor White
    Write-Host "27.  Command History Configuration" -ForegroundColor White
    Write-Host "28.  Tab Completion Settings" -ForegroundColor White
    Write-Host "29.  Prompt Customization" -ForegroundColor White
    Write-Host "30.  Hotkeys Management" -ForegroundColor White
    Write-Host "31.  File Output Configuration" -ForegroundColor White
    Write-Host "32.  Pipeline Configuration" -ForegroundColor White
    Write-Host "33.  XML/JSON Working Settings" -ForegroundColor White
    Write-Host "34.  Regular Expressions Management" -ForegroundColor White
    Write-Host "35.  Sort and Group Configuration" -ForegroundColor White
    Write-Host "36.  Object Comparison Settings" -ForegroundColor White
    Write-Host "37.  Hashing and Encryption" -ForegroundColor White
    Write-Host "38.  Network and DNS Configuration" -ForegroundColor White
    Write-Host "39.  Proxy Server Settings" -ForegroundColor White
    Write-Host "40.  Web Requests Configuration (Invoke-WebRequest)" -ForegroundColor White
    Write-Host "41.  REST API Calls Configuration" -ForegroundColor White
    Write-Host "42.  Archives Management (Zip)" -ForegroundColor White
    Write-Host "43.  CSV/Excel Working Settings" -ForegroundColor White
    Write-Host "44.  Windows Registry Management" -ForegroundColor White
    Write-Host "45.  WMI/CIM Queries Configuration" -ForegroundColor White
    Write-Host "46.  Windows Services Management" -ForegroundColor White
    Write-Host "47.  Processes and Threads" -ForegroundColor White
    Write-Host "48.  Eventing Management" -ForegroundColor White
    Write-Host "49.  Reset All Settings to Default" -ForegroundColor Red
    Write-Host "50.  Exit" -ForegroundColor Red
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host ""
}

function Get-EnvironmentInfo {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "POWERSHELL ENVIRONMENT INFORMATION" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "PS Version: $($PSVersionTable.PSVersion)" -ForegroundColor Cyan
    Write-Host "OS Version: $([System.Environment]::OSVersion.VersionString)" -ForegroundColor Cyan
    Write-Host "Host: $($Host.Name)" -ForegroundColor Cyan
    Write-Host "Current Culture: $(Get-Culture)" -ForegroundColor Cyan
    Write-Host "Current UICulture: $(Get-UICulture)" -ForegroundColor Cyan
    Write-Host "PSHome: $PSHome" -ForegroundColor Cyan
    Write-Host "Current Directory: $(Get-Location)" -ForegroundColor Cyan
    $isAdmin = [Security.Principal.WindowsPrincipal]::new([Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    Write-Host "Is Administrator: $isAdmin" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Press any key to return to menu..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-Profiles {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "MANAGE POWERSHELL PROFILES" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. Show all profile paths" -ForegroundColor White
    Write-Host "2. Create/Edit CurrentUserCurrentHost" -ForegroundColor White
    Write-Host "3. Create/Edit AllUsersCurrentHost" -ForegroundColor White
    Write-Host "4. Check if profiles exist" -ForegroundColor White
    Write-Host "5. Backup profile" -ForegroundColor White
    Write-Host "6. Restore profile from backup" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    switch ($choice) {
        "1" {
            Write-Host "`nCurrentUserCurrentHost: $($Profile.CurrentUserCurrentHost)" -ForegroundColor Cyan
            Write-Host "CurrentUserAllHosts: $($Profile.CurrentUserAllHosts)" -ForegroundColor Cyan
            Write-Host "AllUsersCurrentHost: $($Profile.AllUsersCurrentHost)" -ForegroundColor Cyan
            Write-Host "AllUsersAllHosts: $($Profile.AllUsersAllHosts)" -ForegroundColor Cyan
        }
        "2" {
            if (!(Test-Path $Profile)) { New-Item -Path $Profile -ItemType File -Force | Out-Null }
            notepad $Profile
        }
        "3" {
            if (!(Test-Path $Profile.AllUsersCurrentHost)) { New-Item -Path $Profile.AllUsersCurrentHost -ItemType File -Force | Out-Null }
            notepad $Profile.AllUsersCurrentHost
        }
        "4" {
            Write-Host "`nCurrentUserCurrentHost: $(Test-Path $Profile)" -ForegroundColor Cyan
            Write-Host "CurrentUserAllHosts: $(Test-Path $Profile.CurrentUserAllHosts)" -ForegroundColor Cyan
            Write-Host "AllUsersCurrentHost: $(Test-Path $Profile.AllUsersCurrentHost)" -ForegroundColor Cyan
            Write-Host "AllUsersAllHosts: $(Test-Path $Profile.AllUsersAllHosts)" -ForegroundColor Cyan
        }
        "5" {
            $backupPath = "$env:USERPROFILE\Desktop\PSProfile_backup.ps1"
            Copy-Item $Profile $backupPath -Force -ErrorAction SilentlyContinue
            Write-Host "Backup created: $backupPath" -ForegroundColor Green
        }
        "6" {
            $backupPath = "$env:USERPROFILE\Desktop\PSProfile_backup.ps1"
            if (Test-Path $backupPath) {
                Copy-Item $backupPath $Profile -Force
                Write-Host "Profile restored" -ForegroundColor Green
            } else {
                Write-Host "Backup not found" -ForegroundColor Red
            }
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-Modules {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "MANAGE POWERSHELL MODULES" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. List installed modules" -ForegroundColor White
    Write-Host "2. Search modules in gallery" -ForegroundColor White
    Write-Host "3. Install module" -ForegroundColor White
    Write-Host "4. Update module" -ForegroundColor White
    Write-Host "5. Remove module" -ForegroundColor White
    Write-Host "6. Import module" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    switch ($choice) {
        "1" { Get-Module -ListAvailable | Select-Object Name, Version, Path | Format-Table -AutoSize }
        "2" {
            $search = Read-Host "Enter module name to search"
            Find-Module -Name "*$search*" -ErrorAction SilentlyContinue | Select-Object Name, Version, Description | Format-Table -AutoSize
        }
        "3" {
            $module = Read-Host "Enter module name to install"
            Install-Module -Name $module -Force -AllowClobber -ErrorAction SilentlyContinue
            Write-Host "Module $module installed" -ForegroundColor Green
        }
        "4" {
            $module = Read-Host "Enter module name to update"
            Update-Module -Name $module -Force -ErrorAction SilentlyContinue
            Write-Host "Module $module updated" -ForegroundColor Green
        }
        "5" {
            $module = Read-Host "Enter module name to remove"
            Uninstall-Module -Name $module -Force -ErrorAction SilentlyContinue
            Write-Host "Module $module removed" -ForegroundColor Green
        }
        "6" {
            $module = Read-Host "Enter module name to import"
            Import-Module -Name $module -Force -ErrorAction SilentlyContinue
            Write-Host "Module $module imported" -ForegroundColor Green
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-ExecutionPolicy {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "MANAGE EXECUTION POLICY" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "Current policy: $(Get-ExecutionPolicy)" -ForegroundColor Cyan
    Write-Host "1. Set Restricted (everything blocked)" -ForegroundColor White
    Write-Host "2. Set AllSigned (only signed scripts)" -ForegroundColor White
    Write-Host "3. Set RemoteSigned (local allowed)" -ForegroundColor White
    Write-Host "4. Set Unrestricted (everything allowed)" -ForegroundColor White
    Write-Host "5. Set Bypass (no checks)" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    $policies = @{"1"="Restricted";"2"="AllSigned";"3"="RemoteSigned";"4"="Unrestricted";"5"="Bypass"}
    if ($policies.ContainsKey($choice)) {
        Set-ExecutionPolicy $policies[$choice] -Force -ErrorAction SilentlyContinue
        Write-Host "Policy changed to: $($policies[$choice])" -ForegroundColor Green
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-ConsoleColors {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "CONSOLE COLORS CONFIGURATION" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. Show current colors" -ForegroundColor White
    Write-Host "2. Set background color" -ForegroundColor White
    Write-Host "3. Set foreground color" -ForegroundColor White
    Write-Host "4. Reset to default colors" -ForegroundColor White
    Write-Host "5. Set error color" -ForegroundColor White
    Write-Host "6. Set warning color" -ForegroundColor White
    Write-Host "7. Rainbow test mode" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    $colors = [System.ConsoleColor].GetEnumNames()
    switch ($choice) {
        "1" {
            Write-Host "Background: $($Host.UI.RawUI.BackgroundColor)" -ForegroundColor Cyan
            Write-Host "Foreground: $($Host.UI.RawUI.ForegroundColor)" -ForegroundColor Cyan
        }
        "2" {
            Write-Host "Available colors: $($colors -join ', ')" -ForegroundColor Gray
            $color = Read-Host "Select color"
            if ($color -in $colors) {
                $Host.UI.RawUI.BackgroundColor = $color
                Clear-Host
                Write-Host "Background color changed" -ForegroundColor Green
            }
        }
        "3" {
            Write-Host "Available colors: $($colors -join ', ')" -ForegroundColor Gray
            $color = Read-Host "Select color"
            if ($color -in $colors) {
                $Host.UI.RawUI.ForegroundColor = $color
                Write-Host "Foreground color changed" -ForegroundColor Green
            }
        }
        "4" {
            $Host.UI.RawUI.BackgroundColor = "Black"
            $Host.UI.RawUI.ForegroundColor = "White"
            Clear-Host
            Write-Host "Colors reset to default" -ForegroundColor Green
        }
        "5" {
            $color = Read-Host "Select color for errors"
            if ($color -in $colors) {
                $Host.PrivateData.ErrorForegroundColor = $color
                Write-Host "Error color changed" -ForegroundColor Green
            }
        }
        "6" {
            $color = Read-Host "Select color for warnings"
            if ($color -in $colors) {
                $Host.PrivateData.WarningForegroundColor = $color
                Write-Host "Warning color changed" -ForegroundColor Green
            }
        }
        "7" {
            foreach ($c in $colors) {
                Write-Host "Test text in color: $c" -ForegroundColor $c
                Start-Sleep -Milliseconds 200
            }
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-EnvironmentVariables {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "ENVIRONMENT VARIABLES MANAGEMENT" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. Show all environment variables" -ForegroundColor White
    Write-Host "2. Show specific variable" -ForegroundColor White
    Write-Host "3. Create/Edit variable (User)" -ForegroundColor White
    Write-Host "4. Create/Edit variable (Machine)" -ForegroundColor White
    Write-Host "5. Remove variable (User)" -ForegroundColor White
    Write-Host "6. Show PATH" -ForegroundColor White
    Write-Host "7. Add path to PATH (User)" -ForegroundColor White
    Write-Host "8. Refresh session variables" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    switch ($choice) {
        "1" { Get-ChildItem Env: | Sort-Object Name | Format-Table -AutoSize }
        "2" {
            $name = Read-Host "Enter variable name"
            $value = [Environment]::GetEnvironmentVariable($name)
            Write-Host "$name = $value" -ForegroundColor Cyan
        }
        "3" {
            $name = Read-Host "Enter variable name"
            $value = Read-Host "Enter value"
            [Environment]::SetEnvironmentVariable($name, $value, "User")
            Write-Host "Variable created" -ForegroundColor Green
        }
        "4" {
            $isAdmin = [Security.Principal.WindowsPrincipal]::new([Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
            if (!$isAdmin) {
                Write-Host "Administrator rights required!" -ForegroundColor Red
            } else {
                $name = Read-Host "Enter variable name"
                $value = Read-Host "Enter value"
                [Environment]::SetEnvironmentVariable($name, $value, "Machine")
                Write-Host "Variable created" -ForegroundColor Green
            }
        }
        "5" {
            $name = Read-Host "Enter variable name to remove"
            [Environment]::SetEnvironmentVariable($name, $null, "User")
            Write-Host "Variable removed" -ForegroundColor Green
        }
        "6" {
            $paths = $env:PATH -split ';'
            $i = 1
            foreach ($p in $paths) { Write-Host "$i. $p" -ForegroundColor Gray; $i++ }
        }
        "7" {
            $newPath = Read-Host "Enter path to add"
            $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")
            [Environment]::SetEnvironmentVariable("PATH", "$currentPath;$newPath", "User")
            $env:PATH = [Environment]::GetEnvironmentVariable("PATH", "User") + ";" + [Environment]::GetEnvironmentVariable("PATH", "Machine")
            Write-Host "Path added" -ForegroundColor Green
        }
        "8" {
            $env:PATH = [Environment]::GetEnvironmentVariable("PATH", "User") + ";" + [Environment]::GetEnvironmentVariable("PATH", "Machine")
            Write-Host "Variables refreshed" -ForegroundColor Green
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-Aliases {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "ALIASES MANAGEMENT" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. Show all aliases" -ForegroundColor White
    Write-Host "2. Create alias (current session)" -ForegroundColor White
    Write-Host "3. Create permanent alias (profile)" -ForegroundColor White
    Write-Host "4. Remove alias" -ForegroundColor White
    Write-Host "5. Export aliases" -ForegroundColor White
    Write-Host "6. Import aliases" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    switch ($choice) {
        "1" { Get-Alias | Sort-Object Name | Format-Table -AutoSize }
        "2" {
            $name = Read-Host "Enter alias name"
            $command = Read-Host "Enter command"
            Set-Alias -Name $name -Value $command
            Write-Host "Alias created" -ForegroundColor Green
        }
        "3" {
            $name = Read-Host "Enter alias name"
            $command = Read-Host "Enter command"
            $profilePath = $Profile.CurrentUserCurrentHost
            if (!(Test-Path $profilePath)) { New-Item -Path $profilePath -ItemType File -Force | Out-Null }
            Add-Content -Path $profilePath -Value "`nSet-Alias -Name $name -Value $command"
            Write-Host "Permanent alias added to profile" -ForegroundColor Green
        }
        "4" {
            $name = Read-Host "Enter alias name to remove"
            Remove-Alias -Name $name -Force -ErrorAction SilentlyContinue
            Write-Host "Alias removed" -ForegroundColor Green
        }
        "5" {
            $path = Read-Host "Enter export path"
            Get-Alias | Export-Csv -Path $path -NoTypeInformation
            Write-Host "Export completed" -ForegroundColor Green
        }
        "6" {
            $path = Read-Host "Enter import path"
            Import-Csv $path | ForEach-Object { Set-Alias -Name $_.Name -Value $_.Definition }
            Write-Host "Import completed" -ForegroundColor Green
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-Functions {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "POWERSHELL FUNCTIONS MANAGEMENT" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. Show all functions" -ForegroundColor White
    Write-Host "2. Create function (current session)" -ForegroundColor White
    Write-Host "3. Create permanent function (profile)" -ForegroundColor White
    Write-Host "4. Remove function" -ForegroundColor White
    Write-Host "5. Show function definition" -ForegroundColor White
    Write-Host "6. Export all functions" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    switch ($choice) {
        "1" { Get-ChildItem Function: | Where-Object { $_.Name -notlike "__*" } | Sort-Object Name | Format-Table -AutoSize }
        "2" {
            $name = Read-Host "Enter function name"
            Write-Host "Enter function body (finish with empty line):" -ForegroundColor Gray
            $body = @()
            while ($true) {
                $line = Read-Host
                if ([string]::IsNullOrWhiteSpace($line)) { break }
                $body += $line
            }
            $scriptBlock = [scriptblock]::Create($body -join "`n")
            Set-Item -Path "Function:\$name" -Value $scriptBlock
            Write-Host "Function created" -ForegroundColor Green
        }
        "3" {
            $name = Read-Host "Enter function name"
            Write-Host "Enter function body (finish with empty line):" -ForegroundColor Gray
            $body = @()
            while ($true) {
                $line = Read-Host
                if ([string]::IsNullOrWhiteSpace($line)) { break }
                $body += $line
            }
            $profilePath = $Profile.CurrentUserCurrentHost
            if (!(Test-Path $profilePath)) { New-Item -Path $profilePath -ItemType File -Force | Out-Null }
            Add-Content -Path $profilePath -Value "`nfunction $name {`n    $($body -join "`n    ")`n}"
            Write-Host "Permanent function added to profile" -ForegroundColor Green
        }
        "4" {
            $name = Read-Host "Enter function name to remove"
            Remove-Item -Path "Function:\$name" -Force -ErrorAction SilentlyContinue
            Write-Host "Function removed" -ForegroundColor Green
        }
        "5" {
            $name = Read-Host "Enter function name"
            Get-Content -Path "Function:\$name" -ErrorAction SilentlyContinue
        }
        "6" {
            $path = Read-Host "Enter export path"
            Get-ChildItem Function: | Where-Object { $_.Name -notlike "__*" } | Export-Clixml -Path $path
            Write-Host "Functions exported" -ForegroundColor Green
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Manage-PSReadLine {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "PSREADLINE CONFIGURATION" -ForegroundColor Yellow
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "1. Enable PSReadLine" -ForegroundColor White
    Write-Host "2. Configure command history" -ForegroundColor White
    Write-Host "3. Configure auto-completion (Predictive IntelliSense)" -ForegroundColor White
    Write-Host "4. Configure syntax colors" -ForegroundColor White
    Write-Host "5. Show current settings" -ForegroundColor White
    Write-Host "6. Clear history" -ForegroundColor White
    Write-Host "7. Configure max history count" -ForegroundColor White
    Write-Host "0. Back" -ForegroundColor Gray
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $choice = Read-Host "Select action"
    switch ($choice) {
        "1" {
            Import-Module PSReadLine -Force -ErrorAction SilentlyContinue
            Write-Host "PSReadLine enabled" -ForegroundColor Green
        }
        "2" {
            $maxHistory = Read-Host "Max history commands (default 4096)"
            Set-PSReadLineOption -MaximumHistoryCount ([int]$maxHistory) -ErrorAction SilentlyContinue
            Write-Host "History configured" -ForegroundColor Green
        }
        "3" {
            Set-PSReadLineOption -PredictionSource HistoryAndPlugin -ErrorAction SilentlyContinue
            Set-PSReadLineOption -PredictionViewStyle ListView -ErrorAction SilentlyContinue
            Write-Host "Auto-completion enabled" -ForegroundColor Green
        }
        "4" {
            Set-PSReadLineOption -Colors @{
                Command = '#FFD700'
                Parameter = '#87CEEB'
                Number = '#98FB98'
                String = '#FFA07A'
                Comment = '#808080'
            } -ErrorAction SilentlyContinue
            Write-Host "Syntax colors configured" -ForegroundColor Green
        }
        "5" {
            Get-PSReadLineOption -ErrorAction SilentlyContinue | Select-Object MaximumHistoryCount, PredictionSource, PredictionViewStyle, EditMode | Format-List
        }
        "6" {
            Clear-History
            Write-Host "History cleared" -ForegroundColor Green
        }
        "7" {
            $count = Read-Host "Enter max history count"
            Set-PSReadLineOption -MaximumHistoryCount ([int]$count) -ErrorAction SilentlyContinue
            Write-Host "Settings saved" -ForegroundColor Green
        }
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function Reset-AllSettings {
    Clear-Host
    Show-AsciiHeader
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "RESET ALL SETTINGS" -ForegroundColor Red
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "WARNING! This will reset:" -ForegroundColor Red
    Write-Host "  - Console colors" -ForegroundColor Red
    Write-Host "  - Execution Policy" -ForegroundColor Red
    Write-Host "  - Aliases" -ForegroundColor Red
    Write-Host "  - Session environment variables" -ForegroundColor Red
    Write-Host "  - PSReadLine settings" -ForegroundColor Red
    Write-Host "--------------------------------------------------------------------------------" -ForegroundColor DarkGray
    $confirm = Read-Host "Type YES to confirm reset"
    if ($confirm -eq "YES") {
        $Host.UI.RawUI.BackgroundColor = "Black"
        $Host.UI.RawUI.ForegroundColor = "White"
        Set-ExecutionPolicy Restricted -Force -ErrorAction SilentlyContinue
        Get-Alias | ForEach-Object { Remove-Alias -Name $_.Name -Force -ErrorAction SilentlyContinue }
        Clear-History
        Write-Host "Reset completed! Restart PowerShell for full effect." -ForegroundColor Green
    } else {
        Write-Host "Reset cancelled" -ForegroundColor Yellow
    }
    Write-Host "`nPress any key..." -ForegroundColor Gray
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

do {
    Show-MainMenu
    $menuChoice = Read-Host "Select menu item (1-50)"
    switch ($menuChoice) {
        "1" { Get-EnvironmentInfo }
        "2" { Manage-Profiles }
        "3" { Manage-Modules }
        "4" { Manage-ExecutionPolicy }
        "5" { Manage-ConsoleColors }
        "6" { Manage-EnvironmentVariables }
        "7" { Manage-Aliases }
        "8" { Manage-Functions }
        "9" { Manage-PSReadLine }
        "49" { Reset-AllSettings }
        "50" {
            Clear-Host
            Write-Host "Goodbye!" -ForegroundColor Green
            break
        }
        default {
            if ($menuChoice -ge "10" -and $menuChoice -le "48") {
                Write-Host "Feature in development..." -ForegroundColor Yellow
                Start-Sleep -Seconds 1
            } else {
                Write-Host "Invalid choice! Please try again." -ForegroundColor Red
                Start-Sleep -Seconds 1
            }
        }
    }
} while ($menuChoice -ne "50")
