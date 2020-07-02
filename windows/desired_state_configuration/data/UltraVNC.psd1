@{  
    ChocolateyPackages = @(
        @{
            Name           = "UltraVNC"
            Ensure         = "present"
            DependsOn      = "[script]sourceSquelchplopPrivate"
            PackageName    = "ultravnc"
            MinimumVersion = "1.2.4.0"
            Source         = "source-squelchplop-private"
            AutoUpgrade    = $True
        }
    )
}