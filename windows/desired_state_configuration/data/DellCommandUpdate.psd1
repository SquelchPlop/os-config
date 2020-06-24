@{
    ChocolateyPackages = @(
        @{
            Name           = "Dell Command | Update"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "dellcommandupdate-uwp"
            MinimumVersion = "3.1.2"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )
}