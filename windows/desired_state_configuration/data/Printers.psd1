@{  
    Scripts = @(
        @{
            Name       = "setPrinters"
            GetScript  = { }
            TestScript = { return $false } #Always apply in case new printers added
            SetScript  = {
                #Only printers in this list can be installed.  Any printers outside this list will be removed.
                $AllowedPrinters = "PRINTER-01 Mono Laser", "PRINTER-02 Colour MFP", "PRINTER-03 Colour MFP", "Microsoft Print to PDF"

                #To get minimal drivers (incl. INF file), install the manufacturer driver, then find the driver's directory in the driver store, without the crap.
                $Printers = @(
                    @{
                        Name                 = "PRINTER-01 Mono Laser";
                        HostAddress          = "PRINTER-01";
                        DriverInstallCommand = "
                            Invoke-WebRequest https://raw.githubusercontent.com/SquelchPlop/os-config/master/windows/printers/drivers/brother-generic-pcl5e-1.07.zip -OutFile $env:temp\brother.zip 
                            Expand-Archive $env:temp\brother.zip -DestinationPath $env:temp\brother"
                        DriverFile           = "$env:temp\brother\BHPCL5E.INF";
                        DriverName           = "Brother PCL5e Driver";
                        DuplexInstalled      = $True;
                        DefaultDuplex        = $True
                        DefaultColor         = $False;
                        DefaultPaperSize     = "A4";
                    }
                    @{
                        Name                 = "PRINTER-02 Colour MFP";
                        HostAddress          = "PRINTER-02";
                        DriverInstallCommand = "
                            Invoke-WebRequest https://raw.githubusercontent.com/SquelchPlop/os-config/master/windows/printers/drivers/hp-pw477dw-pcl6-8.0.1329.6720.zip -OutFile $env:temp\hppw477.zip
                            Expand-Archive $env:temp\hppw477.zip -DestinationPath $env:temp\hppw477
                        "
                        DriverFile           = "$env:temp\hppw477\hpmaD5114_x64.inf";
                        DriverName           = "HP PageWide Pro 477dw MFP PCL-6";
                        DuplexInstalled      = $True;
                        DefaultDuplex        = $True
                        DefaultColor         = $False;
                        DefaultPaperSize     = "A4";
                    }
                    @{
                        Name                 = "PRINTER-03 Colour MFP";
                        HostAddress          = "PRINTER-03";
                        #DriverInstallCommand = ""
                        #DriverFile           = "$env:temp\hppw477\hpmaD5114_x64.inf";
                        #DriverName           = "HP PageWide Pro 477dw MFP PCL-6";
                        DuplexInstalled      = $True;
                        DefaultDuplex        = $True
                        DefaultColor         = $False;
                        DefaultPaperSize     = "A4";
                    }
                )

                #Remove surplus printers.
                $InstalledPrinters = Get-Printer | Select-Object -ExpandProperty Name
                $InstalledPrinters | ForEach-Object { If (-Not ($AllowedPrinters -contains "$_")) { Remove-Printer -Name "$_" } }

                #Install printers from the $Printers hash table, provided they're in the $AllowedPrinters array.
                $Printers | ForEach-Object {
                    If (($InstalledPrinters -contains $_.Name) -or ($AllowedPrinters -notcontains $_.Name)) {} #If already installed or not allowed, skip
                    Else {
                        Invoke-Expression $_.DriverInstallCommand
                        Invoke-Command { pnputil.exe /add-driver "$($_.DriverFile)" } | Out-Null #Copy driver to driver store
                        Add-PrinterDriver -Name $_.DriverName
                        Add-PrinterPort -Name "$($_.HostAddress) Port" -PrinterHostAddress $_.HostAddress
                        Add-Printer -Name $_.Name -PortName "$($_.HostAddress) Port" -DriverName $_.DriverName
                        If ($_.Duplex) {
                            Get-PrinterProperty    -PrinterName $_.Name -PropertyName "Config:DuplexUnit" -ComputerName $env:COMPUTERNAME -ErrorAction Ignore | Set-PrinterProperty -Value "Installed"
                            If ($_.DefaultDuplex) {
                                Set-PrintConfiguration -PrinterName $_.Name -DuplexingMode TwoSidedLongEdge 
                            }
                        }
                        Set-PrintConfiguration -PrinterName $_.Name -Color $_.DefaultColor -PaperSize $_.DefaultPaperSize
                    }
                }
            }
        }
    )
}