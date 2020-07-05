@{
    ChocolateyPackages = @(
        @{
            Name           = "Microsoft Edge"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "microsoft-edge"
            MinimumVersion = "83.0.478.54"
            Source         = "source-chocolatey-community"
            chocoParams    = "--ia 'DONOTCREATEDESKTOPSHORTCUT=true'"
            AutoUpgrade    = $True
        }
    )

    Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Microsoft Edge > Extensions > Control which extensions are installed silently (LastPass)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\ExtensionInstallForcelist\1'
            Type         = 'String'
            Data         = 'bbcinlkgjjkejfdpemiealijmmooekmp'
        }
        @{
            Name         = 'Microsoft Edge > Extensions > Control which extensions are installed silently (uBlockOrigin)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\ExtensionInstallForcelist\2'
            Type         = 'String'
            Data         = 'odfafepnkmbhccpbejgmiehpchacaeak'
        }
        @{
            Name         = 'Microsoft Edge > SmartScreen settings > Configure Microsoft Defender SmartScreen'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\SmartScreenEnabled'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Microsoft Edge > Startup, home page and new tab page > Action to take on startup'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\RestoreOnStartup'
            Type         = 'DWord'
            Data         = '1' #Restore the last session
        } 
        @{
            Name         = 'Microsoft Edge > Hide the First-run experience and splash screen'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\HideFirstRunExperience'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Microsoft Edge > Allow personalization of ads, search and news by sending browsing history to Microsoft'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\PersonalizationReportingEnabled'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Microsoft Edge > Allow user feedback'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\UserFeedbackAllowed'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = "Microsoft Edge > Automatically import another browser's data and settings at first run"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\AutoImportAtFirstRun'
            Type         = 'DWord'
            Data         = '4'
        }
        @{
            Name         = "Microsoft Edge > Block tracking of users' web-browsing activity"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\TrackingPrevention'
            Type         = 'DWord'
            Data         = '2' #Balanced
        }
        @{
            Name         = "Microsoft Edge > Configure Do Not Track"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\ConfigureDoNotTrack'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = "Microsoft Edge > Disable synchronization of data using Microsoft sync services"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\ManagedSearchEngines'
            Type         = 'String'
            Data         = '
            [
                {
                    "name": "DuckDuckGo",
                    "keyword": "DuckDuckGo",
                    "is_default": true,
                    "search_url": "https://duckduckgo.com/?q={searchTerms}",
                    "image_search_url": "https://duckduckgo.com/?q={searchTerms}&iax=images&ia=images",
                    "suggest_url": "https://duckduckgo.com/ac/?q={searchTerms}&type=list"
                },
                {
                    "name": "Google",
                    "keyword": "Google",
                    "is_default": false,
                    "search_url": "https://www.google.de/search?q={searchTerms}",
                    "image_search_url": "https://www.google.de/search?q={searchTerms}&tbm=isch",
                    "suggest_url": "https://www.google.de/complete/search?q={searchTerms}&output=chrome"
                }
            ]'
        }
        @{
            Name         = "Microsoft Edge > Manage Search Engines"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\SyncDisabled'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = "Microsoft Edge > Send site information to improve Microsoft services"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\SendSiteInfoToImproveServices'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = "Microsoft Edge > Enable saving passwords to the password manager"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Edge\PasswordManagerEnabled'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = "Microsoft Edge Update > Prevent Desktop Shortcut creation upon install default"
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\EdgeUpdate\CreateDesktopShortcutDefault'
            Type         = 'DWord'
            Data         = '0'
        }
        ############################## END MACHINE SETTINGS ##############################
    )
}