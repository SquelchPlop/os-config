@{Policies = @(
        @{
            Name         = "Remove 'Switch User', 'Ease of Access' and 'Language' from home/lock screens"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Microsoft\Windows Embedded\EmbeddedLogon'
            Type         = 'DWord'
            Data         = '28'
        }
    )
}