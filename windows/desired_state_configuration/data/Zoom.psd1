@{  
    ChocolateyPackages = @(
        @{
            Name           = "Zoom"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "zoom"
            MinimumVersion = "5.1.28642.0705"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )
    
    Files              = @(
        @{
            Name            = "Zoom Start Menu Shortcut"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Zoom"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Zoom.lnk"
            SourcePath      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Zoom\Zoom.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Zoom Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[File]Zoom Start Menu Shortcut"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Zoom\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "Zoom All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Zoom"
            DestinationPath = "C:\Users\Public\Desktop\Zoom.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Zoom UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Zoom #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>Zoom</Name>
    <ID>Zoom #ALL</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>Zoom.exe</Filename>
        </Process>
    </Processes>
    <Settings>
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Zoom</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}