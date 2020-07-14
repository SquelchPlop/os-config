@{
    Files = @(
        @{
            Name            = "Intel Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "Intel ProSet Wireless Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel PROSet Wireless\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}