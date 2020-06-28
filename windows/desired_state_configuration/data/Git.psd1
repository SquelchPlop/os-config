@{  
    ChocolateyPackages = @(
        @{
            Name           = "Git for Windows"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "git.install"
            params         = "/NoShellIntegration"
            MinimumVersion = "2.27.0"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "Git Bash Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Git for Windows"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git Bash.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\Git Bash.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Git Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]Git Bash Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}