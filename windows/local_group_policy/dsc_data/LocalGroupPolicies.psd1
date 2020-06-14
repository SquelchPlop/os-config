@{Policies = @(
        @{
            Name         = "Disable auto reconnecting2"
            Ensure       = 'Absent'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableAutoReconnect'
            Type         = 'DWord'
            Data         = '1'
        },
        @{  
            Name         = "Lock taskbar for non admins"
            Ensure       = 'Absent'
            PolicyType   = 'NonAdministrators'
            KeyValueName = 'Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\lockTaskbar'
            Type         = 'DWord'
            Data         = '1'
        }
    )
}