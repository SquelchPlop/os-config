@{
    ChocolateyPackages = @(
        @{
            Name           = "Visual Studio Code"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "vscode"
            Params         = "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders"
            MinimumVersion = "1.46.1"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )
    
    Files              = @(
        @{
            Name            = "Visual Studio Code Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Visual Studio Code"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"
            Force           = $true
            Type            = "File"
        }    
        @{
            Name            = "Visual Studio Code Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]Visual Studio Code Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}