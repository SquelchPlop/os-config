@{  
    # ChocolateyPackages = @(
    #     @{
    #         Name           = "Adobe Photoshop"
    #         Ensure         = "present"
    #         DependsOn      = "[script]sourceSquelchplopPrivate"
    #         PackageName    = "adobe-photoshop"
    #         MinimumVersion = "21.1.1.121"
    #         Source         = "source-squelchplop-private"
    #         AutoUpgrade    = $True
    #     }
    # )
    Files              = @(
        @{
            Name            = "Adobe Photoshop All Users Desktop Shortcut"
            Ensure          = "Absent"
            DestinationPath = "C:\Users\Public\Desktop\Adobe Photoshop 2020.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Adobe Photoshop UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Adobe Photoshop #2020.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>Adobe Photoshop 2020</Name>
    <ID>Adobe Photoshop #2020</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>Photoshop.exe</Filename>
            <ProductVersion>
                <Major Minimum="21" Maximum="21" />
            </ProductVersion>
            <FileVersion>
                <Major Minimum="21" Maximum="21" />
            </FileVersion>
        </Process>
    </Processes>
    <Settings>
        <Registry>
            <Path Recursive="true">SOFTWARE\Adobe\Photoshop</Path>
        </Registry>
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Adobe\Adobe Photoshop 2020</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}