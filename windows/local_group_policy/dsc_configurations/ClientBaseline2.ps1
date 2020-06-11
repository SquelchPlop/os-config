Configuration ClientBaseline2
{
    Import-DscResource -ModuleName 'PolicyFileEditor'

    cAdministrativeTemplateSetting AllowMultipleRdpSessions
    {
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\fDenyTSConnections'
        Type         = 'DWord'
        Data         = '0'
    }
}