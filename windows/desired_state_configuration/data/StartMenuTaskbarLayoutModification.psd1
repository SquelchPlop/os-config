@{
    Policies = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Windows > Start Menu and Taskbar > Start Layout (enable)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\Explorer\LockedStartLayout'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Windows > Start Menu and Taskbar > Start Layout (set)'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\Windows\Explorer\StartLayoutFile'
            Type         = 'String'
            Data         = 'C:\ProgramData\layout_modification.xml'
        }
        ############################## END MACHINE SETTINGS ##############################
    )

    Files    = @(
        @{
            Name            = "Start menu and taskbar layout modification XML file"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\layout_modification.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification" 
xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" 
xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" 
xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout" Version="1">
<LayoutOptions StartTileGroupCellWidth="6" StartTileGroupsColumnCount="1" />
<DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
<StartLayoutCollection>
<defaultlayout:StartLayout GroupCellWidth="6">
    <start:Group Name="Office">
    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="Microsoft.Office.EXCEL.EXE.15" />          
    <start:Tile Size="2x2" Column="2" Row="0" AppUserModelID="Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim" />
    <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationID="Microsoft.Office.OUTLOOK.EXE.15" />

    <start:DesktopApplicationTile Size="2x2" Column="0" Row="2" DesktopApplicationID="Microsoft.Office.POWERPNT.EXE.15" />          
    <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="Microsoft.Office.MSPUB.EXE.15" />
    <start:DesktopApplicationTile Size="2x2" Column="4" Row="2" DesktopApplicationID="Microsoft.Office.WINWORD.EXE.15" />
    </start:Group>
    <start:Group Name="Core">
    <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="Microsoft.Windows.Explorer" />
    <start:DesktopApplicationTile Size="2x2" Column="0" Row="2" DesktopApplicationID="MSEdge" />
    <start:Tile Size="4x4" Column="2" Row="0" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
    </start:Group>
</defaultlayout:StartLayout>
</StartLayoutCollection>
</DefaultLayoutOverride>
<CustomTaskbarLayoutCollection PinListPlacement="Replace">
<defaultlayout:TaskbarLayout>
<taskbar:TaskbarPinList>
    <taskbar:DesktopApp DesktopApplicationID="MSEdge" />
    <taskbar:DesktopApp DesktopApplicationID="Microsoft.Office.OUTLOOK.EXE.15" />
    <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer" />
</taskbar:TaskbarPinList>
</defaultlayout:TaskbarLayout>
</CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
"@
        }
    )
}