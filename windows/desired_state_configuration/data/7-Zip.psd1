@{  
    ChocolateyPackages = @(
        @{
            Name           = "7-Zip"
            Ensure         = "present"
            DependsOn      = "[cChocoSource]sourceChocolateyCommunity"
            PackageName    = "7zip.install"
            MinimumVersion = "19.0"
            Source         = "source-chocolatey-community"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "7-Zip Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]7-Zip"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "7-Zip File Manager UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\7-Zip File Manager #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>7-Zip File Manager</Name>
    <ID>7-Zip File Manager #ALL</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>7zFM.exe</Filename>
        </Process>
    </Processes>
    <Settings>
        <Registry>
            <Path Recursive="true">SOFTWARE\7-Zip</Path>
        </Registry>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}