@{
    ChocolateyPackages = @(
        @{
            Name           = "WhatsApp Desktop"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceSquelchplopPublic"
            PackageName    = "whatsapp-desktop"
            MinimumVersion = "2.2025.7.1"
            Source         = "source-squelchplop-public"
            AutoUpgrade    = $True
        }
    )
}