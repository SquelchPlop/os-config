
@{
    AllNodes    = @(
        @{
            NodeName           = "localhost"
            LocalGroupPolicies = @(
                @{
                    Name         = "Disable auto reconnecting"
                    Ensure       = 'Present'
                    PolicyType   = 'Machine'
                    KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableAutoReconnect'
                    Type         = 'DWord'
                    Data         = '1'
                }
                @{  
                    Name         = "Lock taskbar for non admins"
                    Ensure       = 'Present'
                    PolicyType   = 'NonAdministrators'
                    KeyValueName = 'Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\lockTaskbar'
                    Type         = 'DWord'
                    Data         = '1'
                }
            )
        }
    )

    NonNodeData = ""
}