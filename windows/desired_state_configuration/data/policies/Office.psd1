#Note - some other Office settings are configured through the Windows Security Baseline.
@{Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Office > Updates > Enable automatic updates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\officeupdate\enableautomaticupdates'
            Type         = 'DWord'
            Data         = '1'
        }
        ############################## END MACHINE SETTINGS ##############################

        ################################# USER SETTINGS #################################
        @{
            Name         = 'Office > First Run > Disable First Run Movie'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\firstrun\disablemovie'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > First Run > Disable Office First Run on application boot'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\firstrun\bootedrtm'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Global Options > Customize > Allow roaming of all user customizations'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\toolbars\customuiroaming'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Language Preferences > Other > Disable coming soon'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\disablecomingsoon'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Language Preferences > Editing Languages > Primary Editing Language Install'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\languageresources\installlanguage'
            Type         = 'DWord'
            Data         = '2057'
        }
        @{
            Name         = 'Office > Language Preferences > Editing Languages > Primary Editing Language Set'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\languageresources\preferrededitinglanguage'
            Type         = 'String'
            Data         = 'en-GB'
        }
        @{
            Name         = 'Office > Miscellaneous > Block signing into Office' #Set to Microsoft Account only
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\signin\signinoptions'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Miscellaneous > Suppress recommended settings dialog'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\optindisable'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office Privacy > Trust Center > Automatically receive small updates to improve reliability'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\updatereliabilitydata'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office Privacy > Trust Center > Configure the level of client software diagnostic data sent by Office to Microsoft'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\common\clienttelemetry\sendtelemetry'
            Type         = 'DWord'
            Data         = '3'
        }
        @{
            Name         = 'Office Privacy > Trust Center > Disable Opt-in Wizard on first run'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\shownfirstrunoptin'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office Privacy > Trust Center > Enable Customer Experience Improvement Program'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\qmenable'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office Privacy > Trust Center > Send Office Feedback'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\feedback\enabled'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office Privacy > Trust Center > Send personal information'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\sendcustomerdata'
            Type         = 'DWord'
            Data         = '0'
        }
        ############################### END USER SETTINGS ###############################
    )
}