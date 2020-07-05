@{
    Files              = @(
        @{
            Name            = "Microsoft Notepad UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Microsoft Notepad #ALL.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2012/SettingsLocationTemplate">
    <Name>Microsoft Notepad</Name>
    <ID>Microsoft Notepad #ALL</ID>
    <Version>1</Version>
    <Processes>
        <Process>
            <Filename>NOTEPAD.EXE</Filename>
        </Process>
    </Processes>
    <Settings>
        <Registry>
            <Path>Software\Microsoft\Notepad</Path>
        </Registry>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}