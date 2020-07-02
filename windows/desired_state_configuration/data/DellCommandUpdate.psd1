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
}