@{Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Show a notification when your PC requires a restart to finish updating' #Not a policy
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\WindowsUpdate\UX\Settings\RestartNotificationsAllowed2'
            Type         = 'DWord'
            Data         = '1'
        }
    
        @{
            Name         = 'Windows > Windows Components > Delivery Optimization > Download Mode'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization\DODownloadMode'
            Type         = 'DWord'
            Data         = '1' #Lan (1)
        }
        @{
            Name         = 'Windows > Windows Components > Delivery Optimization > Enable Peer Caching while the device connects via VPN'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization\DOAllowVPNPeerCaching'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Windows Update for Business > Select the target Feature Update version (enable)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\TargetReleaseVersion'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Windows Update for Business > Select the target Feature Update version (set)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\TargetReleaseVersionInfo'
            Type         = 'String'
            Data         = '2004' #Versions found at https://docs.microsoft.com/en-us/windows/release-information/
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Allow Automatic Updates immediate installation' #For minor updates
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AutoInstallMinorUpdates'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Configure Automatic Updates (enable)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Configure Automatic Updates (set mode)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AUOptions'
            Type         = 'DWord'
            Data         = '3' # 3 - Auto download and notify for install
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Configure Automatic Updates (set Microsoft Update)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AllowMUUpdateService'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Remove access to "Pause updates" feature'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetDisablePauseUXAccess'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts (enable)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetComplianceDeadline'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts (set Feature Updates)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ConfigureDeadlineForFeatureUpdates'
            Type         = 'DWord'
            Data         = '2'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts (set Quality Updates)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ConfigureDeadlineForQualityUpdates'
            Type         = 'DWord'
            Data         = '2'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts (set Grace Period)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ConfigureDeadlineGracePeriod'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Windows Update > Turn off auto-restart notifications for update installations'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetAutoRestartNotificationDisable'
            Type         = 'DWord'
            Data         = '0'
        }
        ############################## END MACHINE SETTINGS ##############################
    )
}

