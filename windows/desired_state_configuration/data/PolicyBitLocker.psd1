#Note - some other BitLocker settings are configured through the Windows Security Baseline.
@{Policies = @(
    ################################ MACHINE SETTINGS ################################
    @{
        Name         = 'Windows > Windows Components > BitLocker Drive Encryption > Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later) (set OS drive)'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\FVE\EncryptionMethodWithXtsOs'
        Type         = 'DWord'
        Data         = '7' #XTS-AES 256-bit
    }
    @{
        Name         = 'Windows > Windows Components > BitLocker Drive Encryption > Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later) (set fixed data-drives)'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\FVE\EncryptionMethodWithXtsFdv'
        Type         = 'DWord'
        Data         = '7' #XTS-AES 256-bit
    }
    @{
        Name         = 'Windows > Windows Components > BitLocker Drive Encryption > Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later) (set removable data-drives)'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\FVE\EncryptionMethodWithXtsRdv'
        Type         = 'DWord'
        Data         = '4' #AES-CBC 256-bit
    }
    @{
        Name         = 'Windows > Windows Components > BitLocker Drive Encryption > Operating System Drives > Disallow standard users from changing the PIN or password'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\FVE\DisallowStandardUserPINReset'
        Type         = 'DWord'
        Data         = '1'
    }
    @{
        Name         = 'Windows > Windows Components > BitLocker Drive Encryption > Operating System Drives > Enforce drive encryption type on operating system drives'
        Ensure       = 'Present'
        PolicyType   = 'Machine'
        KeyValueName = 'SOFTWARE\Policies\Microsoft\FVE\OSEncryptionType'
        Type         = 'DWord'
        Data         = '1' #Full encryption
    }
    ############################## END MACHINE SETTINGS ##############################
)
}

