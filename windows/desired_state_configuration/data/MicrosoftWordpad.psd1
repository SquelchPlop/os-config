@{
    Files              = @(
        @{
            Name            = "Microsoft Wordpad UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Microsoft Wordpad #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2012/SettingsLocationTemplate">
    <Name>Microsoft Wordpad</Name>
    <ID>Microsoft Wordpad #ALL</ID>
    <Version>1</Version>
    <Processes>
        <Process>
            <Filename>WORDPAD.EXE</Filename>
        </Process>
    </Processes>
    <Settings>
        <Registry>
            <Path Recursive="true">Software\Microsoft\Windows\CurrentVersion\Applets\Wordpad</Path>
        </Registry>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}