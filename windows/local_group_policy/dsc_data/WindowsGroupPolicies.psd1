@{Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Remove "Switch User", "Ease of Access" and "Language" from home/lock screens'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows Embedded\EmbeddedLogon\BrandingNeutral'
            Type         = 'DWord'
            Data         = '28'
        }
        @{
            Name         = 'Enable lock screen slide show (needed for Windows Spotlight)'
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\Personalization\NoLockScreenSlideshow'
            Type         = 'DWord'
        }
        @{
            Name         = 'Display highly detailed status'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\VerboseStatus'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Do not show Windows Tips'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableSoftLanding'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Turn off File History'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\FileHistory\Disabled'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Turn on Location (for Find My Device)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location'
            Type         = 'String'
            Data         = 'Allow'
        }
        @{
            Name         = 'Windows Update for Business: Enable targetting a specific Feature Update version'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\TargetReleaseVersion'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Update for Business: Set target Feature Update version'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\TargetReleaseVersionInfo'
            Type         = 'String'
            Data         = '2004' #Versions found at https://docs.microsoft.com/en-us/windows/release-information/
        }
        @{
            Name         = 'Windows Update: Automatic Updates allow immediate installation for minor updates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AutoInstallMinorUpdates'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Update: Enable Automatic Updates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows Update: Configure Automatic Updates to download and prompt for install'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AUOptions'
            Type         = 'DWord'
            Data         = '3'
        }
        @{
            Name         = 'Windows Update: Receive updates for other Microsoft products'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AllowMUUpdateService'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Update: Remove access to "Pause updates" feature in UI'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetDisablePauseUXAccess'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Update: Set deadlines'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetComplianceDeadline'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows Update: Set deadline for Feature Updates to 2 days'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ConfigureDeadlineForFeatureUpdates'
            Type         = 'DWord'
            Data         = '2'
        }
        @{
            Name         = 'Windows Update: Set deadline for Quality Updates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ConfigureDeadlineForQualityUpdates'
            Type         = 'DWord'
            Data         = '2'
        }
        @{
            Name         = 'Windows Update: Set deadline grace period to 1 day'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ConfigureDeadlineGracePeriod'
            Type         = 'DWord'
            Data         = '1'
        }

        ############################## END MACHINE SETTINGS ##############################

        ################################# USER SETTINGS #################################
        @{
            Name         = 'Turn on Windows Spotlight on lockscreen'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\ConfigureWindowsSpotlight'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Turn off the Windows Welcome Experience'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\CloudContent\DisableWindowsSpotlightWindowsWelcomeExperience'
            Type         = 'DWord'
            Data         = '1'
        }
        ############################### END USER SETTINGS ###############################
    )
}

