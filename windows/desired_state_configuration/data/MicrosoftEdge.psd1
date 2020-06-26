@{
    ChocolateyPackages = @(
        @{
            Name           = "Microsoft Edge"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "microsoft-edge"
            MinimumVersion = "83.0.478.54"
            Source         = "https://chocolatey.org/api/v2/"
            chocoParams    = "--ia 'DONOTCREATEDESKTOPSHORTCUT=true'"
            AutoUpgrade    = $True
        }
    )
}