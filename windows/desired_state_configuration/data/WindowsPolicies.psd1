@{
    Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Remove "Switch User", "Ease of Access" and "Language" from home/lock screens' #Not a policy
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows Embedded\EmbeddedLogon\BrandingNeutral'
            Type         = 'DWord'
            Data         = '28'
        }
        @{
            Name         = 'Turn on Location' #Not a policy
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location'
            Type         = 'String'
            Data         = 'Allow'
        }
        @{
            Name         = 'Turn on Automatic Timezone' #Not a policy
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SYSTEM\CurrentControlSet\Services\tzautoupdate\Start'
            Type         = 'DWord'
            Data         = '3'
        }

        @{
            Name         = 'Windows > Control Panel > Allow Online Tips'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\AllowOnlineTips'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Control Panel > Personalization > Prevent enabling lock screen slide show' #Must be unconfigured for Windows Spotlight
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\Personalization\NoLockScreenSlideshow'
            Type         = 'DWord'
        }
        @{
            Name         = 'Windows > System > Display highly detailed status messages'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\VerboseStatus'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > System > Storage Sense > Allow Storage Sense'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\StorageSense\AllowStorageSenseGlobal'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > System > Storage Sense > Allow Storage Sense Temporary Files cleanup'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\StorageSense\AllowStorageSenseTemporaryFilesCleanup'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > System > Storage Sense > Configure Storage Sense cadence'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\StorageSense\ConfigStorageSenseGlobalCadence'
            Type         = 'DWord'
            Data         = '30'
        }
        @{
            Name         = 'Windows > System > Storage Sense > Configure Storage Sense Cloud Content dehydration threshold'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\StorageSense\ConfigStorageSenseCloudContentDehydrationThreshold'
            Type         = 'DWord'
            Data         = '60'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Do not show Windows Tips'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableSoftLanding'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Turn off Microsoft consumer experiences'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableWindowsConsumerFeatures'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Data Collection and Preview Builds > Allow device name to be sent in Windows diagnostic data'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\DataCollection\AllowDeviceNameInTelemetry'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Data Collection and Preview Builds > Allow Telemetry'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\DataCollection\AllowTelemetry'
            Type         = 'DWord'
            Data         = '0' #Security [Enterprise Only]
        }
        @{
            Name         = 'Windows > Windows Components > Data Collection and Preview Builds > Configure telemetry opt-in change notifications'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\DataCollection\DisableTelemetryOptInChangeNotification'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Data Collection and Preview Builds > Do not show feedback notifications'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\DataCollection\DoNotShowFeedbackNotifications'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > File History > Turn off File History'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\FileHistory\Disabled'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Sync your settings > Do not sync'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\SettingSync\DisableSettingSync'
            Type         = 'DWord'
            Data         = '2'
        }
        @{
            Name         = 'Windows > Windows Components > Sync your settings > Do not sync (user override)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\SettingSync\DisableSettingSyncUserOverride'
            Type         = 'DWord'
            Data         = '1'
        }
        ############################## END MACHINE SETTINGS ##############################

        ################################# USER SETTINGS #################################
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Configure Windows spotlight on lock screen'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\ConfigureWindowsSpotlight'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Configure Windows spotlight on lock screen > Include content from Enterprise spotlight'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\IncludeEnterpriseSpotlight'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Do not suggest third-party content in Windows spotlight'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableThirdPartySuggestions'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Do not use diagnostic data for tailored experiences'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableTailoredExperiencesWithDiagnosticData'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Turn off all Windows spotlight features'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableWindowsSpotlightFeatures'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Turn off the Windows Welcome Experience'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableWindowsSpotlightWindowsWelcomeExperience'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Turn off Windows Spotlight on Action Center'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableWindowsSpotlightOnActionCenter'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Cloud Content > Turn off Windows Spotlight on Settings'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableWindowsSpotlightOnSettings'
            Type         = 'DWord'
            Data         = '1'
        }
        ############################### END USER SETTINGS ###############################
    )
}