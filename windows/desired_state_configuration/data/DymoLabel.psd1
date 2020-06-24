@{
    ChocolateyPackages = @(
        @{
            Name           = "Dymo Label"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco"
            PackageName    = "dymo-label"
            MinimumVersion = "8.7.3"
            Source         = "https://chocolatey.org/api/v2/"
            AutoUpgrade    = $True
        }
    )
    
    Shortcuts          = @(
        @{
            Name      = "Dymo Label Start Menu Shortcut"
            Ensure    = "Present"
            DependsOn = "[cChocoPackageInstaller]Dymo Label"
            Target    = "C:\Program Files (x86)\DYMO\DYMO Label Software\DLS.exe"
            Path      = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\DYMO Label.lnk"
        }
    )
    
    Files              = @(
        @{
            Name            = "Dymo Label Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Dymo Label"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\DYMO Label\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }
        @{
            Name            = "Dymo Label All Users Desktop Shortcut"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Dymo Label"
            DestinationPath = "C:\Users\Public\Desktop\DYMO Label v.8.lnk"
            Force           = $true
            Type            = "File"
        }
        @{
            Name            = "Dymo Label Configuration XML file"
            Ensure          = "Present"
            DependsOn       = "[cChocoPackageInstaller]Dymo Label"
            DestinationPath = "C:\Program Files (x86)\DYMO\DYMO Label Software\DLS.exe.config"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
<configSections>
    <sectionGroup name="applicationSettings" type="System.Configuration.ApplicationSettingsGroup, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089">
        <section name="DYMO.DLS.Properties.Settings" type="System.Configuration.ClientSettingsSection, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" requirePermission="false" />
    </sectionGroup>
</configSections>
<applicationSettings>
    <DYMO.DLS.Properties.Settings>
        <setting name="OnlineNewsAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="DymoStampsAllowed" serializeAs="String">
            <value>true</value>
        </setting>
        <setting name="BuyLabelsAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="RssNewsAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="FirstRunWizardAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="RegistrationAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="DataTrackingAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="OnlineUserGuideAllowed" serializeAs="String">
            <value>true</value>
        </setting>
        <setting name="OnlineHelpAllowed" serializeAs="String">
            <value>true</value>
        </setting>
        <setting name="OnlineTechSupportAllowed" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="DYMOOnlineRootUrl" serializeAs="String">
            <value />
        </setting>
        <setting name="EnableAnimation" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="EnableSoftwareUpdate" serializeAs="String">
            <value>false</value>
        </setting>
        <setting name="SoftwareUpdateFolderUrl" serializeAs="String">
            <value />
        </setting>
        <setting name="ManualsFolderUrl" serializeAs="String">
            <value />
        </setting>
        <setting name="DisableAutomaticWebConnections" serializeAs="String">
            <value>False</value>
        </setting>
    </DYMO.DLS.Properties.Settings>
</applicationSettings>
</configuration>
"@
        }
    )
}