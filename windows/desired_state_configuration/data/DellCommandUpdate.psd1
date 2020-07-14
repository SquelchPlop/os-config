@{
    ChocolateyPackages = @(
        @{
            Name           = "Dell Command | Update"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "dellcommandupdate-uwp"
            MinimumVersion = "3.1.2"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "Dell Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dell\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}