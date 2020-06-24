@{  
    ChocolateyPackages = @(
        @{
            Name           = "XMind"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "xmind"
            MinimumVersion = "8.9"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )

    Shortcuts          = @(
        @{
            Name      = "XMind Start Menu Shortcut"
            Ensure    = "Present"
            DependsOn = "[cChocoPackageInstaller]XMind"
            Target    = "C:\Program Files (x86)\XMind\XMind.exe"
            Path      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\XMind.lnk"
        }
    )
    
    Files              = @(
        @{
            Name            = "XMind Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]XMind"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\XMind\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
    )
}