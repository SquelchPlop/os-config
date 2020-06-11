Configuration ClientBaseline
{
    Import-DscResource -ModuleName 'PolicyFileEditor'

    cAdministrativeTemplateSetting AllowMultipleRdpSessions
    {
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDisableAutoReconnect'
        Type         = 'DWord'
        Data         = '1'
    }
}