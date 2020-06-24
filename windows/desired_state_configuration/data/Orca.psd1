@{  
    ChocolateyPackages = @(
        @{
            Name           = "Orca"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "orca"
            MinimumVersion = "3.1.3790.0000"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )
}