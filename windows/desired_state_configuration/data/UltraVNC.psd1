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
    Files              = @(
        @{
            Name            = "UltraVNC UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\UltraVNC Viewer #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>UltraVNC Viewer</Name>
    <ID>UltraVNC Viewer #ALL</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>vncviewer.exe</Filename>
        </Process>
    </Processes>
    <Settings>
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">UltraVNC</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}