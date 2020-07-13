@{
    IniFiles = @(
        @{
            Name     = "Run OneDrive UEV OS Settings Script at Logoff (Command Line)"
            Ensure   = "Present"
            Path     = "C:\Windows\System32\GroupPolicy\User\Scripts\scripts.ini"
            Key      = "0CmdLine"
            Value    = "powershell.exe"
            Section  = "Logoff"
            Encoding = "unicode"
        }
        @{
            Name     = "Run OneDrive UEV OS Settings Script at Logoff (Parameters)"
            Ensure   = "Present"
            Path     = "C:\Windows\System32\GroupPolicy\User\Scripts\scripts.ini"
            Key      = "0Parameters"
            Value    = '-NonInteractive -ExecutionPolicy Bypass -Command "$(Get-ChildItem -Path $env:OneDrive\SettingsPackages\OS* -Recurse) + $(Get-ChildItem -Path $env:OneDrive\SettingsPackages\OS* -Directory) | ForEach-Object{attrib -U +P /S /D $($_.FullName)}"'
            Section  = "Logoff"
            Encoding = "unicode"
        }
    )
    
    Services = @(
        @{
            Name        = "User Experience Virtualization"
            Ensure      = "Present"
            ServiceName = "UevAgentService"
            StartupType = "Automatic"
            State       = "Running"
        }
    )

    Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'CustomerExperienceImprovementProgram' #Not a policy (configured directly) see https://support.microsoft.com/en-gb/help/2770042/ue-v-registry-settings
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\UEV\Agent\Configuration\CustomerExperienceImprovementProgram'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Do not synchronize Windows Apps' #Not a policy (configured directly)
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\UEV\Agent\Configuration\DontSyncWindows8AppSettings'
            Type         = 'DWord'
            Data         = '0' #Enable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Hide Settings Package directory' #Not a policy (configured directly) see https://support.microsoft.com/en-gb/help/2770042/ue-v-registry-settings
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\UEV\Agent\Configuration\HideSettingsPackagesFolder'
            Type         = 'DWord'
            Data         = '0'
        }
        
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Configure Sync Method'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\SyncMethod'
            Type         = 'String'
            Data         = 'External'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Do not synchronize Windows Apps'
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\DontSyncWindows8AppSettings'
            Type         = 'DWord'
            Data         = '0' #Enable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Enable UE-V'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Enabled'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Enable UE-V > Register Inbox Templates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\RegisterInboxTemplates'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Settings storage path'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\SettingsStoragePath'
            Type         = 'ExpandString'
            Data         = '%ONEDRIVE%'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Settings template catalog path'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\SettingsTemplateCatalogPath'
            Type         = 'ExpandString'
            Data         = 'C:\ProgramData\UEVTemplates'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Settings template catalog path > Replace the default Microsoft templates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\OverrideMSTemplates'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Desktop settings'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\DesktopSettings'
            Type         = 'DWord'
            Data         = '0' #Disable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Ease of access'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\EaseOfAccessSettings'
            Type         = 'DWord'
            Data         = '0' #Disable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Network Printers'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\NetworkPrinters'
            Type         = 'DWord'
            Data         = '0' #Disable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Roaming Credentials'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\RoamingCredentialSettings'
            Type         = 'DWord'
            Data         = '0' #Disable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Themes'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\ThemeSettings'
            Type         = 'DWord'
            Data         = '0' #Disable if using Windows 10 sync - https://docs.microsoft.com/en-us/windows/configuration/ue-v/uev-whats-new-in-uev-for-windows#compatibility-with-microsoft-enterprise-state-roaming
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Sync Unlisted Windows Apps'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\SyncUnlistedWindows8Apps'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > WaitForSyncOnApplicationStart' # Not a policy
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WaitForSyncOnApplicationStart'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > WaitForSyncOnLogon' # Not a policy
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WaitForSyncOnLogon'
            Type         = 'DWord'
            Data         = '1'
        }
        ############################## END MACHINE SETTINGS ##############################
    )
}