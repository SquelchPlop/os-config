@{
    ChocolateyPackages = @(
        @{
            Name           = "Spotify"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceSquelchplopPublic"
            PackageName    = "spotify"
            MinimumVersion = "1.135.458.1"
            Source         = "source-squelchplop-public"
            AutoUpgrade    = $True
        }
    )
}