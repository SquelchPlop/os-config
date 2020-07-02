@{  
    ChocolateyPackages = @(
        @{
            Name           = "Dragon Professional Individual"
            Ensure         = "present"
            DependsOn      = "[script]sourceSquelchplopPrivate"
            PackageName    = "dragon-professional-individual"
            MinimumVersion = "15.30.000.141"
            Source         = "source-squelchplop-private"
            AutoUpgrade    = $True
        }
    )
}