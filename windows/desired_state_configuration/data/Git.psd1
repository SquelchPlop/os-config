@{  
    ChocolateyPackages = @(
        @{
            Name           = "Git for Windows"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "git.install"
            MinimumVersion = "2.27.0"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )

    Shortcuts          = @(
        @{
            Name             = "Git Bash Start Menu Shortcut"
            Ensure           = "Present"
            DependsOn        = "[cChocoPackageInstaller]Git for Windows"
            Target           = "C:\Program Files\Git\git-bash.exe"
            Path             = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git Bash.lnk"
            Arguments        = "--cd-to-home"
            WorkingDirectory = "%HOMEDRIVE%%HOMEPATH%"
        }
    )

    Files              = @(
        @{
            Name            = "Git Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Git for Windows"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}