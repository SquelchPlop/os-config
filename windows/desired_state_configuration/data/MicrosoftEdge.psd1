@{
    ChocolateyPackages = @(
        @{
            Name           = "Microsoft Edge"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "microsoft-edge"
            MinimumVersion = "83.0.478.54"
            Source         = "https://pkgs.dev.azure.com/SquelchPlop/choco-public/_packaging/choco-public/nuget/v2/"
            chocoParams    = "--ia 'DONOTCREATEDESKTOPSHORTCUT=true'"
            AutoUpgrade    = $True
        }
    )
}