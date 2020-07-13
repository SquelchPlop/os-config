@{  
    ChocolateyPackages = @(
        @{
            Name           = "VLC"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "vlc"
            MinimumVersion = "3.0.11"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )

    RegistryKeys       = @(
        @{
            Name      = "Remove VLC add to playlist context menu"
            Ensure    = "Absent"
            Key       = "HKEY_CLASSES_ROOT\Directory\shell\AddToPlaylistVLC"
            ValueName = ''
        }
        @{
            Name      = "Remove VLC play context menu"
            Ensure    = "Absent"
            Key       = "HKEY_CLASSES_ROOT\Directory\shell\PlayWithVLC"
            ValueName = ''
        }
    )
    
    Files              = @(
        @{
            Name            = "VLC Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]VLC"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VLC Media Player.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC Media Player.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "VLC Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]VLC Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "VLC All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]VLC"
            DestinationPath = "C:\Users\Public\Desktop\VLC media player.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "VLC UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\VLC Media Player #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>VLC Media Player</Name>
    <ID>VLC Media Player #ALL</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>vlc.exe</Filename>
        </Process>
    </Processes>
    <Settings>
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">vlc</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}