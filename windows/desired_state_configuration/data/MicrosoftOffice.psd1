@{
    ChocolateyPackages = @(
        @{
            Name           = "Microsoft Office Click-to-Run"
            Ensure         = "present"
            DependsOn      = "[cChocoInstaller]installChoco", "[File]Office Configuration XML file"
            PackageName    = "microsoft-office-click-to-run"
            params         = "/configuration-xml-file:C:\ProgramData\office_configuration.xml"
            MinimumVersion = "1.0.0"
            Source         = "https://pkgs.dev.azure.com/SquelchPlop/choco-public/_packaging/choco-public/nuget/v2/"
            AutoUpgrade    = $True
        }
    )

    Files              = @(
        @{
            Name            = "Microsoft Office Tools Start Menu Shortcuts Directory"
            Ensure          = "Absent"
            DependsOn       = "[cChocoPackageInstaller]Microsoft Office Click-to-Run"
            DestinationPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office Tools\"
            Force           = $true
            Recurse         = $true
            Type            = "Directory"
        }    
        @{
            Name            = "Office Configuration XML file"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\office_configuration.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<Configuration ID="e2aa76b3-370c-45aa-8763-5cc3d12457fb">
<Add OfficeClientEdition="64" Channel="Current" AllowCdnFallback="True">
<Product ID="O365ProPlusRetail" PIDKEY="XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99">
<Language ID="MatchOS" />
<ExcludeApp ID="Access" />
<ExcludeApp ID="Groove" />
<ExcludeApp ID="Lync" />
<ExcludeApp ID="OneDrive" />
<ExcludeApp ID="OneNote" />
<ExcludeApp ID="Teams" />
</Product>
</Add>
<Property Name="PinIconsToTaskbar" Value="FALSE" />
<Property Name="AUTOACTIVATE" Value="1" />
<Property Name="FORCEAPPSHUTDOWN" Value="FALSE" />
<Updates Enabled="TRUE" />
<Display Level="None" AcceptEULA="TRUE" />
<Logging Level="Standard" Path="C:\Windows\Temp\OfficeDeploymentTool.log" />
<RemoveMSI />
<AppSettings>
<User Key="software\microsoft\office\16.0\common\toolbars" Name="customuiroaming" Value="1" Type="REG_DWORD" App="office16" Id="L_AllowRoamingQuickAccessToolBarRibbonCustomizations" />
<User Key="software\microsoft\office\16.0\common" Name="sendcustomerdata" Value="0" Type="REG_DWORD" App="office16" Id="L_Sendcustomerdata" />
<User Key="software\microsoft\office\16.0\common\general" Name="shownfirstrunoptin" Value="1" Type="REG_DWORD" App="office16" Id="L_DisableOptinWizard" />
<User Key="software\microsoft\office\16.0\common" Name="qmenable" Value="0" Type="REG_DWORD" App="office16" Id="L_EnableCustomerExperienceImprovementProgram" />
<User Key="software\microsoft\office\16.0\common" Name="updatereliabilitydata" Value="0" Type="REG_DWORD" App="office16" Id="L_UpdateReliabilityPolicy" />
<User Key="software\microsoft\office\16.0\common\languageresources" Name="installlanguage" Value="2057" Type="REG_DWORD" App="office16" Id="L_PrimaryEditingLanguage" />
<User Key="software\microsoft\office\16.0\common\fixedformat" Name="disablepublishtofixedformat" Value="1" Type="REG_DWORD" App="office16" Id="L_Specifytypesoffixedformatoptionsavailabletotheuser" />
<User Key="software\microsoft\office\16.0\common\general" Name="optindisable" Value="1" Type="REG_DWORD" App="office16" Id="L_SuppressRecommendedSettingsDialog" />
<User Key="software\microsoft\office\16.0\common\feedback" Name="enabled" Value="0" Type="REG_DWORD" App="office16" Id="L_SendFeedback" />
<User Key="software\microsoft\office\16.0\common\signin" Name="signinoptions" Value="1" Type="REG_DWORD" App="office16" Id="L_SignInOptions" />
<User Key="software\microsoft\office\16.0\firstrun" Name="disablemovie" Value="1" Type="REG_DWORD" App="office16" Id="L_DisableMovie" />
<User Key="software\microsoft\office\16.0\firstrun" Name="bootedrtm" Value="1" Type="REG_DWORD" App="office16" Id="L_DisableOfficeFirstrun" />
<User Key="software\microsoft\office\16.0\common\internet" Name="onlinestorage" Value="4" Type="REG_DWORD" App="office16" Id="L_OnlineStorageFilter" />
<User Key="software\microsoft\office\16.0\excel" Name="dontshowwhatsnew" Value="1" Type="REG_DWORD" App="office16" Id="L_DontShowWhatsNewInformationExcel" />
<User Key="software\microsoft\office\16.0\powerpoint" Name="dontshowwhatsnew" Value="1" Type="REG_DWORD" App="office16" Id="L_DontShowWhatsNewInformationPowerPoint" />
<User Key="software\microsoft\office\16.0\outlook" Name="dontshowwhatsnew" Value="1" Type="REG_DWORD" App="office16" Id="L_DontShowWhatsNewInformationOutlook" />
<User Key="software\microsoft\office\16.0\onenote" Name="dontshowwhatsnew" Value="1" Type="REG_DWORD" App="office16" Id="L_DontShowWhatsNewInformationOneNote" />
<User Key="software\microsoft\office\16.0\word" Name="dontshowwhatsnew" Value="1" Type="REG_DWORD" App="office16" Id="L_DontShowWhatsNewInformationWord" />
<User Key="software\microsoft\office\16.0\common" Name="linkedin" Value="0" Type="REG_DWORD" App="office16" Id="L_AllowLinkedInFeatures" />
<User Key="software\microsoft\office\16.0\common\general" Name="disablecomingsoon" Value="1" Type="REG_DWORD" App="office16" Id="L_DisableComingSoon" />
<User Key="software\microsoft\office\16.0\common" Name="insiderslabbehavior" Value="2" Type="REG_DWORD" App="office16" Id="L_OfficeInsiderUserExperience" />
<User Key="software\microsoft\office\16.0\excel\options" Name="defaultformat" Value="51" Type="REG_DWORD" App="excel16" Id="L_SaveExcelfilesas" />
<User Key="software\microsoft\office\16.0\powerpoint\options" Name="defaultformat" Value="27" Type="REG_DWORD" App="ppt16" Id="L_SavePowerPointfilesas" />
<User Key="software\microsoft\office\16.0\word\options" Name="defaultformat" Value="" Type="REG_SZ" App="word16" Id="L_SaveWordfilesas" />
</AppSettings>
</Configuration>
"@
        }
    )

    #Note - some other Office settings are configured through the Windows Security Baseline.
    Policies           = @(
        ################################ MACHINE SETTINGS ################################
        @{
            Name         = 'Office > Updates > Enable automatic updates'
            Ensure       = 'Present'
            PolicyType   = 'Machine'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\officeupdate\enableautomaticupdates'
            Type         = 'DWord'
            Data         = '1'
        }
        ############################## END MACHINE SETTINGS ##############################

        ################################# USER SETTINGS #################################
        @{
            Name         = 'Excel > Excel Options > Save > Default file format'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\excel\options\defaultformat'
            Type         = 'DWord'
            Data         = '1' #Excel Workbook (*.xlsx)
        }
        @{
            Name         = 'Office > First Run > Disable First Run Movie'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\firstrun\disablemovie'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > First Run > Disable Office First Run on application boot'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\firstrun\bootedrtm'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Global Options > Customize > Allow roaming of all user customizations'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\toolbars\customuiroaming'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Language Preferences > Other > Disable coming soon'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\disablecomingsoon'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Language Preferences > Editing Languages > Primary Editing Language Install'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\languageresources\installlanguage'
            Type         = 'DWord'
            Data         = '2057'
        }
        @{
            Name         = 'Office > Language Preferences > Editing Languages > Primary Editing Language Set'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\languageresources\preferrededitinglanguage'
            Type         = 'String'
            Data         = 'en-GB'
        }
        @{
            Name         = 'Office > Microsoft Save As PDF and XPS add-ins > Disable Microsoft Save As PDF and XPS add-ins'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\fixedformat'
            Type         = 'DWord'
            Data         = '1' #Disable XPS
        }
        @{
            Name         = 'Office > Miscellaneous > Block signing into Office' #Set to Microsoft Account only
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\signin\signinoptions'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Miscellaneous > Hide file locations when opening or saving files'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\internet\onlinestorage'
            Type         = 'DWord'
            Data         = '4' #Hide Local PC
        }
        @{
            Name         = 'Office > Miscellaneous > Suppress recommended settings dialog'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\optindisable'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Miscellaneous > Show the option for Office Insider'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\insiderslabbehavior'
            Type         = 'DWord'
            Data         = '2'
        }
        @{
            Name         = 'Office > Miscellaneous > Show LinkedIn features in Office applications'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\linkedin'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office > Privacy > Trust Center > Automatically receive small updates to improve reliability'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\updatereliabilitydata'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office > Privacy > Trust Center > Configure the level of client software diagnostic data sent by Office to Microsoft'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\common\clienttelemetry\sendtelemetry'
            Type         = 'DWord'
            Data         = '3'
        }
        @{
            Name         = 'Office > Privacy > Trust Center > Disable Opt-in Wizard on first run'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\general\shownfirstrunoptin'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'Office > Privacy > Trust Center > Enable Customer Experience Improvement Program'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\qmenable'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office > Privacy > Trust Center > Send Office Feedback'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\feedback\enabled'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = 'Office > Privacy > Trust Center > Send personal information'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\common\sendcustomerdata'
            Type         = 'DWord'
            Data         = '0'
        }
        @{
            Name         = "Office > What's New > Don't show the What's New information for Excel"
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\excel\dontshowwhatsnew'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = "Office > What's New > Don't show the What's New information for OneNote"
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\onenote\dontshowwhatsnew'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = "Office > What's New > Don't show the What's New information for Outlook"
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\outlook\dontshowwhatsnew'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = "Office > What's New > Don't show the What's New information for PowerPoint"
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\powerpoint\dontshowwhatsnew'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = "Office > What's New > Don't show the What's New information for Word"
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\word\dontshowwhatsnew'
            Type         = 'DWord'
            Data         = '1'
        }
        @{
            Name         = 'PowerPoint > PowerPoint Options > Save > Default file format'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\powerpoint\options\defaultformat'
            Type         = 'DWord'
            Data         = '27' #PowerPoint Presentation (*.pptx)
        }
        @{
            Name         = 'Word > Word Options > Save > Default file format'
            Ensure       = 'Present'
            PolicyType   = 'User'
            KeyValueName = 'SOFTWARE\Policies\Microsoft\office\16.0\word\options\defaultformat'
            Type         = 'String'
            Data         = '' #Word Document (*.docx) 
        }
        ############################### END USER SETTINGS ###############################
    )
}