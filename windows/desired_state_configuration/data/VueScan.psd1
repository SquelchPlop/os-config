@{  
    ChocolateyPackages = @(
        @{
            Name           = "VueScan"
            Ensure         = "present"
            DependsOn      = "[script]sourceSquelchplopPrivate"
            PackageName    = "vuescan"
            MinimumVersion = "9.7.29"
            Source         = "source-squelchplop-private"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "VueScan All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]VueScan"
            DestinationPath = "C:\Users\Public\Desktop\VueScan x64.lnk"
            Force           = $true
            Type            = "File"
        }
    )
}