@{Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Windows > Start Menu and Taskbar > Start Layout (enable)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\Explorer\LockedStartLayout'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Start Menu and Taskbar > Start Layout (set)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\Explorer\StartLayoutFile'
            Type         = 'String'
            Data         = '%PROGRAMDATA%\layout_modification.xml'
        }
        ############################## END MACHINE SETTINGS ##############################
    )
}