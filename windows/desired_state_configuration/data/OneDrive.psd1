@{
    Policies           = @(
        ################################# USER SETTINGS #################################
        @{
            Name         = 'Redirect Music Shell Folder to OneDrive' #Not a policy
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders\My Music'
            Type         = 'ExpandString'
            Data         = '%USERPROFILE%\OneDrive\Music'
        }
        @{
            Name         = 'Redirect Video Shell Folder to OneDrive' #Not a policy
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders\My Video'
            Type         = 'ExpandString'
            Data         = '%USERPROFILE%\OneDrive\Videos'
        }
        ############################### END USER SETTINGS ###############################
    )
}