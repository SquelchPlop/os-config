#Only printers in this list can be installed.  Any printers outside this list will be removed.
$AllowedPrinters = "PRINTER-01 Mono Laser", "PRINTER-02 Colour MFP", "Adobe PDF"

#First printer in this hash table will be set as default.
$Printers = @(
    @{
        Name = "PRINTER-01 Mono Laser";
        HostAddress = "PRINTER-01";
        DriverFile = "\\Files\Software\Repository\_Drivers\Brother Enhanced Generic PCL Driver\1.07\eng\BHPCL5E.INF";
        DriverName="Brother PCL5e Driver";
        Location="Peaslake Close"; 
        Duplex=$True;
        Color=$False;
        PaperSize="A4";
    }
    @{
        Name = "PRINTER-02 Colour MFP";
        HostAddress = "PRINTER-02";
        DriverFile = "\\Files\Software\Repository\_Drivers\HP PW477DW\38.7.1931\hpmaD5114_x64.inf";
        DriverName="HP PageWide Pro 477dw MFP PCL-6";
        Location="Peaslake Close"; 
        Duplex=$True;
        Color=$True;
        PaperSize="A4";
    }
    
)

#Remove surplus printers.
$InstalledPrinters = Get-Printer | select -ExpandProperty Name
$InstalledPrinters | foreach {If(-Not ($AllowedPrinters -contains $_)){ Remove-Printer -Name $_}}

#Install printers from the $Printers hash table, provided they're in the $AllowedPrinters array.
$First=$True
$Printers | ForEach {
    If(($InstalledPrinters -contains $_.Name) -or ($AllowedPrinters -notcontains $_.Name)){} #If already installed or not allowed, skip
    Else{
        Invoke-Command {pnputil.exe /add-driver "$($_.DriverFile)"} | Out-Null #Add driver to repo
        Add-PrinterDriver -Name $_.DriverName
        Add-PrinterPort -Name "$($_.HostAddress) Port" -PrinterHostAddress $_.HostAddress
        Add-Printer -Name $_.Name -PortName "$($_.HostAddress) Port" -DriverName $_.DriverName -Location $_.Location
        If($_.Duplex){
            Get-PrinterProperty    -PrinterName $_.Name -PropertyName "Config:DuplexUnit" -ComputerName $env:COMPUTERNAME -ErrorAction Ignore | Set-PrinterProperty -Value "Installed"
            Set-PrintConfiguration -PrinterName $_.Name -DuplexingMode TwoSidedLongEdge 
        }
        Set-PrintConfiguration -PrinterName $_.Name -Color $_.Color -PaperSize $_.PaperSize
    }
    If($First){
        $First=$False
        $Default = Get-WmiObject -Query "Select * from win32_printer where name='$($_.Name)'"
        $Default.SetDefaultPrinter() | Out-Null
    }
}