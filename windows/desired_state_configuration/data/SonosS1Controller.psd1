@{
    ChocolateyPackages = @(
        @{
            Name           = "Sonos S1 Controller"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceSquelchplopPublic"
            PackageName    = "sonos-s1-controller"
            MinimumVersion = "57.3.77280"
            Source         = "source-squelchplop-public"
            AutoUpgrade    = $True
        }
    )
    
    Files              = @(
        @{
            Name            = "Sonos S1 Controller Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Sonos S1 Controller"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sonos S1 Controller.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sonos S1 Controller\Sonos S1 Controller.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Sonos S1 Controller Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]Sonos S1 Controller Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sonos S1 Controller\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "Sonos S1 Controller All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Sonos S1 Controller"
            DestinationPath = "C:\Users\Public\Desktop\Sonos S1 Controller.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Sonos S1 Controller UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Sonos Controller #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>Sonos Controller</Name>
    <ID>Sonos Controller #ALL</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>sonos.exe</Filename>
        </Process>
    </Processes>
    <Settings>
        <Registry>
            <Path Recursive="true">Software\Sonos</Path>
        </Registry>
        <File>
            <Root>
                <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Sonos,_Inc</Path>
        </File>
        <File>
            <Root>
                <EnvironmentVariable>PROGRAMDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Sonos,_Inc</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}