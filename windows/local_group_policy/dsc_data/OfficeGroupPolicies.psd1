@{Policies = @(
    ################################ MACHINE SETTINGS ################################
    @{
        Name         = 'Office: Enable automatic updates'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\officeupdate\enableautomaticupdates'
        Type         = 'DWord'
        Data         = '1'
    }
    ############################## END MACHINE SETTINGS ##############################

    ################################# USER SETTINGS #################################
    @{
        Name         = 'Office: Disable First Run Movie'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\firstrun\disablemovie'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office: Disable Office First Run on application boot'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\firstrun\bootedrtm'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office: Allow roaming of all user customizations'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\toolbars\customuiroaming'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office: Disable coming soon'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\disablecomingsoon'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office: Install en-GB language'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\languageresources\installlanguage'
        Type         = 'DWord'
        Data         = '2057'
    }
    @{
        Name         = 'Office: Primary editing language'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\languageresources\preferrededitinglanguage'
        Type         = 'String'
        Data         = 'en-GB'
    }
    @{
        Name         = 'Office: Only sign in with Microsoft Account'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\signin\signinoptions'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office: Suppress recommended settings dialog'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\optindisable'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office Privacy: Automatically receive small updates to improve reliability (disabled)'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\updatereliabilitydata'
        Type         = 'DWord'
        Data         = '0'
    }
    @{
        Name         = 'Office Privacy: Configure the level of client software diagnostic data sent by Office to Microsoft (disabled)'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\common\clienttelemetry\sendtelemetry'
        Type         = 'DWord'
        Data         = '3'
    }
    @{
        Name         = 'Office Privacy: Disable Opt-in Wizard on first run'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\shownfirstrunoptin'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Office Privacy: Enable Customer Experience Improvement Program (disabled)'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\qmenable'
        Type         = 'DWord'
        Data         = '0'
    }
    @{
        Name         = 'Office Privacy: Send Office Feedback (disabled)'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\feedback\enabled'
        Type         = 'DWord'
        Data         = '0'
    }
    @{
        Name         = 'Office Privacy: Send personal information (disabled)'
        Ensure       = 'Present'
        PolicyType   = 'User'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\sendcustomerdata'
        Type         = 'DWord'
        Data         = '0'
    }
    ############################### END USER SETTINGS ###############################
)
}

