Configuration ClientBaseline {
    Import-DscResource -ModuleName 'PolicyFileEditor'
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'xPSDesiredStateConfiguration'

    Node $AllNodes.NodeName {       
        foreach ($Policy in $Node.Policies) {
            cAdministrativeTemplateSetting $Policy.Name {
                Ensure       = $Policy.Ensure
                PolicyType   = $Policy.PolicyType
                KeyValueName = $Policy.KeyValueName
                Type         = $Policy.Type
                Data         = $Policy.Data
            }
        }

        foreach ($RemoteFile in $Node.RemoteFiles) {
            xRemoteFile  $RemoteFile.Name {
                Uri             = $RemoteFile.Uri
                DestinationPath = $RemoteFile.DestinationPath
            }
        }

    }
}