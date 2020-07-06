@{
    # Services = @(
    #     @{
    #         Name        = "User Experience Virtualization"
    #         Ensure      = "Present"
    #         ServiceName = "UevAgentService"
    #         StartupType = "Automatic"
    #         State       = "Running"
    #     }
    # )

    Policies = @(
        ################################ MACHINE SETTINGS ################################
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
            Data         = '1'
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
        # @{
        #     Name         = 'Windows Components > Microsoft User Experience Virtualization > Settings template catalog path > Replace the default Microsoft templates'
        #     Ensure       = 'Present'
        #     PolicyType   = 'Machine'
        #     KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\OverrideMSTemplates'
        #     Type         = 'DWord'
        #     Data         = '1'
        # }
        # @{
        #     Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Desktop settings'
        #     Ensure       = 'Present'
        #     PolicyType   = 'Machine'
        #     KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\DesktopSettings'
        #     Type         = 'DWord'
        #     Data         = '1'
        # }
        # @{
        #     Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Ease of access'
        #     Ensure       = 'Present'
        #     PolicyType   = 'Machine'
        #     KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\EaseOfAccessSettings'
        #     Type         = 'DWord'
        #     Data         = '1'
        # }
        # @{
        #     Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Themes'
        #     Ensure       = 'Present'
        #     PolicyType   = 'Machine'
        #     KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\ThemeSettings'
        #     Type         = 'DWord'
        #     Data         = '1'
        # }
        # @{
        #     Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Roaming Credentials'
        #     Ensure       = 'Present'
        #     PolicyType   = 'Machine'
        #     KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\RoamingCredentialSettings'
        #     Type         = 'DWord'
        #     Data         = '1'
        # }
        # @{
        #     Name         = 'Windows Components > Microsoft User Experience Virtualization > Synchronize Windows settings > Network Printers'
        #     Ensure       = 'Present'
        #     PolicyType   = 'Machine'
        #     KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings\NetworkPrinters'
        #     Type         = 'DWord'
        #     Data         = '0'
        # }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Sync Unlisted Windows Apps'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\SyncUnlistedWindows8Apps'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Components > Microsoft User Experience Virtualization > Use User Experience Virtualization (UE-V)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\UEV\Agent\Configuration\SyncEnabled'
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