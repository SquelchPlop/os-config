@{  
    ChocolateyPackages = @(
        @{
            Name           = "XMind"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "xmind"
            MinimumVersion = "8.9"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )

    Shortcuts          = @(
        @{
            Name      = "XMind Start Menu Shortcut"
            Ensure    = "Present"
            DependsOn = "[cChocoPackageInstaller]XMind"
            Target    = "C:\Program Files (x86)\XMind\XMind.exe"
            Path      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\XMind.lnk"
        }
    )
    
    Files              = @(
        @{
            Name            = "XMind Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]XMind"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\XMind\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "XMind UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\XMind #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>XMind</Name>
    <ID>XMind #ALL</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>XMind.exe</Filename>
        </Process>
    </Processes>
    <Settings>
        <File>
            <Root>
                <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Application Data\XMind\configuration-cathy_win32</Path>
        </File>
        <File>
            <Root>
                <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Application Data\XMind\workspace-cathy</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}