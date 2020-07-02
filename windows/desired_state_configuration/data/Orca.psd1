@{  
    ChocolateyPackages = @(
        @{
            Name           = "Orca"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "orca"
            MinimumVersion = "3.1.3790.0000"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )
}