@{
    Files              = @(
        @{
            Name            = "Microsoft Office 16 64-bit UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Microsoft Office 64-bit #16.xml"
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
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2012/SettingsLocationTemplate">
    <Name>Microsoft Office 16 64-bit</Name>
    <ID>Microsoft Office 64-bit #16</ID>
    <Common>
        <Name>Common Settings</Name>
        <ID>common</ID>
        <Version>1</Version>
        <Settings>
            <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars</Path>
                <Name>ScreenTipScheme</Name>
                <Name>ShowKbdShortcuts</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\Common\UserInfo</Path>
                <Name>UserName</Name>
                <Name>UseLocal</Name>
                <Name>UserInitials</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\AutoCorrect</Path>
                <Name>ACOptions</Name>
                <Name>CorrectTwoInitialCapitals</Name>
                <Name>CapitalizeSentence</Name>
                <Name>CapitalizeNamesOfDays</Name>
                <Name>ToggleCapsLock</Name>
                <Name>ReplaceText</Name>
                <Name>MathReplaceText</Name>
                <Name>ACAddIACExcepts</Name>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\Common\Smart Tag\Recognizers</Path>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>IgnoreUpperCase</Name>
                <Name>IgnoreWordsWithNumbers</Name>
                <Name>IgnoreInternetFileAddresses</Name>
                <Name>FlagRepeatedWord</Name>
                <Name>EnforceAccentedUppercase</Name>
                <Name>SuggestFromMainLexOnly</Name>
                <Name>FrenchReform</Name>
                <Name>SpanishUseVoseo</Name>
                <Name>SpanishUseTuteo</Name>
                <Name>SpellCheckingLanguageforAcc_Xl_Prj_Grv</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Options</Path>
                <Name>AccentOnUpper</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\General</Path>
                <Name>SkipOpenAndSaveAsPlace</Name>
                <Name>SkyDriveSignInOption</Name>
                <Name>PasteOptions</Name>
                <Name>ReportAddinCustomUIErrors</Name>
                <Name>AcbControl</Name>
                <Name>AcbST</Name>
                <Name>AcbOn</Name>
                <Name>AcbSysIcon</Name>
                <Name>AcbTips</Name>
                <Name>Signatures</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\LanguageResources</Path>
                <Name>UIFallback</Name>
                <Name>HelpExplicit</Name>
                <Name>HelpFallback</Name>
                <Name>FollowSystemUI</Name>
                <Name>PromptUser</Name>
                <Name>InstallLanguage</Name>
                <Name>OutlookChangeInstallLanguage</Name>
                <Name>WordChangeInstallLanguage</Name>
                <Name>PreviousInstallLanguage</Name>
                <Name>DisableProofingToolsAdvertisement</Name>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\Common\LanguageResources\EnabledEditingLanguages</Path>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\UICaptions</Path>
                <Name>DefaultLanguage</Name>
                <Name>Active</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Gfx</Path>
                <Name>DisableScreenshotAutoHyperlink</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Internet</Path>
                <Name>AllowPNG</Name>
                <Name>DoNotRelyOnCSS</Name>
                <Name>RelyOnVML</Name>
                <Name>SaveNewWebPagesAsWebArchives</Name>
                <Name>DoNotOrganizeInFolder</Name>
                <Name>DoNotUseLongFileNames</Name>
                <Name>DoNotUpdateLinksOnSave</Name>
                <Name>DoNotCheckIfOfficeIsHTMLEditor</Name>
                <Name>AlwaysSaveInDefaultEncoding</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\Internet</Path>
                <Name>HTMLVersion</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Data</Path>
                <Name>Settings</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>*.acl</FileMask>
                <FileMask>MSO0127.acl</FileMask>
                <FileMask>MSO1033.acl</FileMask>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path Recursive="true">Microsoft\Office\16.0</Path>
                <FileMask>RoamingCustom.dic</FileMask>
            </File>
        </Settings>
    </Common>
    <Application>
        <Name>Microsoft Word 2016 (64-bit)</Name>
        <ID>Word</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>WINWORD.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Word</Path>
                <Name>AllowSelectionFloaties</Name>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Options</Path>
                <Name>LivePreview</Name>
                <Name>LiveDrag</Name>
                <Name>AlertIfNotDefault</Name>
                <Name>DisableBootToOfficeStart</Name>
                <Name>ShowHighlight</Name>
                <Name>ShowScreenTips</Name>
                <Name>ShowTabs</Name>
                <Name>ShowSpaces</Name>
                <Name>ShowParaMarks</Name>
                <Name>ShowHiddenText</Name>
                <Name>ShowCondHyphens</Name>
                <Name>ShowAnchors</Name>
                <Name>ShowAllFormatting</Name>
                <Name>IacOn</Name>
                <Name>PlainTextAutoFormat</Name>
                <Name>Factoid</Name>
                <Name>WritingStyle</Name>
                <Name>AutoSpell</Name>
                <Name>AutoGrammar</Name>
                <Name>NoContextSpell</Name>
                <Name>RunGrammar</Name>
                <Name>ShowStats</Name>
                <Name>DefaultFormat</Name>
                <Name>KeepUnsavedChanges</Name>
                <Name>AutosaveInterval</Name>
                <Name>AutoTextDelete</Name>
                <Name>AutoWordSelect</Name>
                <Name>DragAndDropText</Name>
                <Name>CtrlClickHyperlink</Name>
                <Name>AutoCreateCanvas</Name>
                <Name>SmartParagraphSelect</Name>
                <Name>SmartCursoring</Name>
                <Name>InsertForOvertype</Name>
                <Name>PromptUpdateStyle</Name>
                <Name>NormalStyleForList</Name>
                <Name>TrackFormatting</Name>
                <Name>MarkFormatting</Name>
                <Name>DontKeepNonListParaWhenUpdatingStyle</Name>
                <Name>ClickAndType</Name>
                <Name>CompleteDate</Name>
                <Name>CompleteAT</Name>
                <Name>CompleteAC</Name>
                <Name>CompleteCustom</Name>
                <Name>SmartSentenceWordSpacing</Name>
                <Name>SmartParaPaste</Name>
                <Name>SmartTablePaste</Name>
                <Name>SmartStylePaste</Name>
                <Name>FormatPowerpointPaste</Name>
                <Name>FormatExcelPaste</Name>
                <Name>PasteMergeLists</Name>
                <Name>PasteFormattingWithin</Name>
                <Name>PasteFormattingTwoDocumentsNoStyles</Name>
                <Name>PasteFormattingTwoDocumentsWithStyles</Name>
                <Name>PasteFormattingOtherApp</Name>
                <Name>InsPic</Name>
                <Name>InsertFloating</Name>
                <Name>KeepBulletsAndNumbers</Name>
                <Name>InsForPaste</Name>
                <Name>ShowBookmarks</Name>
                <Name>ShowTextBoundaries</Name>
                <Name>VisiDrawCropMarks</Name>
                <Name>ShadeFields</Name>
                <Name>ExpandHeadings</Name>
                <Name>MeasurementUnits</Name>
                <Name>PixelsInDialogs</Name>
                <Name>HorizontalScrollbar</Name>
                <Name>VerticalScrollbar</Name>
                <Name>VerticalRuler</Name>
                <Name>OptimizeCharForLayout</Name>
                <Name>SubPixelPositioning</Name>
                <Name>BackgroundPrint</Name>
                <Name>UpdateFieldsWithTrackedChangesAtPrint</Name>
                <Name>MapStdSizes</Name>
                <Name>PromptSaveNormal</Name>
                <Name>BackgroundSave</Name>
                <Name>ConfirmFileConversion</Name>
                <Name>DontUpdateLinks</Name>
                <Name>AllowOpenInDraftView</Name>
                <Name>Ruler</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Data</Path>
                <Name>Toolbars</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>WordSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\Grammar\MSGrammar\3.1</Path>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\File MRU</Path>
                <Name>Max Display</Name>
                <Name>Quick Access Display</Name>
                <Name>Max Quick Access Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Place MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Internet</Path>
                <Name>DoNotCheckIfWordIsDefaultHTMLEditor</Name>
                <Name>ScreenSize</Name>
                <Name>PixelsPerInch</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\StatusBar</Path>
                <Name>FormattedPage</Name>
                <Name>Section</Name>
                <Name>PageNumber</Name>
                <Name>VerticalPos</Name>
                <Name>Line</Name>
                <Name>Column</Name>
                <Name>WordCount</Name>
                <Name>CoauthorCount</Name>
                <Name>SpellCheck</Name>
                <Name>Language</Name>
                <Name>DigitalSignatures</Name>
                <Name>InformationManagementPolicy</Name>
                <Name>PermissionPolicy</Name>
                <Name>TrackChanges</Name>
                <Name>CapsLock</Name>
                <Name>Overtype</Name>
                <Name>ExtendSelection</Name>
                <Name>MacroRecord</Name>
                <Name>UploadStatus</Name>
                <Name>UpdatesAvailable</Name>
                <Name>ViewShortcuts</Name>
                <Name>ZoomSlider</Name>
                <Name>Zoom</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Templates</Path>
                <FileMask>~`$Normal.dotm</FileMask>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>Word.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Excel 2016 (64-bit)</Name>
        <ID>Excel</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>EXCEL.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Excel</Path>
                <Name>AllowSelectionFloaties</Name>
                <Name>AllowQuickAnalysis</Name>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\Options</Path>
                <Name>LivePreview</Name>
                <Name>Font</Name>
                <Name>DefaultView</Name>
                <Name>DefSheets</Name>
                <Name>AlertIfNotDefault</Name>
                <Name>DisableBootToOfficeStart</Name>
                <Name>Options</Name>
                <Name>Options6</Name>
                <Name>GenerateTableStructRefs</Name>
                <Name>GenerateGetPivotData</Name>
                <Name>AutoHyperlink</Name>
                <Name>AutoExpandListRange</Name>
                <Name>AutoCreateCalcCol</Name>
                <Name>RecognizeSmartTags</Name>
                <Name>DefaultFormat</Name>
                <Name>AutoRecoverEnabled</Name>
                <Name>AutoRecoverTime</Name>
                <Name>KeepUnsavedChanges</Name>
                <Name>Options5</Name>
                <Name>MoveEnterDir</Name>
                <Name>AutoDec</Name>
                <Name>Options3</Name>
                <Name>ExtendList</Name>
                <Name>Options95</Name>
                <Name>FlashFill</Name>
                <Name>AlertForLargeOperations</Name>
                <Name>LargeOperationCellCount</Name>
                <Name>UseSystemSeparators</Name>
                <Name>DecimalSeparator</Name>
                <Name>ThousandsSeparator</Name>
                <Name>CursorVisual</Name>
                <Name>ChartTrackingRefBased</Name>
                <Name>RulerUnit</Name>
                <Name>DefaultSheetR2L</Name>
                <Name>SmartList</Name>
                <Name>A4Letter</Name>
                <Name>PreferExcelDataModel</Name>
                <Name>PivotTableUndoDataModelSize</Name>
                <Name>MenuKey</Name>
                <Name>DeveloperTools</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\Error Checking</Path>
                <Name>BackgroundChecking</Name>
                <Name>IndicatorColorIndex</Name>
                <Name>EvaluateToError</Name>
                <Name>CalculatedColumns</Name>
                <Name>TextDate</Name>
                <Name>NumberAsText</Name>
                <Name>InconsistentFormula</Name>
                <Name>OmittedCells</Name>
                <Name>UnlockedFormulaCells</Name>
                <Name>EmptyCellReferences</Name>
                <Name>DataValidation</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\Common\Smart Tag\Applications\XLMAIN</Path>
                <Name>LabelText</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\File MRU</Path>
                <Name>Max Display</Name>
                <Name>Quick Access Display</Name>
                <Name>Max Quick Access Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\Place MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\Internet</Path>
                <Name>DoNotSaveHiddenData</Name>
                <Name>DoNotLoadPictures</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\StatusBar</Path>
                <Name>CellMode</Name>
                <Name>FlashFillErrors</Name>
                <Name>FlashFillUpdatedCells</Name>
                <Name>DigitalSignatures</Name>
                <Name>InformationManagementPolicy</Name>
                <Name>PermissionPolicy</Name>
                <Name>CapsLock</Name>
                <Name>NumLock</Name>
                <Name>ScrollLock</Name>
                <Name>FixedDecimal</Name>
                <Name>OverType</Name>
                <Name>EndMode</Name>
                <Name>MacroRecord</Name>
                <Name>SelectionMode</Name>
                <Name>PageNum</Name>
                <Name>Average</Name>
                <Name>CellCount</Name>
                <Name>NumberCount</Name>
                <Name>MinValue</Name>
                <Name>MaxValue</Name>
                <Name>Sum</Name>
                <Name>UploadStatus</Name>
                <Name>ViewShortcuts</Name>
                <Name>ZoomSlider</Name>
                <Name>Zoom</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>Excel.officeUI</FileMask>
                <FileMask>Excel16.customUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Visio 2016 (64-bit)</Name>
        <ID>Visio</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>VISIO.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\Application</Path>
                <Name>ShowMiniToolBar</Name>
                <Name>LivePreview</Name>
                <Name>LivePreviewMasters</Name>
                <Name>DisableBootToOfficeStart</Name>
                <Name>SaveFileFormat</Name>
                <Name>AutoRecovery</Name>
                <Name>AutoRecoveryInterval</Name>
                <Name>PromptForSummaryInfo</Name>
                <Name>LiveMouseDynamics</Name>
                <Name>AllowShapeSplitting</Name>
                <Name>DeleteConnectorsEnabled</Name>
                <Name>EnableAutoConnect</Name>
                <Name>TransitionsEnabled</Name>
                <Name>AreaSelection</Name>
                <Name>HandleBehavior</Name>
                <Name>FormulaAutoComplete</Name>
                <Name>TextAutoZoomFontSize</Name>
                <Name>LineTolerance</Name>
                <Name>CubicTolerance</Name>
                <Name>InkToolSpeed</Name>
                <Name>ShowSmartTags</Name>
                <Name>TipsStencil</Name>
                <Name>TipsDrawing</Name>
                <Name>TipsShapeSheet</Name>
                <Name>TipsRulers</Name>
                <Name>TipsDialogs</Name>
                <Name>MasterTextWidth</Name>
                <Name>MasterTextHeight</Name>
                <Name>OfferMetricAndUS</Name>
                <Name>ShowXMLSaveWarnings</Name>
                <Name>ShowXMLOpenWarnings</Name>
                <Name>FileConversionMode</Name>
                <Name>SVGExcludeVisioElements</Name>
                <Name>ShowShapeSearchPane</Name>
                <Name>FindShapesAllWords</Name>
                <Name>EventsEnabled</Name>
                <Name>PutAllInRegistry</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\AutoFormat As You Type</Path>
                <Name>SmartQuotes</Name>
                <Name>Fractions</Name>
                <Name>Ordinals</Name>
                <Name>Dashes</Name>
                <Name>Smileys</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>VisioSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\Document</Path>
                <Name>MaxUndo</Name>
                <Name>MeasurementSystem_Text</Name>
                <Name>MeasurementSystem_Angle</Name>
                <Name>MeasurementSystem_Duration</Name>
                <Name>RecycleShapeSheetWindow</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\File MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Visio</Path>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\Toolbars\State</Path>
                <Name>TaskPanes</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\StatusBar</Path>
                <Name>PageNumber</Name>
                <Name>Width</Name>
                <Name>Height</Name>
                <Name>Length</Name>
                <Name>Angle</Name>
                <Name>Language</Name>
                <Name>MacroRecord</Name>
                <Name>UploadStatus</Name>
                <Name>ViewShortcuts</Name>
                <Name>ZoomSlider</Name>
                <Name>Zoom</Name>
                <Name>ZoomToPage</Name>
                <Name>PanAndZoom</Name>
                <Name>SwitchWindows</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>Visio.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft PowerPoint 2016 (64-bit)</Name>
        <ID>PowerPoint</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>POWERPNT.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\PowerPoint</Path>
                <Name>AllowSelectionFloaties</Name>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\Options</Path>
                <Name>LivePreview</Name>
                <Name>AlertIfNotDefault</Name>
                <Name>DisableBootToOfficeStart</Name>
                <Name>SmartQuotes</Name>
                <Name>AFFract</Name>
                <Name>AFOrds</Name>
                <Name>AFSymb</Name>
                <Name>AFSmile</Name>
                <Name>AFLinks</Name>
                <Name>AFLists</Name>
                <Name>AutoFitTextTitle</Name>
                <Name>AutoFitTextBody</Name>
                <Name>SmartTagRecognize</Name>
                <Name>DefaultFormat</Name>
                <Name>SaveAutoRecoveryInfo</Name>
                <Name>FrequencyToSaveAutoRecoveryInfo</Name>
                <Name>KeepUnsavedChanges</Name>
                <Name>ShowCoauthoringMergeChanges</Name>
                <Name>WordSelection</Name>
                <Name>DragAndDrop</Name>
                <Name>Number of Undos</Name>
                <Name>SmartCutPaste</Name>
                <Name>VerticalRuler</Name>
                <Name>DisableSetTopology</Name>
                <Name>UserViewDefaults</Name>
                <Name>SSRightMouse</Name>
                <Name>SSMenuButton</Name>
                <Name>SSPromptToSaveInk</Name>
                <Name>SSEndOnBlankSlide</Name>
                <Name>BackgroundPrint</Name>
                <Name>Send TrueType fonts as bitmaps</Name>
                <Name>Send printer information to OLE servers</Name>
                <Name>PrintHighQualityDefault</Name>
                <Name>PrintMetafileScaling</Name>
                <Name>UseMonMgr</Name>
                <Name>GridVisible</Name>
                <Name>GuidesVisible</Name>
                <Name>ShowSmartGuides</Name>
                <Name>RulersVisible</Name>
                <Name>ChartTrackingRefBased</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\AutoCorrect</Path>
                <Name>CapTable</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>PowerPointSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\File MRU</Path>
                <Name>Max Display</Name>
                <Name>Max Quick Access Display</Name>
                <Name>Quick Access Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\Place MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\StatusBar</Path>
                <Name>ViewIndicator</Name>
                <Name>DesignName</Name>
                <Name>CoauthorCount</Name>
                <Name>SpellCheck</Name>
                <Name>Language</Name>
                <Name>DigitalSignatures</Name>
                <Name>InformationManagementPolicy</Name>
                <Name>PermissionPolicy</Name>
                <Name>UploadStatus</Name>
                <Name>UpdatesAvailable</Name>
                <Name>Comments</Name>
                <Name>ViewShortcuts</Name>
                <Name>ZoomSlider</Name>
                <Name>Zoom</Name>
                <Name>ZoomToFit</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>PowerPoint.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Access 2016 (64-bit)</Name>
        <ID>Access</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>MSACCESS.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Access\Settings</Path>
                <Name>LivePreview</Name>
                <Name>Default File Format</Name>
                <Name>New Database Sort Order</Name>
                <Name>Default Gridlines Horizontal</Name>
                <Name>Default Gridlines Vertical</Name>
                <Name>Default Cell Effect</Name>
                <Name>Default Column Width</Name>
                <Name>Default Font Size</Name>
                <Name>Default Font Weight</Name>
                <Name>Default Font Underline</Name>
                <Name>Default Font Italic</Name>
                <Name>Default Field Type</Name>
                <Name>Default Text Field Size</Name>
                <Name>Default Number Field Size</Name>
                <Name>AutoIndex on Import/Create</Name>
                <Name>Show Property Update Options buttons</Name>
                <Name>Show Table Names</Name>
                <Name>Output All Fields</Name>
                <Name>Enable AutoJoin</Name>
                <Name>Query Design Font Name</Name>
                <Name>Query Design Font Size</Name>
                <Name>ANSI 92 Default For New Databases</Name>
                <Name>Selection Behavior</Name>
                <Name>Form Template</Name>
                <Name>Report Template</Name>
                <Name>Always Use Event Procedures</Name>
                <Name>Enable Error Checking</Name>
                <Name>Unassociated Label and Control Error Checking</Name>
                <Name>New Unassociated Label Error Checking</Name>
                <Name>Keyboard Shortcut Errors Error Checking</Name>
                <Name>Invalid Control Source Error Checking</Name>
                <Name>Common Report Errors Error Checking</Name>
                <Name>Error Checking Indicator Color</Name>
                <Name>Move After Enter</Name>
                <Name>Behavior Entering Field</Name>
                <Name>Arrow Key Behavior</Name>
                <Name>Cursor Stops at First/Last Field</Name>
                <Name>Default Find/Replace Behavior</Name>
                <Name>Confirm Record Changes</Name>
                <Name>Confirm Document Deletions</Name>
                <Name>Confirm Action Queries</Name>
                <Name>New Tables/Queries/Forms/Reports</Name>
                <Name>General Alignment</Name>
                <Name>Cursor</Name>
                <Name>Show Status Bar</Name>
                <Name>Show Animations</Name>
                <Name>Show Smart Tags on Datasheets</Name>
                <Name>Show Smart Tags on Forms</Name>
                <Name>Left Margin</Name>
                <Name>Right Margin</Name>
                <Name>Top Margin</Name>
                <Name>Bottom Margin</Name>
                <Name>Four-Digit Year Formatting All Databases</Name>
                <Name>LoadLast</Name>
                <Name>Default Open Mode for Databases</Name>
                <Name>Default Record Locking</Name>
                <Name>Use Row Level Locking</Name>
                <Name>Refresh Interval (sec)</Name>
                <Name>Number of Update Retries</Name>
                <Name>ODBC Refresh Interval (sec)</Name>
                <Name>Update Retry Interval (msec)</Name>
                <Name>Ignore DDE Requests</Name>
                <Name>Enable DDE Refresh</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Access\File MRU</Path>
                <Name>Max Display</Name>
                <Name>Quick Access Display</Name>
                <Name>Max Quick Access Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Access\Place MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Access\Settings</Path>
                <Name>OLE/DDE Timeout (sec)</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Access\Security\Crypto</Path>
                <Name>CompatMode</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Access</Path>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>Access.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Outlook 2016 (64-bit)</Name>
        <ID>Outlook</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>OUTLOOK.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Outlook</Path>
                <Name>AllowSelectionFloaties</Name>
                <Name>QuickAccessToolbarStyleExplorer</Name>
                <Name>QuickAccessToolbarStyleMail</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\MailSettings</Path>
                <Name>EnableLivePreview</Name>
                <Name>NewTheme</Name>
                <Name>ThemeFont</Name>
                <Name>ComposeFontComplex</Name>
                <Name>ComposeFontSimple</Name>
                <Name>ReplyFontComplex</Name>
                <Name>ReplyFontSimple</Name>
                <Name>MarkComments</Name>
                <Name>MarkCommentsWith</Name>
                <Name>TextFontComplex</Name>
                <Name>TextFontSimple</Name>
                <Name>AutosaveTime</Name>
                <Name>CheckForgottenAttachments</Name>
                <Name>UseCSSInHTML</Name>
                <Name>FilterHTMLOnSend</Name>
                <Name>PlainWrapLen</Name>
                <Name>ShadeReadingHeaders</Name>
                <Name>NewSignature</Name>
                <Name>ReplySignature</Name>
                <Name>DisableSignatures</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\General</Path>
                <Name>Check Default Client</Name>
                <Name>SingleKeyReading</Name>
                <Name>SAVE_LOC</Name>
                <Name>MSGFormat</Name>
                <Name>NumDaysExpire</Name>
                <Name>AutoProcRcpts</Name>
                <Name>LastUILang</Name>
                <Name>DisableIDN</Name>
                <Name>WarnDelete</Name>
                <Name>GroupExpandAnimations</Name>
                <Name>PONT_STRING</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Options</Path>
                <Name>WordMailACOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Data</Path>
                <Name>SettingsWordMail</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Options\WordMail</Path>
                <Name>IacOn</Name>
                <Name>PlainTextAutoFormat</Name>
                <Name>Factoid</Name>
                <Name>AccentOnUpper</Name>
                <Name>AutoSpell</Name>
                <Name>AutoGrammar</Name>
                <Name>RunGrammar</Name>
                <Name>NoContextSpell</Name>
                <Name>ShowStats</Name>
                <Name>WritingStyle</Name>
                <Name>AutoTextDelete</Name>
                <Name>AutoWordSelect</Name>
                <Name>DragAndDropText</Name>
                <Name>CtrlClickHyperlink</Name>
                <Name>AutoCreateCanvas</Name>
                <Name>SmartParagraphSelect</Name>
                <Name>SmartCursoring</Name>
                <Name>InsertForOvertype</Name>
                <Name>PromptUpdateStyle</Name>
                <Name>NormalStyleForList</Name>
                <Name>TrackFormatting</Name>
                <Name>MarkFormatting</Name>
                <Name>DontKeepNonListParaWhenUpdatingStyle</Name>
                <Name>ClickAndType</Name>
                <Name>CompleteDate</Name>
                <Name>CompleteAT</Name>
                <Name>CompleteAC</Name>
                <Name>CompleteCustom</Name>
                <Name>ACOptions</Name>
                <Name>SmartSentenceWordSpacing</Name>
                <Name>SmartParaPaste</Name>
                <Name>SmartTablePaste</Name>
                <Name>SmartStylePaste</Name>
                <Name>FormatPowerpointPaste</Name>
                <Name>FormatExcelPaste</Name>
                <Name>PasteMergeLists</Name>
                <Name>PasteFormattingWithin</Name>
                <Name>PasteFormattingTwoDocumentsNoStyles</Name>
                <Name>PasteFormattingTwoDocumentsWithStyles</Name>
                <Name>PasteFormattingOtherApp</Name>
                <Name>InsPic</Name>
                <Name>KeepBulletsAndNumbers</Name>
                <Name>InsForPaste</Name>
                <Name>MeasurementUnits</Name>
                <Name>PixelsInDialogs</Name>
                <Name>OptimizeCharForLayout</Name>
                <Name>LiveDrag</Name>
                <Name>SubPixelPositioning</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>OutlookSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Preferences</Path>
                <Name>PreviewMarkMessage</Name>
                <Name>PreviewWaitSeconds</Name>
                <Name>PlaySound</Name>
                <Name>ChangePointer</Name>
                <Name>ShowEnvelope</Name>
                <Name>NewmailDesktopAlerts</Name>
                <Name>NewmailDesktopAlertsDRMPreview</Name>
                <Name>CloseOrig</Name>
                <Name>ReplyStyle</Name>
                <Name>ForwardStyle</Name>
                <Name>SaveReplies</Name>
                <Name>SaveFW</Name>
                <Name>SaveSent</Name>
                <Name>Importance</Name>
                <Name>Sensitivity</Name>
                <Name>AllowCommasInRecip</Name>
                <Name>AutoNameCheck</Name>
                <Name>DeleteWhenRespond</Name>
                <Name>CtrlEnterSends</Name>
                <Name>ShowAutoSug</Name>
                <Name>DeliveryReceipt</Name>
                <Name>MoveReceipts</Name>
                <Name>AfterMove</Name>
                <Name>ApptReminders</Name>
                <Name>NumBigModulesAB</Name>
                <Name>ModuleOrderAB</Name>
                <Name>PreviewDontMarkUntilChange</Name>
                <Name>EmptyTrash</Name>
                <Name>ENMessageFlags</Name>
                <Name>ENMessageHeaders</Name>
                <Name>ABModalWidth</Name>
                <Name>ABModalHeight</Name>
                <Name>ABColWidths</Name>
                <Name>PinMailSizes</Name>
                <Name>PinMail</Name>
                <Name>PinFTree</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\12.0\Outlook\Preferences</Path>
                <Name>PreviewDontMarkUntilChange</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Message</Path>
                <Name>DisableReadingPaneCompose</Name>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\Mail</Path>
                <Name>NewItemsUseDefaultSendingAccount</Name>
                <Name>Receipt Response</Name>
                <Name>Message Plain Format MIME</Name>
                <Name>AutoFormatPlainText</Name>
                <Name>Message RTF Format</Name>
                <Name>DisableInfopathForms</Name>
                <Name>Send Mail Immediately</Name>
                <Name>EnableLogging</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\Conversations</Path>
                <Name>NoKeyboardAutoexpand</Name>
                <Name>ConversationsOnInAllFoldersChangeNumber</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\Calendar</Path>
                <Name>FirstDOW</Name>
                <Name>FirstWOY</Name>
                <Name>AllowPropose</Name>
                <Name>Propose Response Type</Name>
                <Name>Show BothCal</Name>
                <Name>Alter Calendar Type</Name>
                <Name>SendMtgAsICAL</Name>
                <Name>ShowReminderBell</Name>
                <Name>BackgroundColorIndex</Name>
                <Name>UseSameColor</Name>
                <Name>WeekNum</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\WunderBar</Path>
                <Name>EnableAutoSwitchingVerticalToHorizontal</Name>
                <Name>EnableAutoSwitchingHorizontalToVertical</Name>
                <Name>ABCompact</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\TimeZone</Path>
                <Name>ShortName1</Name>
                <Name>SecondaryTZ</Name>
                <Name>ShortName2</Name>
                <Name>TZ2</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Contact</Path>
                <Name>NameParserStyle</Name>
                <Name>FileAsOrder</Name>
                <Name>ConfirmDuplicates</Name>
                <Name>IndexTabsOn</Name>
                <Name>IndexTabsScript</Name>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\IM</Path>
                <Name>TurnOffPresenceIcon</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common</Path>
                <Name>TurnOffPhotograph</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\ToDoBar</Path>
                <Name>ShowPhotoInContactList</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\Tasks</Path>
                <Name>TaskAutoRemind</Name>
                <Name>TaskRemindTime</Name>
                <Name>AddToUpdList</Name>
                <Name>AddToSOCList</Name>
                <Name>OverdueColor</Name>
                <Name>CompleteColor</Name>
                <Name>UnitsPerDay</Name>
                <Name>UnitsPerWeek</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\Flagging</Path>
                <Name>DefaultToDoFlag</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Search</Path>
                <Name>DefaultSearchScope</Name>
                <Name>IncludeDeletedItems</Name>
                <Name>DisableWordwheeling</Name>
                <Name>SearchResultsCap</Name>
                <Name>DisableHitHighlighting</Name>
                <Name>HitHighlightingBackgroundColor</Name>
                <Name>DisableIndexStatePrompt</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\LanguageResources</Path>
                <Name>WordMailChangeInstallLanguage</Name>
                <Name>PreviousUI</Name>
                <Name>UILanguage</Name>
                <Name>HelpLanguage</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared</Path>
                <Name>OfficeUILanguage</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook</Path>
                <Name>LastUILanguage</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Settings</Path>
                <Name>Microsoft Outlook</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\Reminders</Path>
                <Name>Type</Name>
                <Name>PlaySound</Name>
                <Name>WindowPos</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\RSS</Path>
                <Name>RssUpdItemAsNewItem</Name>
                <Name>SyncToSysCFL</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options\MSHTML\International</Path>
                <Name>Autodetect_CodePageOut</Name>
                <Name>Default_CodePageOut</Name>
                <Name>PreferredVCardCP</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Portal\ColleagueImport</Path>
                <Name>Enabled</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Options</Path>
                <Name>DeveloperTools</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\StatusBar</Path>
                <Name>QuotaThermometer</Name>
                <Name>Filter</Name>
                <Name>ItemCount</Name>
                <Name>HeaderCount</Name>
                <Name>UnreadCount</Name>
                <Name>Reminder</Name>
                <Name>ViewShortcuts</Name>
                <Name>Zoom</Name>
                <Name>ZoomSlider</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Appointment</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Appointment Response</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Appointment Request</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\2380</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Task</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Note</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Folder Finder</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\4213</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\DistList</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Report</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Office Finder</Path>
                <Name>Frame</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\Outlook\SocialConnector</Path>
                <Name>PeoplePaneCurrentModeExplorer</Name>
                <Name>PeoplePaneCurrentModeInspector</Name>
                <Name>PeoplePaneModeExplorer</Name>
                <Name>PeoplePaneExplorerHeight</Name>
                <Name>PeoplePaneModeInspector</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Setup</Path>
                <Name>UpgradeToConversations</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path Recursive="true">Microsoft\Signatures</Path>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>olkexplorer.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft SharePoint Designer 2016 (64-bit)</Name>
        <ID>SharePointDesigner</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>SPDESIGN.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\Settings</Path>
                <Name>OpenLastWeb</Name>
                <Name>StatusBarEnabled</Name>
                <Name>WarnStalePageDepend</Name>
                <Name>WarnStaleIndex</Name>
                <Name>ShowCatalogLists</Name>
                <Name>UseHttpCompression</Name>
                <Name>WebCacheEnabled</Name>
                <Name>WebPrefetchEnabled</Name>
                <Name>CSOptions</Name>
                <Name>EnableLivePreview</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer</Path>
                <Name>DoNotCheckIfIsDefaultHTMLEditor</Name>
                <Name>EditHtmlWithGeneratingEditor</Name>
                <Name>DefaultProofLangId</Name>
                <Name>Code View Options</Name>
                <Name>Flags</Name>
                <Name>ShowAltTextPrompt</Name>
                <Name>New Page Type</Name>
                <Name>New WSS Page Type</Name>
                <Name>FontFamilies</Name>
                <Name>DefaultWorkflowDesigner</Name>
                <Name>AutoSave for Preview</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>SharePointDesignerSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\AutoThumbnail</Path>
                <Name>Chisel</Name>
                <Name>Size</Name>
                <Name>Border</Name>
                <Name>BorderSize</Name>
                <Name>Type</Name>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\SharePoint Designer\Charsets</Path>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\SharePoint Designer\HTML</Path>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\SharePoint Designer\CSS</Path>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\CSS Preferences</Path>
                <Name>Manual DTP</Name>
                <Name>Page</Name>
                <Name>Text</Name>
                <Name>Background</Name>
                <Name>Borders and background</Name>
                <Name>Margins and padding</Name>
                <Name>Floating and positioning</Name>
                <Name>Bullets and numbering</Name>
                <Name>Reuse only generated CSS</Name>
                <Name>Use HTML attributes for images</Name>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\SharePoint Designer\HTML View</Path>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\Restrictions</Path>
                <Name>DefaultDoctype</Name>
                <Name>HTMLSchemaPath</Name>
                <Name>CSSSchemaPath</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\Ruler And Grid</Path>
                <Name>GridSpacing</Name>
                <Name>GridLine</Name>
                <Name>GridColor</Name>
                <Name>SnapDistance</Name>
                <Name>Unit</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\SharePoint Designer</Path>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\Preview in Browser</Path>
                <Name>IExplore</Name>
                <Name>Sizes</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\SharePoint Designer\Preview in Browser\BrowserMRU</Path>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\SharePoint Designer\Snippets</Path>
                <FileMask>SnippetsCustom.xml</FileMask>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>spdesign.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Project 2016 (64-bit)</Name>
        <ID>Project</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>WINPROJ.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\View</Path>
                <Name>Show Tooltips</Name>
                <Name>Date Format</Name>
                <Name>Calendar Type</Name>
                <Name>Show Entry Bar</Name>
                <Name>Show Status Bar</Name>
                <Name>Show Windows In Taskbar</Name>
                <Name>Automatically Add Items To The Global</Name>
                <Name>Show Project Summary</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\View\en-US</Path>
                <Name>Default View</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\General</Path>
                <Name>User Name</Name>
                <Name>Is User Name Set</Name>
                <Name>DisableBootToOfficeStart</Name>
                <Name>Set AutoFilter On for New Projects</Name>
                <Name>Ask for Summary Info at New</Name>
                <Name>Start With Last File</Name>
                <Name>UndoLevels</Name>
                <Name>Auto Add Resources</Name>
                <Name>Std. Rate</Name>
                <Name>Ovt. Rate</Name>
                <Name>Maximized</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Interface</Path>
                <Name>ResourceAssignOOUI</Name>
                <Name>ChangeDurationOOUI</Name>
                <Name>EnterDateOOUI</Name>
                <Name>DeleteNameOOUI</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Calendar</Path>
                <Name>Start Week Day</Name>
                <Name>Fiscal Year Starts In</Name>
                <Name>Use Starting Year for FY Numbering</Name>
                <Name>Default Start Time</Name>
                <Name>Default End Time</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Calendar\Default Hours</Path>
                <Name>Day</Name>
                <Name>Week</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Calendar\Default Days</Path>
                <Name>Month</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Scheduling</Path>
                <Name>Schedule Messages</Name>
                <Name>Show Assignment Units As a:</Name>
                <Name>NewTasksAreManuallyScheduled</Name>
                <Name>New Tasks Start on Current Date</Name>
                <Name>Default Duration Units</Name>
                <Name>Default Work Units</Name>
                <Name>Default Task Type</Name>
                <Name>New Tasks Effort Driven</Name>
                <Name>Edit with Auto Link</Name>
                <Name>Auto Split Tasks</Name>
                <Name>UpdateManuallyScheduledTasksWhenEditingLinks</Name>
                <Name>HonorConstraints</Name>
                <Name>Show Estimated Durations</Name>
                <Name>New Tasks Have Estimated Durations</Name>
                <Name>KeepTaskOnNearestWorkingTimeWhenMadeAutoScheduled</Name>
                <Name>ShowTaskWarnings</Name>
                <Name>ShowTaskSuggestions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Calculation</Path>
                <Name>Auto Calc</Name>
                <Name>Auto Track Resources</Name>
                <Name>Inserted projects are calculated like summary tasks</Name>
                <Name>Actual costs are always calculated by Microsoft Project</Name>
                <Name>Edits to total actual cost will be spread to the status date</Name>
                <Name>Default Fixed Costs Accrual</Name>
                <Name>EVMethod</Name>
                <Name>EVBaseline</Name>
                <Name>MoveCompleted</Name>
                <Name>AndMoveCompleted</Name>
                <Name>MoveRemaining</Name>
                <Name>AndMoveRemaining</Name>
                <Name>Edits to total task %Complete will be spread to the status date</Name>
                <Name>Calculate Multiple Critical Paths</Name>
                <Name>Show As Critical if Slack</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Spelling</Path>
                <Name>Spelling Options</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Save</Path>
                <Name>DefaultSaveFormat</Name>
                <Name>AutomaticSaveInterval</Name>
                <Name>AutomaticSave</Name>
                <Name>AutomaticSaveOption</Name>
                <Name>AutomaticSavePrompt</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\PlanningWizard</Path>
                <Name>Display PlanningWizard</Name>
                <Name>Usage Advice</Name>
                <Name>PlanningWizard Cases</Name>
                <Name>Scheduling Advice</Name>
                <Name>Error Advice</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Edit</Path>
                <Name>Drag And Drop</Name>
                <Name>EnterMove</Name>
                <Name>Prompt for Update Links</Name>
                <Name>InCellEdit</Name>
                <Name>MinuteLabelDisplay</Name>
                <Name>HourLabelDisplay</Name>
                <Name>DayLabelDisplay</Name>
                <Name>WeekLabelDisplay</Name>
                <Name>MonthLabelDisplay</Name>
                <Name>YearLabelDisplay</Name>
                <Name>SpaceBeforeTimeLabel</Name>
                <Name>WebUnderlineHyperlinks</Name>
                <Name>WebNotFollowedColor</Name>
                <Name>WebFollowedColor</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\File MRU</Path>
                <Name>Max Display</Name>
                <Name>Max Quick Access Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Place MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Settings</Path>
                <Name>DeveloperTools</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Project</Path>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\StatusData</Path>
                <Name>CellMode</Name>
                <Name>CalculateMode</Name>
                <Name>Macro</Name>
                <Name>FilterMode</Name>
                <Name>AutoFilterMode</Name>
                <Name>RSVRollup</Name>
                <Name>PreventOverallocation</Name>
                <Name>TaskModeBalloon</Name>
                <Name>TaskMode</Name>
                <Name>ViewShortcuts</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\MS Project\16\1033</Path>
                <FileMask>Global.MPT</FileMask>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>MSProject.officeUI</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Publisher 2016 (64-bit)</Name>
        <ID>Publisher</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>MSPUB.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\Publisher\BusinessInfo\</Path>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\Publisher</Path>
                <Name>AllowSelectionFloaties</Name>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Publisher\Preferences</Path>
                <Name>LivePreview</Name>
                <Name>UseStartupDlg</Name>
                <Name>SmartQuotes</Name>
                <Name>PerformEmDash</Name>
                <Name>AutoRecoverSave</Name>
                <Name>AutoRecoverSaveInterval</Name>
                <Name>BackgroundSave</Name>
                <Name>AutoWordSel</Name>
                <Name>AutoWordFormat</Name>
                <Name>TextDragNDrop</Name>
                <Name>PromptToUpdateStyle</Name>
                <Name>UseFontLinking</Name>
                <Name>AutoKeybd</Name>
                <Name>DefAutoHyph</Name>
                <Name>HotZone</Name>
                <Name>UseNudgeAmount</Name>
                <Name>NudgeAmt</Name>
                <Name>ShowObjectToolTips</Name>
                <Name>UseLegacyDrag</Name>
                <Name>EnableXPSPrintPathPrinting</Name>
                <Name>DeveloperTools</Name>
                <Name>ShowMergeFieldUnderline</Name>
                <Name>ShowRulers</Name>
                <Name>SnapToGuides</Name>
                <Name>SnapToObjects</Name>
                <Name>PageNavCompactMode</Name>
                <Name>WindowWasMaximized</Name>
                <Name>OptionsDlgSizePos</Name>
                <Name>PageCount</Name>
                <Name>CapsLock</Name>
                <Name>Measurements</Name>
                <Name>ViewMode</Name>
                <Name>ZoomToFit</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\AutoCorrect</Path>
                <Name>Iac</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Publisher\Spelling</Path>
                <Name>SuggestFromUserDict</Name>
                <Name>Background Spell Checking</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>PublisherSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Publisher\File MRU</Path>
                <Name>Max Display</Name>
                <Name>Max Quick Access Display</Name>
                <Name>Quick Access Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Publisher\Place MRU</Path>
                <Name>Max Display</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Publisher\Internet</Path>
                <Name>IncrementalUpload</Name>
                <Name>EmailAsImg</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Internet</Path>
                <Name>Encoding</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>Publisher.officeUI</FileMask>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Publisher</Path>
                <FileMask>pubcmd16.dat</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft OneNote 2016 (64-bit)</Name>
        <ID>OneNote</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>ONENOTE.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Toolbars\OneNote</Path>
                <Name>AllowSelectionFloaties</Name>
                <Name>QuickAccessToolbarStyle</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Editing</Path>
                <Name>DefaultFontFace</Name>
                <Name>DefaultFontSize</Name>
                <Name>PasteIncludeURL</Name>
                <Name>Numbering Auto Reco</Name>
                <Name>Bullet Auto Reco</Name>
                <Name>AutoCalculate</Name>
                <Name>WikiLink</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Other</Path>
                <Name>RunSystemTrayApp</Name>
                <Name>PageTabsOnLeft</Name>
                <Name>ShowNewPageFloatie</Name>
                <Name>NavBarOnLeft</Name>
                <Name>VertScrollBarOnLeft</Name>
                <Name>ShowNoteContainers</Name>
                <Name>DisableScreenClippingBalloon</Name>
                <Name>EnableAudioSearch</Name>
                <Name>PasteOoui</Name>
                <Name>EMailSignature</Name>
                <Name>Signature</Name>
                <Name>DuplicateNoteFlag</Name>
                <Name>ShowInactiveNoteFlag</Name>
                <Name>DisableOCR</Name>
                <Name>SplitLargePrintoutPages</Name>
                <Name>MeasurementUnit</Name>
                <Name>RuleLinesDefault</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Pen</Path>
                <Name>UseRuleLines</Name>
                <Name>DisableScratchOut</Name>
                <Name>AutoModeSwitch</Name>
                <Name>LastUsedEraser</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Side Note</Path>
                <Name>IsDocked</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Shared Tools\Proofing Tools\1.0\Office</Path>
                <Name>OneNoteSpellingOptions</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Save</Path>
                <Name>BackupEnableAutoBackup</Name>
                <Name>BackupRunEveryXMinutes</Name>
                <Name>BackupSharePointNotebooks</Name>
                <Name>BackupNumberOfBackupsToKeep</Name>
                <Name>PercentFreeSpaceBeforeOptimize</Name>
                <Name>EnableOptimizeSections</Name>
                <Name>OptimizeSectionsIntervalMinutes</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\OutlookAndWeb</Path>
                <Name>OutlookEmailLocation</Name>
                <Name>OutlookMeetingsLocation</Name>
                <Name>OutlookContactsLocation</Name>
                <Name>OutlookTasksLocation</Name>
                <Name>PrintoutsLocation</Name>
                <Name>ScreenClippingsLocation</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Audio</Path>
                <Name>Rewind</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\LinkedNotes</Path>
                <Name>AutoLink</Name>
                <Name>SaveContext</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options</Path>
                <Name>Email Embedded Files</Name>
                <Name>Email Attachment</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Security</Path>
                <Name>LockIdleSections</Name>
                <Name>PasswordTimeout</Name>
                <Name>LockSectionsImmediately</Name>
                <Name>AllowAddinAccessToEncryptedFiles</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>LOCALAPPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Office</Path>
                <FileMask>OneNote.officeUI</FileMask>
            </File>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Templates</Path>
                <FileMask>My Templates.one</FileMask>
                <FileMask>*.one</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Office 2016 Upload Center (64-bit)</Name>
        <ID>UploadCenter</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>MSOUC.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\FileIO</Path>
                <Name>DisableUploadFailureNotification</Name>
                <Name>DisablePendingUploadNotification</Name>
                <Name>DisablePausedUploadNotification</Name>
                <Name>DisableNotificationIcon</Name>
                <Name>AgeOutPolicy</Name>
                <Name>DisableLongTermCaching</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft SkyDrive Pro 2016 (64-bit)</Name>
        <ID>SkyDrivePro</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>GROOVE.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings />
    </Application>
</SettingsLocationTemplate>
"@
        }
        @{
            Name            = "Microsoft Office 16 64-bit Backup UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Microsoft Office 64-bit Backup #16.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>Microsoft Office 16 64-bit Backup</Name>
    <ID>Microsoft Office 64-bit Backup #16</ID>
    <FixedProfile>Backup</FixedProfile>
    <Common>
        <Name>Common Settings</Name>
        <ID>common</ID>
        <Version>1</Version>
        <Settings>
            <PreventOverlappingSynchronization>false</PreventOverlappingSynchronization>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\General</Path>
                <Name>PreferCloudSaveLocations</Name>
                <Name>Sound</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\Common\Offline\Options</Path>
                <Name>Location</Name>
                <Name>UseLocalDrafts</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Graphics</Path>
                <Name>DisableHardwareAcceleration</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common</Path>
                <Name>OverridePointerMode</Name>
            </Registry>
        </Settings>
    </Common>
    <Application>
        <Name>Microsoft Word 2016 Backup (64-bit)</Name>
        <ID>Word</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>WINWORD.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Word\Options</Path>
                <Name>AllowAutoReadingMode</Name>
                <Name>NoMargPageView</Name>
                <Name>AUTOSAVE-PATH</Name>
                <Name>DOC-PATH</Name>
                <Name>PersonalTemplates</Name>
                <Name>ShowBkg</Name>
                <Name>WrapToWwd</Name>
                <Name>ShowPicturePlaceholders</Name>
                <Name>ShowDrawings</Name>
                <Name>ShowFieldValues</Name>
                <Name>DraftFont</Name>
                <Name>UsePrinterFonts</Name>
                <Name>BackupDuringSave</Name>
                <Name>MakeLocalCopy</Name>
                <Name>SoundFeedback</Name>
                <Name>AnimateScreenMove</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Excel 2016 Backup (64-bit)</Name>
        <ID>Excel</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>EXCEL.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Excel\Options</Path>
                <Name>AutoRecoverPath</Name>
                <Name>DefaultPath</Name>
                <Name>PersonalTemplates</Name>
                <Name>ExcelHighQualityModeForGraphics</Name>
                <Name>AltStartup</Name>
                <Name>EnableMTP</Name>
                <Name>DontSupportUndoForLargePivotTables</Name>
                <Name>PivotTableUndoRowThousandCount</Name>
                <Name>DontSupportUndoForLargeDataModels</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common\Internet</Path>
                <Name>ScreenSize</Name>
                <Name>PixelsPerInch</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Visio 2016 Backup (64-bit)</Name>
        <ID>Visio</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>VISIO.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Visio\Application</Path>
                <Name>PersonalTemplates</Name>
                <Name>MyShapesPath</Name>
                <Name>DrawingsPath</Name>
                <Name>TemplatePath</Name>
                <Name>StencilPath</Name>
                <Name>HelpPath</Name>
                <Name>AddonsPath</Name>
                <Name>StartUpPath</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft PowerPoint 2016 Backup (64-bit)</Name>
        <ID>PowerPoint</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>POWERPNT.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Common</Path>
                <Name>UI Theme</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\Options</Path>
                <Name>PathToAutoRecoveryInfo</Name>
                <Name>PersonalTemplates</Name>
                <Name>UseAutoMonSelection</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\RecentFolderList</Path>
                <Name>Default</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\PowerPoint\SlideShow</Path>
                <Name>DisableHardwareAcceleration</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft InfoPath 2016 Backup (64-bit)</Name>
        <ID>InfoPath</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>INFOPATH.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings />
    </Application>
    <Application>
        <Name>Microsoft Access 2016 Backup (64-bit)</Name>
        <ID>Access</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>MSACCESS.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Access\Settings</Path>
                <Name>Default Database Directory</Name>
                <Name>Run Permissions</Name>
                <Name>New Database Theme</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Outlook 2016 Backup (64-bit)</Name>
        <ID>Outlook</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>OUTLOOK.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\Outlook\Addins\</Path>
                <Name>All Add-Ins</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Outlook\Office Explorer</Path>
                <Name>Frame</Name>
            </Registry>
            <File>
                <Root>
                    <EnvironmentVariable>APPDATA</EnvironmentVariable>
                </Root>
                <Path>Microsoft\Outlook</Path>
                <FileMask>Outlook.srs</FileMask>
            </File>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft SharePoint Designer 2016 Backup (64-bit)</Name>
        <ID>SharePointDesigner</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>SPDESIGN.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings />
    </Application>
    <Application>
        <Name>Microsoft Project 2016 Backup (64-bit)</Name>
        <ID>Project</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>WINPROJ.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Options\Save</Path>
                <Name>DefaultProjectsPath</Name>
                <Name>PersonalTemplates</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\MS Project\Settings</Path>
                <Name>CacheSizePerProfile</Name>
                <Name>CacheLocation</Name>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft Publisher 2016 Backup (64-bit)</Name>
        <ID>Publisher</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>MSPUB.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\Publisher\Preferences</Path>
                <Name>PersonalTemplates</Name>
                <Name>WindowSize</Name>
            </Registry>
            <Registry>
                <Path Recursive="true">Software\Microsoft\Office\16.0\Publisher\DisabledAlerts</Path>
            </Registry>
        </Settings>
    </Application>
    <Application>
        <Name>Microsoft OneNote 2016 Backup (64-bit)</Name>
        <ID>OneNote</ID>
        <Version>1</Version>
        <Processes>
            <Process>
                <Filename>ONENOTE.EXE</Filename>
                <Architecture>Win64</Architecture>
                <ProductVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </ProductVersion>
                <FileVersion>
                    <Major Minimum="16" Maximum="16" />
                    <Minor Minimum="0" Maximum="0" />
                </FileVersion>
            </Process>
        </Processes>
        <Settings>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Paths</Path>
                <Name>UnfiledNotesSection</Name>
                <Name>BackupFolderPath</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Save</Path>
                <Name>Last Local Notebook Path</Name>
                <Name>Notebook Root</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\General</Path>
                <Name>CachePath</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\OutlookAndWeb</Path>
                <Name>WebNotesLocation</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Audio</Path>
                <Name>AudioCaptureDevice</Name>
                <Name>AudioCapturePin</Name>
                <Name>AudioCodecFormat</Name>
                <Name>VideoCaptureDevice</Name>
                <Name>VideoCaptureProfile</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Pen</Path>
                <Name>InkPressure</Name>
                <Name>ShowTabletPCInputPanel</Name>
            </Registry>
            <Registry>
                <Path>Software\Microsoft\Office\16.0\OneNote\Options\Other</Path>
                <Name>BatteryLife</Name>
                <Name>Zoom</Name>
            </Registry>
        </Settings>
    </Application>
</SettingsLocationTemplate>            
"@
        }
        @{
            Name            = "Microsoft Outlook 16 Profiles UE-V Template"
            Ensure          = "Present"
            DestinationPath = "C:\ProgramData\UEVTemplates\Microsoft Outlook Profiles #16.xml"
            Force           = $true
            Type            = "File"
            Contents        = @"
<?xml version="1.0" encoding="UTF-8"?>
<SettingsLocationTemplate xmlns="http://schemas.microsoft.com/UserExperienceVirtualization/2013A/SettingsLocationTemplate">
    <Name>Microsoft Outlook 16 Profiles</Name>
    <ID>Microsoft Outlook Profiles #16</ID>
    <Version>1</Version>
    <Author>
        <Name>SquelchPlop</Name>
    </Author>
    <Processes>
        <Process>
            <Filename>OUTLOOK.EXE</Filename>
            <ProductVersion>
                <Major Minimum="16" Maximum="16" />
                <Minor Minimum="0" Maximum="0" />
            </ProductVersion>
            <FileVersion>
                <Major Minimum="16" Maximum="16" />
                <Minor Minimum="0" Maximum="0" />
            </FileVersion>
        </Process>
    </Processes>
    <Settings>
        <Registry>
            <Path>SOFTWARE\Microsoft\Office\16.0\Outlook\PST</Path>
        </Registry>
        <Registry>
            <Path>SOFTWARE\Microsoft\Office\16.0\Outlook</Path>
        </Registry>
        <Registry>
            <Path>SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Mail</Path>
        </Registry>
        <Registry>
            <Path Recursive="true">SOFTWARE\Microsoft\Office\16.0\Outlook\Profiles</Path>
        </Registry>
    </Settings>
</SettingsLocationTemplate>
"@
        }
    )
}