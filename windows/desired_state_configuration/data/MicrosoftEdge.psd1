@{
    ChocolateyPackages = @(
        @{
            Name           = "Microsoft Edge"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "microsoft-edge"
            MinimumVersion = "83.0.478.54"
            Source         = "source-chocolatey-community"
            chocoParams    = "--ia 'DONOTCREATEDESKTOPSHORTCUT=true'"
            AutoUpgrade    = $True
        }
    )
}