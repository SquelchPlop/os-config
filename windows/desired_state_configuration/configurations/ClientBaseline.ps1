Configuration ClientBaseline {
    Import-DscResource -ModuleName 'PolicyFileEditor'
    Import-DscResource -ModuleName 'xPSDesiredStateConfiguration'

    Node $AllNodes.NodeName {
        foreach ($LocalGroupPolicy in $Node.LocalGroupPolicies) {
            cAdministrativeTemplateSetting $LocalGroupPolicy.Name {
                Ensure       = $LocalGroupPolicy.Ensure
                PolicyType   = $LocalGroupPolicy.PolicyType
                KeyValueName = $LocalGroupPolicy.KeyValueName
                Type         = $LocalGroupPolicy.Type
                Data         = $LocalGroupPolicy.Data
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