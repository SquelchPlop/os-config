@{  
    Files              = @(
        @{
            Name            = "Windows Desktop Settings UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\OS Desktop Settings #Windows10.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<!--
Modifying the settings location templates for an application or a 
Windows setting group provided with Microsoft User Experience Virtualization 
may cause synchronization for the modified settings to fail. 
For more information about settings location templates please see 
the UE-V product documentation.  http://go.microsoft.com/fwlink/?LinkId=260889
-->
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013/SettingsLocationTemplate">
    <Name>Windows Desktop Settings</Name>
    <ID>OS Desktop Settings #Windows10</ID>
    <LocalizedNames>
        <Name Locale="en-us">Desktop Settings</Name>
        <Name Locale="cs-cz">Nastavení plochy</Name>
        <Name Locale="da-dk">Computerindstillinger</Name>
        <Name Locale="de-de">Desktopeinstellungen</Name>
        <Name Locale="el-gr">Ρυθμίσεις επιφάνειας εργασίας</Name>
        <Name Locale="es-es">configuración del escritorio</Name>
        <Name Locale="fi-fi">työpöydän asetukset</Name>
        <Name Locale="fr-fr">Paramètres de bureau</Name>
        <Name Locale="hu-hu">Asztali beállítások</Name>
        <Name Locale="it-it">Impostazioni desktop</Name>
        <Name Locale="ja-jp">デスクトップ設定</Name>
        <Name Locale="ko-kr">바탕 화면 설정</Name>
        <Name Locale="nb-no">Skrivebordsinnstillinger</Name>
        <Name Locale="nl-nl">Bureaubladinstellingen</Name>
        <Name Locale="pl-pl">Ustawienia pulpitu</Name>
        <Name Locale="pt-br">Configurações de Área de Trabalho</Name>
        <Name Locale="pt-pt">Definições do Ambiente de Trabalho</Name>
        <Name Locale="ru-ru">Параметры рабочего стола</Name>
        <Name Locale="sk-sk">Nastavenie pracovnej plochy</Name>
        <Name Locale="sl-si">Nastavitve namizja</Name>
        <Name Locale="sv-se">Skrivbordsinställningar</Name>
        <Name Locale="tr-tr">Masaüstü Ayarları</Name>
        <Name Locale="zh-cn">桌面设置</Name>
        <Name Locale="zh-tw">桌面設定</Name>
    </LocalizedNames>
    <Version>3</Version>
    <DeferToMSAccount />
    <Processes>
        <ShellProcess />
    </Processes>
    <Settings>
        <!--Desktop Settings-->
        <!--Taskbar Settings -->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>TaskbarSizeMove</Name>
        </Registry>
        <!--Windows Vista - 8 taskbar position -->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="false">Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects2</Path>
            <Name>Settings</Name>
        </Registry>
        <!--Windows 10 taskbar position -->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="false">Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3</Path>
            <Name>Settings</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>TaskbarSmallIcons</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>TaskbarGlomLevel</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>DisablePreviewDesktop</Name>
        </Registry>
        <!--Start Menu Settings-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_PowerButtonAction</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_TrackProgs</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_TrackDocs</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowMyComputer</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowMyGames</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowRun</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowNetConn</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowControlPanel</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowSetProgramAccessAndDefaults</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowPrinters</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowMyDocs</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowDownloads</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_EnableDragDrop</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>StartMenuFavorites</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowHelp</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_NotifyNewApps</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowHomegroup</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowMyMusic</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowNetPlaces</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_AutoCascade</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowUser</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowMyPics</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowRecentDocs</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowRecordedTV</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_SearchFiles</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_SearchPrograms</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_SortByName</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>StartMenuAdminTools</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_LargeMFUIcons</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_ShowVideos</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_JumpListItems</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Start_MinMFU</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Desktop</Path>
            <Name>TaskbarWinXP</Name>
        </Registry>
        <!--Additional Clocks-->
        <Registry>
            <Path Recursive="true">Control Panel\TimeDate</Path>
        </Registry>
        <!--Desktop Icons-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu</Path>
            <Name>{20D04FE0-3AEA-1069-A2D8-08002B30309D}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu</Path>
            <Name>{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu</Path>
            <Name>{59031a47-3f72-44a7-89c5-5595fe6b30ee}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu</Path>
            <Name>{645FF040-5081-101B-9F08-00AA002F954E}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu</Path>
            <Name>{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel</Path>
            <Name>{20D04FE0-3AEA-1069-A2D8-08002B30309D}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel</Path>
            <Name>{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel</Path>
            <Name>{59031a47-3f72-44a7-89c5-5595fe6b30ee}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel</Path>
            <Name>{645FF040-5081-101B-9F08-00AA002F954E}</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel</Path>
            <Name>{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}</Name>
        </Registry>
        <!--Region and Language Settings-->
        <Registry>
            <Path Recursive="true">Control Panel\International</Path>
        </Registry>
        <!--Folder Options Settings-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState</Path>
            <Name>Settings</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer</Path>
            <Name>ShellState</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer</Path>
            <Name>IconUnderline</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>NavPaneShowAllFolders</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>NavPaneExpandToCurrentFolder</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>IconsOnly</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>AlwaysShowMenus</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>ShowTypeOverlay</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>FolderContentsInfoTip</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState</Path>
            <Name>FullPath</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>Hidden</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>HideDrivesWithNoMedia</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>HideFileExt</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>ShowSuperHidden</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>SeparateProcess</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>PersistBrowsers</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer</Path>
            <Name>ShowDriveLettersFirst</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>ShowCompColor</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>ShowInfoTip</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>ShowPreviewHandlers</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>AutoCheckSelect</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>SharingWizardOn</Name>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced</Path>
            <Name>TypeAhead</Name>
        </Registry>
        <Registry>
            <Path Recursive="true" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\Search</Path>
        </Registry>
        <!--App switching / hot corners-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\ImmersiveShell\Switcher</Path>
        </Registry>
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\ImmersiveShell\EdgeUi</Path>
        </Registry>
        <!--Spelling Dictionary-->
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Microsoft\Spelling</Path>
        </File>
        <!--Keyboard-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\TabletTip\1.7</Path>
        </Registry>
        <!--Quiet Hours-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\QuietHours</Path>
        </Registry>
        <!--Boot to Desktop Option-->
        <Registry>
            <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows\CurrentVersion\Explorer\StartPage</Path>
            <Name>OpenAtLogon</Name>
        </Registry>
    </Settings>
</SettingsLocationTemplate>
"@
        }
        @{
            Name            = "Windows Ease of Access Settings UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\OS Ease of Access Settings #Windows10.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<!--
Modifying the settings location templates for an application or a 
Windows setting group provided with Microsoft User Experience Virtualization 
may cause synchronization for the modified settings to fail. 
For more information about settings location templates please see 
the UE-V product documentation.  http://go.microsoft.com/fwlink/?LinkId=260889
-->
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013/SettingsLocationTemplate">
    <!-- Accessibility settings (as defined by the Win32 SystemParameterInfo function) -->
    <Name>Windows Ease of Access Settings</Name>
    <ID>OS Ease of Access Settings #Windows10</ID>
    <LocalizedNames>
        <Name Locale="en-us">Ease of Access Settings</Name>
        <Name Locale="cs-cz">Nastavení usnadnění přístupu</Name>
        <Name Locale="da-dk">Indstillinger for Øget tilgængelighed</Name>
        <Name Locale="de-de">Einstellungen zur erleichterten Bedienung</Name>
        <Name Locale="el-gr">Ρυθμίσεις διευκόλυνσης πρόσβασης</Name>
        <Name Locale="es-es">configuración de accesibilidad</Name>
        <Name Locale="fi-fi">helppokäyttötoimintojen asetukset</Name>
        <Name Locale="fr-fr">Options d'ergonomie</Name>
        <Name Locale="hu-hu">Könnyű kezelési beállítások</Name>
        <Name Locale="it-it">Impostazioni di accessibilità</Name>
        <Name Locale="ja-jp">簡単操作の設定</Name>
        <Name Locale="ko-kr">내게 필요한 옵션 설정</Name>
        <Name Locale="nb-no">Hjelpemiddelsenter</Name>
        <Name Locale="nl-nl">Toegankelijkheidsinstellingen</Name>
        <Name Locale="pl-pl">Ustawienia Ułatwień dostępu</Name>
        <Name Locale="pt-br">Configurações de Facilidade de Acesso</Name>
        <Name Locale="pt-pt">Definições de Facilidade de Acesso</Name>
        <Name Locale="ru-ru">Параметры специальных возможностей</Name>
        <Name Locale="sk-sk">Nastavenie zjednodušenia prístupu</Name>
        <Name Locale="sl-si">Nastavitve središča za dostopnost</Name>
        <Name Locale="sv-se">Hjälpmedelsinställningar</Name>
        <Name Locale="tr-tr">Erişim Kolaylığı Ayarları</Name>
        <Name Locale="zh-cn">轻松访问设置</Name>
        <Name Locale="zh-tw">輕鬆存取設定</Name>
    </LocalizedNames>
    <ManageSuiteOnly>true</ManageSuiteOnly>
    <Common>
        <Name>Common Settings</Name>
        <ID>common</ID>
        <Version>0</Version>
        <DeferToMSAccount />
        <Settings>
            <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
            <Registry>
                <Path Recursive="false" DeleteIfNotFound="true">Software\Microsoft\Windows NT\CurrentVersion\Accessibility</Path>
                <Name>Configuration</Name>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Narrator</Path>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\ScreenMagnifier</Path>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Osk</Path>
            </Registry>
        </Settings>
    </Common>
    <Application>
        <Name>Shell</Name>
        <ID>Shell</ID>
        <Version>0</Version>
        <DeferToMSAccount />
        <Processes>
            <ShellProcess />
        </Processes>
        <Settings>
            <Asynchronous>true</Asynchronous>
            <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
            <SystemParameter>AccessTimeout</SystemParameter>
            <SystemParameter>AudioDescription</SystemParameter>
            <SystemParameter>ClientAreaAnimation</SystemParameter>
            <SystemParameter>DisableOverlappedContent</SystemParameter>
            <SystemParameter>FilterKeys</SystemParameter>
            <SystemParameter>FocusBorderHeight</SystemParameter>
            <SystemParameter>FocusBorderWidth</SystemParameter>
            <SystemParameter>HighContrast</SystemParameter>
            <SystemParameter>MessageDuration</SystemParameter>
            <SystemParameter>MouseClickLock</SystemParameter>
            <SystemParameter>MouseClickLockTime</SystemParameter>
            <SystemParameter>MouseKeys</SystemParameter>
            <SystemParameter>MouseSonar</SystemParameter>
            <SystemParameter>MouseVanish</SystemParameter>
            <SystemParameter>ScreenReader</SystemParameter>
            <SystemParameter>ShowSounds</SystemParameter>
            <SystemParameter>SoundSentry</SystemParameter>
            <SystemParameter>StickyKeys</SystemParameter>
            <SystemParameter>ToggleKeys</SystemParameter>
            <SystemParameter>Beep</SystemParameter>
            <SystemParameter>BlockSendInputResets</SystemParameter>
            <SystemParameter>DoubleClickTime</SystemParameter>
            <SystemParameter>DoubleClkHeight</SystemParameter>
            <SystemParameter>DoubleClkWidth</SystemParameter>
            <SystemParameter>KeyboardCues</SystemParameter>
            <SystemParameter>KeyboardDelay</SystemParameter>
            <SystemParameter>KeyboardPref</SystemParameter>
            <SystemParameter>KeyboardSpeed</SystemParameter>
            <SystemParameter>Mouse</SystemParameter>
            <SystemParameter>MouseButtonSwap</SystemParameter>
            <SystemParameter>MouseHoverHeight</SystemParameter>
            <SystemParameter>MouseHoverTime</SystemParameter>
            <SystemParameter>MouseHoverWidth</SystemParameter>
            <SystemParameter>MouseSpeed</SystemParameter>
            <SystemParameter>MouseTrails</SystemParameter>
            <SystemParameter>SnapToDefButton</SystemParameter>
            <SystemParameter>WheelScrollChars</SystemParameter>
            <SystemParameter>WheelScrollLines</SystemParameter>
        </Settings>
    </Application>
    <Application>
        <Name>ATBroker</Name>
        <ID>ATBroker</ID>
        <Version>0</Version>
        <DeferToMSAccount />
        <Processes>
            <Process>
                <Filename>ATBroker.exe</Filename>
            </Process>
        </Processes>
        <Settings />
    </Application>
</SettingsLocationTemplate>            
"@
        }
        @{
            Name            = "Windows Recent UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\OS Recent #Windows10.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013/SettingsLocationTemplate">
    <Name>Windows Recent</Name>
    <ID>OS Recent #Windows10</ID>
    <Version>1</Version>
    <Processes>
        <ShellProcess />
    </Processes>
    <Settings>
        <Asynchronous>true</Asynchronous>
        <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
        <File>
            <Root>
                <EnvironmentVariable>APPDATA</EnvironmentVariable>
            </Root>
            <Path Recursive="true">Microsoft\Windows\Recent</Path>
        </File>
    </Settings>
</SettingsLocationTemplate>
"@
        }
#         @{
#             Name            = "Windows Roaming Credential Settings UE-V Template"
#             Ensure          = "Present"
#             DestinationPath = "C:\ProgramData\UEVTemplates\OS Roaming Credential Settings #Windows10.xml"
#             Force           = $true
#             Type            = "File"
#             Contents        = @"
# <?xml version="1.0" encoding="UTF-8"?>
# <!--
# Modifying the settings location templates for an application or a 
# Windows setting group provided with Microsoft User Experience Virtualization 
# may cause synchronization for the modified settings to fail. 
# For more information about settings location templates please see 
# the UE-V product documentation.  http://go.microsoft.com/fwlink/?LinkId=260889
# -->
# <SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013/SettingsLocationTemplate">
#     <!-- Roaming Credential settings -->
#     <Name>Windows Roaming Credential Settings</Name>
#     <ID>OS Roaming Credential Settings #Windows10</ID>
#     <LocalizedNames>
#         <Name Locale="en-us">Roaming Credential Settings</Name>
#         <Name Locale="cs-cz">Nastavení cestovních přihlašovacích údajů</Name>
#         <Name Locale="da-dk">Indstillinger for roaminglegitimationsoplysninger</Name>
#         <Name Locale="de-de">Einstellungen für servergespeicherte Anmeldeinformationen</Name>
#         <Name Locale="el-gr">Ρυθμίσεις διαπιστευτηρίων περιαγωγής</Name>
#         <Name Locale="es-es">Configuración de credenciales móviles</Name>
#         <Name Locale="fi-fi">Verkkovierailutunnistetietojen asetukset</Name>
#         <Name Locale="fr-fr">Paramètres d’informations d’identification itinerants</Name>
#         <Name Locale="hu-hu">Hordozható hitelesítőadat-beállítások</Name>
#         <Name Locale="it-it">Impostazioni per le credenziali di roaming</Name>
#         <Name Locale="ja-jp">移動資格情報の設定</Name>
#         <Name Locale="ko-kr">로밍 자격 증명 설정</Name>
#         <Name Locale="nb-no">Innstillinger for sentrallegitimasjon</Name>
#         <Name Locale="nl-nl">Referentie-instellingen voor roaming</Name>
#         <Name Locale="pl-pl">Ustawienia poświadczeń mobilnych</Name>
#         <Name Locale="pt-br">Configurações de Credenciais de Roaming</Name>
#         <Name Locale="pt-pt">Definições de Credencial de Roaming</Name>
#         <Name Locale="ru-ru">Параметры перемещаемых учетных данных</Name>
#         <Name Locale="sk-sk">Nastavenia zdieľania poverení</Name>
#         <Name Locale="sl-si">Nastavitve poverilnic za gostovanje</Name>
#         <Name Locale="sv-se">Autentiseringsinställningar för nätverksväxling</Name>
#         <Name Locale="tr-tr">Dolaşım Kimlik Bilgileri Ayarları</Name>
#         <Name Locale="zh-cn">漫游凭据设置</Name>
#         <Name Locale="zh-tw">漫遊認證設定</Name>
#     </LocalizedNames>
#     <Version>0</Version>
#     <DeferToMSAccount />
#     <Processes>
#         <ShellProcess />
#     </Processes>
#     <Settings>
#         <File>
#             <Root>
#                 <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
#             </Root>
#             <Path Recursive="true">AppData\Local\Microsoft\Credentials</Path>
#         </File>
#         <File>
#             <Root>
#                 <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
#             </Root>
#             <Path Recursive="true">AppData\Roaming\Microsoft\Credentials</Path>
#         </File>
#         <File>
#             <Root>
#                 <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
#             </Root>
#             <Path Recursive="true">AppData\Roaming\Microsoft\Crypto</Path>
#         </File>
#         <File>
#             <Root>
#                 <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
#             </Root>
#             <Path Recursive="true">AppData\Roaming\Microsoft\Protect</Path>
#         </File>
#         <File>
#             <Root>
#                 <EnvironmentVariable>USERPROFILE</EnvironmentVariable>
#             </Root>
#             <Path Recursive="true">AppData\Roaming\Microsoft\SystemCertificates</Path>
#         </File>
#     </Settings>
# </SettingsLocationTemplate>
# "@
#         }
        @{
            Name            = "Windows Startup Applications UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\OS Startup Applications #Windows10.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<!--
Modifying the settings location templates for an application or a 
Windows setting group provided with Microsoft User Experience Virtualization 
may cause synchronization for the modified settings to fail. 
For more information about settings location templates please see 
the UE-V product documentation.  http://go.microsoft.com/fwlink/?LinkId=260889
-->
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013/SettingsLocationTemplate">
    <Name>Windows Startup Applications</Name>
    <ID>OS Startup Applications #Windows10</ID>
    <Version>0</Version>
    <Processes>
        <ShellProcess />
    </Processes>
    <Settings>
        <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
        <Registry>
            <Path Recursive="true">Software\Microsoft\Windows\CurrentVersion\Run</Path>
        </Registry>
    </Settings>
</SettingsLocationTemplate>
"@
        }
        @{
            Name            = "Windows Theme Settings UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\OS Theme Settings #Windows10.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<!--
Modifying the settings location templates for an application or a 
Windows setting group provided with Microsoft User Experience Virtualization 
may cause synchronization for the modified settings to fail. 
For more information about settings location templates please see 
the UE-V product documentation.  http://go.microsoft.com/fwlink/?LinkId=260889
-->
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013/SettingsLocationTemplate">
    <!-- Theme settings -->
    <Name>Windows Theme Settings</Name>
    <ID>OS Theme Settings #Windows10</ID>
    <LocalizedNames>
        <Name Locale="en-us">Theme Settings</Name>
        <Name Locale="cs-cz">Nastavení motivu</Name>
        <Name Locale="da-dk">Temaindstillinger</Name>
        <Name Locale="de-de">Designeinstellungen</Name>
        <Name Locale="el-gr">Ρυθμίσεις θέματος</Name>
        <Name Locale="es-es">configuración de temas</Name>
        <Name Locale="fi-fi">teeman asetukset</Name>
        <Name Locale="fr-fr">Paramètres de thème</Name>
        <Name Locale="hu-hu">Témák beállításai</Name>
        <Name Locale="it-it">Impostazioni del tema</Name>
        <Name Locale="ja-jp">テーマ設定</Name>
        <Name Locale="ko-kr">테마 설정</Name>
        <Name Locale="nb-no">Temainnstillinger</Name>
        <Name Locale="nl-nl">Thema-instellingen</Name>
        <Name Locale="pl-pl">Ustawienia kompozycji</Name>
        <Name Locale="pt-br">Configurações de Tema</Name>
        <Name Locale="pt-pt">Definições de Temas</Name>
        <Name Locale="ru-ru">Параметры темы</Name>
        <Name Locale="sk-sk">Nastavenie motívu</Name>
        <Name Locale="sl-si">Nastavitve teme</Name>
        <Name Locale="sv-se">Temainställningar</Name>
        <Name Locale="tr-tr">Tema Ayarları</Name>
        <Name Locale="zh-cn">主题设置</Name>
        <Name Locale="zh-tw">佈景主題設定</Name>
    </LocalizedNames>
    <Version>2</Version>
    <DeferToMSAccount />
    <Processes>
        <ShellProcess />
    </Processes>
    <Settings>
        <Asynchronous>true</Asynchronous>
        <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
        <Registry>
            <Path Recursive="false">Control Panel\Colors</Path>
            <Name>Background</Name>
        </Registry>
        <Registry>
            <Path Recursive="false">Control Panel\Desktop</Path>
            <Name>WallpaperStyle</Name>
            <Name>TileWallpaper</Name>
        </Registry>
        <Registry>
            <Path Recursive="true">SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize</Path>
        </Registry>
        <SystemParameter>DeskWallpaper</SystemParameter>
        <SystemParameter>DesktopColor</SystemParameter>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}