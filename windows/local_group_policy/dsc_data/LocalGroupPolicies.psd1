@{Policies = @(
        @{
            Name         = "Disable auto reconnecting2"
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableAutoReconnect'
            Type         = 'DWord'
            Data         = '1'
        },
    )
}