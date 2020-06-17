#Note - some other Defender settings are configured through the Windows Security Baseline.
@{Policies = @(
    ################################ MACHINE SETTINGS ################################
    @{
        Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Real-time Protection > Turn off real-time protection'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection\DisableRealtimeMonitoring'
        Type         = 'DWord'
        Data         = '0'
    }
    @{
        Name         = 'Windows > Windows Components > Microsoft Defender Antivirus > Randomize scheduled task times'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows Defender\RandomizeScheduleTaskTimes'
        Type         = 'DWord'
        Data         = '1'
    }
    ############################## END MACHINE SETTINGS ##############################
)
}

