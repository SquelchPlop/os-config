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
    Files              = @(
        @{
            Name            = "Dragon UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Dragon #15.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>Dragon 15</Name>
    <ID>Dragon #15</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>NatSpeak.exe</Filename>
            <ProductVersion>
                <Major Minimum="15" Maximum="15" />
            </ProductVersion>
            <FileVersion>
                <Major Minimum="15" Maximum="15" />
            </FileVersion>
        </Process>
    </Processes>
    <Settings>
        <Asynchronous>true</Asynchronous>
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Nuance\NaturallySpeaking15</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}