#Note - some other Defender settings are configured through the Windows Security Baseline.
@{Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > MAPS > Join Microsoft MAPS'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\Spynet\SpynetReporting'
            Type         = 'DWord'
            Data         = '2' #Advanced MAPS
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > MAPS > Send file samples when further analysis is required'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\Spynet\SubmitSamplesConsent'
            Type         = 'DWord'
            Data         = '1' #Send safe samples
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Real-time Protection > Turn off real-time protection'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection\DisableRealtimeMonitoring'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Real-time Protection > Turn on behavior monitoring'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection\DisableBehaviorMonitoring'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Scan > Scan removable drives'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\Scan\DisableRemovableDriveScanning'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Configure detection for potentially unwanted applications'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\PUAProtection'
            Type         = 'DWord'
            Data         = '1' #Block
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Randomize scheduled task times'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\RandomizeScheduleTaskTimes'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Turn off Windows Defender Antivirus'
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware'
            Type         = 'DWord'
        }
        ############################## END MACHINE SETTINGS ##############################
    )
}