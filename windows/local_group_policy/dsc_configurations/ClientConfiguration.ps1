Configuration ClientLocalGroupPolicy {
    Import-DscResource -ModuleName 'PolicyFileEditor'

    Node $AllNodes.NodeName {
        foreach ($LocalGroupPolicy in $Node.LocalGroupPolicies){
            cAdministrativeTemplateSetting $LocalGroupPolicy.Name
            {
                Ensure       = $LocalGroupPolicy.Ensure
                PolicyType   = $LocalGroupPolicy.PolicyType
                KeyValueName = $LocalGroupPolicy.KeyValueName
                Type         = $LocalGroupPolicy.Type
                Data         = $LocalGroupPolicy.Data
            }
        }
    }
}