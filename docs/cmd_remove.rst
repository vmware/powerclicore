Remove Commands
=========================

This page contains details on **Remove** commands.

Remove-AdvancedSetting
-------------------------


NAME
    Remove-AdvancedSetting
    
SYNOPSIS
    This cmdlet removes the specified advanced setting.
    
    
SYNTAX
    Remove-AdvancedSetting [-AdvancedSetting] <AdvancedSetting[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified advanced setting.
    

PARAMETERS
    -AdvancedSetting <AdvancedSetting[]>
        Specifies the advanced settings you want to remove.
        
        Note: You can only remove advanced settings from virtual machines in ESXi or vCenter Server environments version 5.5 or later.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AdvancedSetting -Entity (Get-Cluster -Name Cluster) | Remove-AdvancedSetting -Confirm:$false
    
    Removes the advanced settings of the cluster named Cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-AdvancedSetting -examples".
    For more information, type: "get-help Remove-AdvancedSetting -detailed".
    For technical information, type: "get-help Remove-AdvancedSetting -full".
    For online help, type: "get-help Remove-AdvancedSetting -online"

Remove-AlarmAction
-------------------------

NAME
    Remove-AlarmAction
    
SYNOPSIS
    This cmdlet removes an alarm action.
    
    
SYNTAX
    Remove-AlarmAction [-AlarmAction] <AlarmAction[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes an alarm action.
    

PARAMETERS
    -AlarmAction <AlarmAction[]>
        Specifies the alarm actions you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AlarmDefinition -Name "Alarm1" | Get-AlarmAction | Remove-AlarmAction -Confirm:$false
    
    Removes all actions for an alarm definition.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-AlarmAction -examples".
    For more information, type: "get-help Remove-AlarmAction -detailed".
    For technical information, type: "get-help Remove-AlarmAction -full".
    For online help, type: "get-help Remove-AlarmAction -online"

Remove-AlarmActionTrigger
-------------------------

NAME
    Remove-AlarmActionTrigger
    
SYNOPSIS
    This cmdlet removes the alarm action triggers.
    
    
SYNTAX
    Remove-AlarmActionTrigger [-AlarmActionTrigger] <AlarmActionTrigger[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the selected alarm action triggers.
    

PARAMETERS
    -AlarmActionTrigger <AlarmActionTrigger[]>
        Specifies the alarm action triggers you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AlarmDefinition -Name "Alarm1" | Get-AlarmAction | Get-AlarmActionTrigger | select -First 1 | Remove-AlarmActionTrigger -Confirm:$false
    
    Removes the first action trigger found for an alarm definition.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-AlarmActionTrigger -examples".
    For more information, type: "get-help Remove-AlarmActionTrigger -detailed".
    For technical information, type: "get-help Remove-AlarmActionTrigger -full".
    For online help, type: "get-help Remove-AlarmActionTrigger -online"

Remove-CDDrive
-------------------------

NAME
    Remove-CDDrive
    
SYNOPSIS
    This cmdlet removes virtual CD drives from their locations.
    
    
SYNTAX
    Remove-CDDrive [-CD] <CDDrive[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes virtual CD drives from their locations.
    

PARAMETERS
    -CD <CDDrive[]>
        Specifies the virtual CD drives you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$cd = Get-CDDrive -VM $vm -Template $template
    
    Remove-CDDrive -CD $cd
    
    Removes all CD drives for the specified virtual machines and templates.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-CDDrive -examples".
    For more information, type: "get-help Remove-CDDrive -detailed".
    For technical information, type: "get-help Remove-CDDrive -full".
    For online help, type: "get-help Remove-CDDrive -online"

Remove-Cluster
-------------------------

NAME
    Remove-Cluster
    
SYNOPSIS
    This cmdlet deletes the specified clusters.
    
    
SYNTAX
    Remove-Cluster [-Cluster] <Cluster[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet deletes the specified clusters.
    

PARAMETERS
    -Cluster <Cluster[]>
        Specifies the clusters you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$cluster =  New-Cluster -Name Cluster -Location Datacenter
    
    Remove-Cluster $cluster -Confirm:$false
    
    Creates and then removes, without asking for user confirmation, the Custer cluster on the Datacenter datacenter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Cluster -examples".
    For more information, type: "get-help Remove-Cluster -detailed".
    For technical information, type: "get-help Remove-Cluster -full".
    For online help, type: "get-help Remove-Cluster -online"

Remove-CustomAttribute
-------------------------

NAME
    Remove-CustomAttribute
    
SYNOPSIS
    This cmdlet removes custom attributes.
    
    
SYNTAX
    Remove-CustomAttribute [-CustomAttribute] <CustomAttribute[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes custom attributes.
    

PARAMETERS
    -CustomAttribute <CustomAttribute[]>
        Specifies the custom attributes you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-CustomAttribute -CustomAttribute "CompanyID", "Owner" -Server $agent007
    
    Removes the CompanyID and Owner custom attributes from the server stored in the $agent007 variable.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-CustomAttribute -examples".
    For more information, type: "get-help Remove-CustomAttribute -detailed".
    For technical information, type: "get-help Remove-CustomAttribute -full".
    For online help, type: "get-help Remove-CustomAttribute -online"

Remove-Datacenter
-------------------------

NAME
    Remove-Datacenter
    
SYNOPSIS
    This cmdlet removes the specified datacenters from their locations.
    
    
SYNTAX
    Remove-Datacenter [-Datacenter] <Datacenter[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified datacenters and their children objects from their locations.
    

PARAMETERS
    -Datacenter <Datacenter[]>
        Specifies the datacenters you want to remove.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-Datacenter Datacenter
    
    Removes the Datacenter datacenter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$task = Remove-Datacenter Datacenter -RunAsync
    
    Asynchronously removes Datacenter08.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Datacenter -examples".
    For more information, type: "get-help Remove-Datacenter -detailed".
    For technical information, type: "get-help Remove-Datacenter -full".
    For online help, type: "get-help Remove-Datacenter -online"

Remove-Datastore
-------------------------

NAME
    Remove-Datastore
    
SYNOPSIS
    This cmdlet removes the specified datastores from their locations.
    
    
SYNTAX
    Remove-Datastore [-Datastore] <Datastore[]> [-VMHost] <VMHost> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified datastores from their locations. The cmdlet permanently deletes the content of the removed datastores, unless they are shared (NFS).
    

PARAMETERS
    -Datastore <Datastore[]>
        Specifies the datastores you want to remove.
        
    -VMHost <VMHost>
        Specifies the host to which the datastore you want to remove belongs.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-Datastore -Datastore Datastore -VMHost 10.23.112.234 -Confirm:$false
    
    Removes the Datastore datastore from the host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Datastore -examples".
    For more information, type: "get-help Remove-Datastore -detailed".
    For technical information, type: "get-help Remove-Datastore -full".
    For online help, type: "get-help Remove-Datastore -online"

Remove-DatastoreCluster
-------------------------

NAME
    Remove-DatastoreCluster
    
SYNOPSIS
    This cmdlet deletes the specified datastore clusters.
    
    
SYNTAX
    Remove-DatastoreCluster [-DatastoreCluster] <DatastoreCluster[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet deletes the specified datastore clusters.
    

PARAMETERS
    -DatastoreCluster <DatastoreCluster[]>
        Specifies the datastore cluster that you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-DatastoreCluster -Name 'MyDatastoreCluster' | Remove-DatastoreCluster -Confirm $false
    
    Removes the specified datastore cluster without asking for confirmation.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-DatastoreCluster -examples".
    For more information, type: "get-help Remove-DatastoreCluster -detailed".
    For technical information, type: "get-help Remove-DatastoreCluster -full".
    For online help, type: "get-help Remove-DatastoreCluster -online"

Remove-DrsRule
-------------------------

NAME
    Remove-DrsRule
    
SYNOPSIS
    This cmdlet removes the specified DRS rules.
    
    
SYNTAX
    Remove-DrsRule [-Rule] <DrsRule[]> [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified DRS rules.
    

PARAMETERS
    -Rule <DrsRule[]>
        Specifies the DRS rules you want to remove.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$rules = Get-DrsRule -Cluster $cluster -Name "*Rule1*"
    
    Remove-DrsRule $rules -Confirm:$false
    
    Removes the DRS rules for the $cluster cluster, whose names contain "Rule1".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-DrsRule -examples".
    For more information, type: "get-help Remove-DrsRule -detailed".
    For technical information, type: "get-help Remove-DrsRule -full".
    For online help, type: "get-help Remove-DrsRule -online"

Remove-FloppyDrive
-------------------------

NAME
    Remove-FloppyDrive
    
SYNOPSIS
    This cmdlet removes the virtual floppy drives from their locations.
    
    
SYNTAX
    Remove-FloppyDrive [-Floppy] <FloppyDrive[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the virtual floppy drives from their locations.
    

PARAMETERS
    -Floppy <FloppyDrive[]>
        Specifies the virtual floppy drives you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$floppy = Get-FloppyDrive -VM VM
    
    Remove-FloppyDrive -Floppy $floppy
    
    Removes the floppy drive of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-FloppyDrive -examples".
    For more information, type: "get-help Remove-FloppyDrive -detailed".
    For technical information, type: "get-help Remove-FloppyDrive -full".
    For online help, type: "get-help Remove-FloppyDrive -online"

Remove-Folder
-------------------------

NAME
    Remove-Folder
    
SYNOPSIS
    This cmdlet removes the specified folders from their locations.
    
    
SYNTAX
    Remove-Folder [-Folder] <Folder[]> [-DeletePermanently] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified folders and their children objects from their locations.
    

PARAMETERS
    -Folder <Folder[]>
        Specifies the folders you want to remove.
        
    -DeletePermanently
        Indicates that you want to delete from the disk any virtual machines contained in the specified folder, and not only to remove them from the inventory. This parameter is supported 
        only for VirtualMachine folders.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-Folder -Folder "testFolder"
    
    Removes a folder by name.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Folder -Name "testFolder" | Remove-Folder
    
    Removes a folder by object.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-Folder -Name "testFolder" | Remove-Folder -DeletePermanently
    
    Permanently removes a folder.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Folder -examples".
    For more information, type: "get-help Remove-Folder -detailed".
    For technical information, type: "get-help Remove-Folder -full".
    For online help, type: "get-help Remove-Folder -online"

Remove-HardDisk
-------------------------

NAME
    Remove-HardDisk
    
SYNOPSIS
    This cmdlet removes the specified virtual hard disks.
    
    
SYNTAX
    Remove-HardDisk [-HardDisk] <HardDisk[]> [-DeletePermanently] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified virtual hard disks.
    

PARAMETERS
    -HardDisk <HardDisk[]>
        Specifies the hard disks you want to remove.
        
    -DeletePermanently
        Indicates that you want to delete the hard disks not only from the inventory, but from the datastore as well.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-HardDisk -VM $vm | Remove-HardDisk
    
    Removes the hard disks of the virtual machine stored in the $vm variable.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$hdd = Get-HardDisk -VM 'MyVM' -Name 'Hard disk 4'
    Remove-HardDisk -HardDisk $hdd
    
    Removes the 'Hard disk 4' hard disk of the 'MyVM' virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-HardDisk -examples".
    For more information, type: "get-help Remove-HardDisk -detailed".
    For technical information, type: "get-help Remove-HardDisk -full".
    For online help, type: "get-help Remove-HardDisk -online"

Remove-Inventory
-------------------------

NAME
    Remove-Inventory
    
SYNOPSIS
    This cmdlet removes the specified inventory items from their locations.
    
    
SYNTAX
    Remove-Inventory [-Item] <InventoryItem[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified inventory items and their children from their locations.
    

PARAMETERS
    -Item <InventoryItem[]>
        Specifies the inventory items you want to remove. This parameter accepts Folder, ResourcePool, Datacenter, VirtualMachine, VMHost, Cluster, Template, and VApp objects.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Folder Folder| Get-Inventory -NoRecursion | Remove-Inventory
    
    Removes all objects from the Folder folder.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Inventory -examples".
    For more information, type: "get-help Remove-Inventory -detailed".
    For technical information, type: "get-help Remove-Inventory -full".
    For online help, type: "get-help Remove-Inventory -online"

Remove-IScsiHbaTarget
-------------------------

NAME
    Remove-IScsiHbaTarget
    
SYNOPSIS
    This cmdlet removes targets from their iSCSI HBAs.
    
    
SYNTAX
    Remove-IScsiHbaTarget [-Target] <IScsiHbaTarget[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes targets from their iSCSI HBAs.
    

PARAMETERS
    -Target <IScsiHbaTarget[]>
        Specifies the iSCSI HBA targets you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-IScsiHbaTarget -Address 10.23.84.73 -Type Send | Remove-IScsiHbaTarget
    
    Retrieves and removes the targets of type Send on the specified address.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Remove-IScsiHbaTarget -Target (Get-IScsiHbaTarget -Address 10.23.84.73)
    
    Removes the specified iSCSI HBA targets.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-IScsiHbaTarget -examples".
    For more information, type: "get-help Remove-IScsiHbaTarget -detailed".
    For technical information, type: "get-help Remove-IScsiHbaTarget -full".
    For online help, type: "get-help Remove-IScsiHbaTarget -online"

Remove-NetworkAdapter
-------------------------

NAME
    Remove-NetworkAdapter
    
SYNOPSIS
    This cmdlet removes the virtual network adapters from their locations.
    
    
SYNTAX
    Remove-NetworkAdapter [-NetworkAdapter] <NetworkAdapter[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the virtual network adapters from their locations.
    

PARAMETERS
    -NetworkAdapter <NetworkAdapter[]>
        Specifies the virtual network adapters you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$nic = Get-NetworkAdapter -VM VM
    
    Remove-NetworkAdapter -NetworkAdapter $nic
    
    Removes the network adapter of the VM virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-NetworkAdapter -examples".
    For more information, type: "get-help Remove-NetworkAdapter -detailed".
    For technical information, type: "get-help Remove-NetworkAdapter -full".
    For online help, type: "get-help Remove-NetworkAdapter -online"

Remove-OSCustomizationNicMapping
-------------------------

NAME
    Remove-OSCustomizationNicMapping
    
SYNOPSIS
    This cmdlet removes the specified OS customization NIC mappings.
    
    
SYNTAX
    Remove-OSCustomizationNicMapping [-OSCustomizationNicMapping] <OSCustomizationNicMapping[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified OS customization NIC mappings.
    

PARAMETERS
    -OSCustomizationNicMapping <OSCustomizationNicMapping[]>
        Specifies the OSCustomizationNicMapping objects you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$nicMapping = Get-OSCustomization MyCustomizationSpec | Get-OSCustomizationNicMapping
    Remove-OSCustomizationNicMapping $nicMapping -Confirm:$false
    
    Removes the NIC mappings of the specified OS customization spec without asking for confirmation.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-OSCustomizationNicMapping -examples".
    For more information, type: "get-help Remove-OSCustomizationNicMapping -detailed".
    For technical information, type: "get-help Remove-OSCustomizationNicMapping -full".
    For online help, type: "get-help Remove-OSCustomizationNicMapping -online"

Remove-OSCustomizationSpec
-------------------------

NAME
    Remove-OSCustomizationSpec
    
SYNOPSIS
    This cmdlet removes the specified OS customization specifications.
    
    
SYNTAX
    Remove-OSCustomizationSpec [-OSCustomizationSpec] <OSCustomizationSpec[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified OS customization specifications.
    

PARAMETERS
    -OSCustomizationSpec <OSCustomizationSpec[]>
        Specifies the customization specifications you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-OSCustomizationSpec Spec -Confirm
    
    Removes the Spec OS customization specification from the server.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-OSCustomizationSpec -examples".
    For more information, type: "get-help Remove-OSCustomizationSpec -detailed".
    For technical information, type: "get-help Remove-OSCustomizationSpec -full".
    For online help, type: "get-help Remove-OSCustomizationSpec -online"

Remove-PassthroughDevice
-------------------------

NAME
    Remove-PassthroughDevice
    
SYNOPSIS
    This cmdlet removes the specified pass-through devices.
    
    
SYNTAX
    Remove-PassthroughDevice [-PassthroughDevice] <PassThroughDevice[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified pass-through devices. You can remove only those pass-through devices that are retrieved from virtual machines.
    

PARAMETERS
    -PassthroughDevice <PassThroughDevice[]>
        Specifies the pass-through devices you want to remove. You can remove only those pass-through devices that are retrieved from virtual machines.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-PassthroughDevice -VM VM | Remove-PassthroughDevice
    
    Removes all pass-through devices of the VM virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-PassthroughDevice -examples".
    For more information, type: "get-help Remove-PassthroughDevice -detailed".
    For technical information, type: "get-help Remove-PassthroughDevice -full".
    For online help, type: "get-help Remove-PassthroughDevice -online"

Remove-ResourcePool
-------------------------

NAME
    Remove-ResourcePool
    
SYNOPSIS
    This cmdlet removes the specified resource pools from their locations.
    
    
SYNTAX
    Remove-ResourcePool [-ResourcePool] <ResourcePool[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified resource pools and their children objects from their locations.
    

PARAMETERS
    -ResourcePool <ResourcePool[]>
        Specifies the resource pools you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-ResourcePool -ResourcePool ResourcePool
    
    Removes the resource pool named ResourcePool.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-ResourcePool -examples".
    For more information, type: "get-help Remove-ResourcePool -detailed".
    For technical information, type: "get-help Remove-ResourcePool -full".
    For online help, type: "get-help Remove-ResourcePool -online"

Remove-Snapshot
-------------------------

NAME
    Remove-Snapshot
    
SYNOPSIS
    This cmdlet removes the specified virtual machine snapshots.
    
    
SYNTAX
    Remove-Snapshot [-Snapshot] <Snapshot[]> [-RemoveChildren] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified virtual machine snapshots. If the value of the RemoveChildren parameter is $true, the cmdlet removes the child snapshots as well.
    

PARAMETERS
    -Snapshot <Snapshot[]>
        Specifies the snapshots you want to remove.
        
    -RemoveChildren
        Indicates that you want to remove the children of the specified snapshots as well.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-Snapshot -Snapshot $snapshot1 -RemoveChildren
    
    Removes the snapshot in the $snapshot variable and its children.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Snapshot -examples".
    For more information, type: "get-help Remove-Snapshot -detailed".
    For technical information, type: "get-help Remove-Snapshot -full".
    For online help, type: "get-help Remove-Snapshot -online"

Remove-StatInterval
-------------------------

NAME
    Remove-StatInterval
    
SYNOPSIS
    This cmdlet removes the statistics interval specified by the provided sampling period or name.
    
    
SYNTAX
    Remove-StatInterval [-Interval] <StatInterval[]> [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the statistics interval specified by the provided sampling period or name.
    

PARAMETERS
    -Interval <StatInterval[]>
        Specifies the statistics intervals you want to remove. The values of this parameter can be statistics interval objects, names, or refresh periods in seconds.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-StatInterval -Interval *
    
    Removes all the statistics intervals. Note that deleting statistics intervals is allowed only on VirtualCenter 2.0.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-StatInterval -examples".
    For more information, type: "get-help Remove-StatInterval -detailed".
    For technical information, type: "get-help Remove-StatInterval -full".
    For online help, type: "get-help Remove-StatInterval -online"

Remove-Tag
-------------------------

NAME
    Remove-Tag
    
SYNOPSIS
    This cmdlet removes the specified tags from the server.
    
    
SYNTAX
    Remove-Tag [-Tag] <Tag[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified tags from the server.
    

PARAMETERS
    -Tag <Tag[]>
        Specifies the tags you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$tagCategory = Get-TagCategory "MyTagCategory"
    Get-Tag -Name "MyTag1", "MyTag2" -Category $tagCategory | Remove-Tag
    
    Retrieves the tags named "MyTag1" and "MyTag2" from the specified tag category named "MyTagCategory" and then removes the tags from the vCenter Server system.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Tag -examples".
    For more information, type: "get-help Remove-Tag -detailed".
    For technical information, type: "get-help Remove-Tag -full".
    For online help, type: "get-help Remove-Tag -online"

Remove-TagAssignment
-------------------------

NAME
    Remove-TagAssignment
    
SYNOPSIS
    This cmdlet removes the specified tag assignment.
    
    
SYNTAX
    Remove-TagAssignment [-TagAssignment] <TagAssignment[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified tag assignment. The cmdlet removes the assignment of the tag in TagAssignment.Tag from the entity in TagAssignment.Entity.
    

PARAMETERS
    -TagAssignment <TagAssignment[]>
        Specifies the assigned tags to be removed.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myVM = Get-VM myvm
    $myTagAssignment = Get-TagAssignment $myVM
    Remove-TagAssignment $myTagAssignment
    
    Removes all connections to tags from the specified virtual machine entity.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-TagAssignment -examples".
    For more information, type: "get-help Remove-TagAssignment -detailed".
    For technical information, type: "get-help Remove-TagAssignment -full".
    For online help, type: "get-help Remove-TagAssignment -online"

Remove-TagCategory
-------------------------

NAME
    Remove-TagCategory
    
SYNOPSIS
    This cmdlet removes the specified tag categories from the server.
    
    
SYNTAX
    Remove-TagCategory [-Category] <TagCategory[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified tag categories from the server. 
    
    Note: This will remove all tags in the category and any assignments of these tags.
    

PARAMETERS
    -Category <TagCategory[]>
        Specifies the categories you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-TagCategory "MyTagCategory" | Remove-TagCategory
    
    Retrieves a tag category named "MyTagCategory" and then removes it from the vCenter Server system.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-TagCategory -examples".
    For more information, type: "get-help Remove-TagCategory -detailed".
    For technical information, type: "get-help Remove-TagCategory -full".
    For online help, type: "get-help Remove-TagCategory -online"

Remove-Template
-------------------------

NAME
    Remove-Template
    
SYNOPSIS
    This cmdlet removes the specified virtual machine templates from the inventory.
    
    
SYNTAX
    Remove-Template [-Template] <Template[]> [-DeletePermanently] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified virtual machine templates from the inventory. If the value of the DeletePermanently parameter is  $true, the cmdlet removes the templates from the 
    inventory and deletes them from the disk.
    

PARAMETERS
    -Template <Template[]>
        Specifies the virtual machine templates you want to remove.
        
    -DeletePermanently
        Indicates that you want to delete the templates not only from the inventory, but from the datastore as well.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-Template -Template $template
    
    Removes the virtual machine template saved in the $template variable.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-Template -examples".
    For more information, type: "get-help Remove-Template -detailed".
    For technical information, type: "get-help Remove-Template -full".
    For online help, type: "get-help Remove-Template -online"

Remove-UsbDevice
-------------------------

NAME
    Remove-UsbDevice
    
SYNOPSIS
    This cmdlet removes the specified USB devices from a virtual machine.
    
    
SYNTAX
    Remove-UsbDevice [-UsbDevice] <UsbDevice[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified USB devices from a virtual machine.
    

PARAMETERS
    -UsbDevice <UsbDevice[]>
        Specifies the USB devices you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-UsbDevice -VM (Get-VM -Location $vmhost) | Remove-UsbDevice
    
    Retrieves the virtual machines on the host stored in the $vmhost variable and removes their USB devices.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-UsbDevice -examples".
    For more information, type: "get-help Remove-UsbDevice -detailed".
    For technical information, type: "get-help Remove-UsbDevice -full".
    For online help, type: "get-help Remove-UsbDevice -online"

Remove-VApp
-------------------------

NAME
    Remove-VApp
    
SYNOPSIS
    This cmdlet removes vApps from the server.
    
    
SYNTAX
    Remove-VApp [-DeletePermanently] [-VApp] <VApp[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes vApps from the server.
    

PARAMETERS
    -DeletePermanently
        Indicates that you want not only to remove the vApps from the inventory, but also to delete the virtual machines they contain from the datastore.
        
    -VApp <VApp[]>
        Specifies the vApp you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost -Name MyVMHost1 | Get-VApp | Remove-VApp
    
    Retrieves and removes all vApps available on the MyVMHost1 host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VApp -examples".
    For more information, type: "get-help Remove-VApp -detailed".
    For technical information, type: "get-help Remove-VApp -full".
    For online help, type: "get-help Remove-VApp -online"

Remove-VDPortGroup
-------------------------

NAME
    Remove-VDPortGroup
    
SYNOPSIS
    This cmdlet removes distributed port groups.
    
    
SYNTAX
    Remove-VDPortGroup [-VDPortGroup] <VDPortgroup[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes distributed port groups.
    

PARAMETERS
    -VDPortGroup <VDPortgroup[]>
        Specifies the distributed port group that you want to remove.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDPortGroup -Name "MyVDPortGroup" | Remove-VDPortGroup
    
    Removes the specified distributed port group from the vSphere distributed switch that it belongs to.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VDPortGroup -examples".
    For more information, type: "get-help Remove-VDPortGroup -detailed".
    For technical information, type: "get-help Remove-VDPortGroup -full".
    For online help, type: "get-help Remove-VDPortGroup -online"

Remove-VDSwitch
-------------------------

NAME
    Remove-VDSwitch
    
SYNOPSIS
    This cmdlet removes vSphere distributed switches.
    
    
SYNTAX
    Remove-VDSwitch [-VDSwitch] <VDSwitch[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes vSphere distributed switches.
    

PARAMETERS
    -VDSwitch <VDSwitch[]>
        Specifies the vSphere distributed switches that you want to remove.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch -Name MyVDSwitch | Remove-VDSwitch
    
    Removes the specified vSphere distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VDSwitch -examples".
    For more information, type: "get-help Remove-VDSwitch -detailed".
    For technical information, type: "get-help Remove-VDSwitch -full".
    For online help, type: "get-help Remove-VDSwitch -online"

Remove-VDSwitchPhysicalNetworkAdapter
-------------------------

NAME
    Remove-VDSwitchPhysicalNetworkAdapter
    
SYNOPSIS
    This cmdlet removes host physical network adapters from the vSphere distributed switches they are connected to.
    
    
SYNTAX
    Remove-VDSwitchPhysicalNetworkAdapter [-VMHostNetworkAdapter] <PhysicalNic[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes host physical network adapters from the vSphere distributed switches they are connected to.
    

PARAMETERS
    -VMHostNetworkAdapter <PhysicalNic[]>
        Specifies the host physical network adapters that you want to remove from the vSphere distributed switch it is connected to.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMhost -Name "MyVMhost" | Get-VMHostNetworkAdapter -Physical -Name vmnic0 | Remove-VDSwitchPhysicalNetworkAdapter
    
    Removes the specified host physical network adapter from the vSphere distributed switch that it is connected to.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VDSwitchPhysicalNetworkAdapter -examples".
    For more information, type: "get-help Remove-VDSwitchPhysicalNetworkAdapter -detailed".
    For technical information, type: "get-help Remove-VDSwitchPhysicalNetworkAdapter -full".
    For online help, type: "get-help Remove-VDSwitchPhysicalNetworkAdapter -online"

Remove-VDSwitchPrivateVlan
-------------------------

NAME
    Remove-VDSwitchPrivateVlan
    
SYNOPSIS
    This cmdlet removes private VLAN configuration entries from vSphere distributed switches.
    
    
SYNTAX
    Remove-VDSwitchPrivateVlan [-VDSwitchPrivateVlan] <VDSwitchPrivateVlan[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes private VLAN configuration entries from vSphere distributed switches.
    

PARAMETERS
    -VDSwitchPrivateVlan <VDSwitchPrivateVlan[]>
        Specifies the private VLAN configuration entry that you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitchPrivateVlan -VDSwitch "MyVDSwitch" -PrimaryVlanId 1,3,5 | Remove-VDSwitchPrivateVlan
    
    Removes the private VLAN configuration entries with specified primary identities from a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VDSwitchPrivateVlan -examples".
    For more information, type: "get-help Remove-VDSwitchPrivateVlan -detailed".
    For technical information, type: "get-help Remove-VDSwitchPrivateVlan -full".
    For online help, type: "get-help Remove-VDSwitchPrivateVlan -online"

Remove-VDSwitchVMHost
-------------------------

NAME
    Remove-VDSwitchVMHost
    
SYNOPSIS
    This cmdlet removes hosts from the specified vSphere distributed switches.
    
    
SYNTAX
    Remove-VDSwitchVMHost -VDSwitch <VDSwitch> -VMHost <VMHost[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes hosts from the specified vSphere distributed switches.
    

PARAMETERS
    -VDSwitch <VDSwitch>
        Specifies the vSphere distributed switch from which you want to remove hosts.
        
    -VMHost <VMHost[]>
        Specifies the hosts that you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch -Name "MySwitch" | Remove-VDSwitchVMHost -VMHost "VMHost1", "VMHost2"
    
    Removes two hosts from the specified vSphere distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VDSwitchVMHost -examples".
    For more information, type: "get-help Remove-VDSwitchVMHost -detailed".
    For technical information, type: "get-help Remove-VDSwitchVMHost -full".
    For online help, type: "get-help Remove-VDSwitchVMHost -online"

Remove-VIPermission
-------------------------

NAME
    Remove-VIPermission
    
SYNOPSIS
    This cmdlet removes the specified permissions.
    
    
SYNTAX
    Remove-VIPermission [-Permission] <Permission[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified permissions.
    

PARAMETERS
    -Permission <Permission[]>
        Specifies the permissions you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-VIPermission -Permission $permission -Confirm:$false
    
    Removes the $permission permission without asking for confirmation.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VIPermission -examples".
    For more information, type: "get-help Remove-VIPermission -detailed".
    For technical information, type: "get-help Remove-VIPermission -full".
    For online help, type: "get-help Remove-VIPermission -online"

Remove-VIProperty
-------------------------

NAME
    Remove-VIProperty
    
SYNOPSIS
    This cmdlet removes the extended properties from the specified object types.
    
    
SYNTAX
    Remove-VIProperty [-VIProperty] <VIProperty[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Remove-VIProperty [-Name] <String[]> [-ObjectType] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the extended properties from the specified object types. Changes take effect upon the next retrieval of the corresponding objects.
    

PARAMETERS
    -VIProperty <VIProperty[]>
        Specifies the extended object properties you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Name <String[]>
        Specifies the names of the extended properties you want to remove.
        
    -ObjectType <String[]>
        Specifies the object types to which the extended properties you want to remove belong.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-VIProperty -Name * -ObjectType *
    
    Removes all custom properties.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Remove-VIProperty -Name * -ObjectType VirtualMachine
    
    Removes all custom properties for the VirtualMachine object type.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Remove-VIProperty -Name OverallStatus, ConfigStatus -ObjectType VirtualMachine
    
    Removes the OverallStatus and ConfigStatus for the VirtualMachine object type.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Remove-VIProperty -Name OverallStatus -ObjectType VirtualMachine, Datacenter
    
    Removes the OverallStatus property for the VirtualMachine and Datacenter types.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Remove-VIProperty -Name *status* -ObjectType Virt*
    
    Removes all properties that contain "status" in their names for object types with names that start with "Virt".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VIProperty -examples".
    For more information, type: "get-help Remove-VIProperty -detailed".
    For technical information, type: "get-help Remove-VIProperty -full".
    For online help, type: "get-help Remove-VIProperty -online"

Remove-VIRole
-------------------------

NAME
    Remove-VIRole
    
SYNOPSIS
    This cmdlet removes the specified roles.
    
    
SYNTAX
    Remove-VIRole [-Role] <Role[]> [-Force] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified roles. To remove a role that is associated with a permission, you need to set the Force parameter to $true.
    

PARAMETERS
    -Role <Role[]>
        Specifies the roles you want to remove.
        
    -Force
        Indicates that you want to remove the role even if it is associated with a permission.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIRole -Server $server -Name "Customer*" | Remove-VIRole
    
    Removes the roles with names that start with  "Customer".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VIRole -examples".
    For more information, type: "get-help Remove-VIRole -detailed".
    For technical information, type: "get-help Remove-VIRole -full".
    For online help, type: "get-help Remove-VIRole -online"

Remove-VirtualPortGroup
-------------------------

NAME
    Remove-VirtualPortGroup
    
SYNOPSIS
    This cmdlet removes the specified virtual port groups.
    
    
SYNTAX
    Remove-VirtualPortGroup [-VirtualPortGroup] <VirtualPortGroup[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified virtual port groups.
    

PARAMETERS
    -VirtualPortGroup <VirtualPortGroup[]>
        Specifies the virtual port groups you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation..
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vswitch =  New-VirtualSwitch -VMHost 10.23.112.234 -Name VirtualSwitch
    
    $vportgroup =  New-VirtualPortGroup -VirtualSwitch $vswitch -Name VPortGroup
    
    Remove-VirtualPortGroup -VirtualPortGroup $vportgroup
    
    Creates a new virtual switch named VirtualSwitch and a virtual ports group VPortGroup for this switch. Then removes the virtual ports group.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VirtualPortGroup -examples".
    For more information, type: "get-help Remove-VirtualPortGroup -detailed".
    For technical information, type: "get-help Remove-VirtualPortGroup -full".
    For online help, type: "get-help Remove-VirtualPortGroup -online"

Remove-VirtualSwitch
-------------------------

NAME
    Remove-VirtualSwitch
    
SYNOPSIS
    This cmdlet removes the specified virtual switches from their locations.
    
    
SYNTAX
    Remove-VirtualSwitch [-VirtualSwitch] <VirtualSwitch[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified virtual switches from their locations.
    

PARAMETERS
    -VirtualSwitch <VirtualSwitch[]>
        Specifies the virtual switches you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vswitch =  New-VirtualSwitch -VMHost 10.23.122.145 -Name VirtualSwitch
    
    Remove-VirtualSwitch -VirtualSwitch $vswitch
    
    Creates a new virtual switch named VirtualSwitch on the host with an IP address 10.23.122.145. Then removes the virtual switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VirtualSwitch -examples".
    For more information, type: "get-help Remove-VirtualSwitch -detailed".
    For technical information, type: "get-help Remove-VirtualSwitch -full".
    For online help, type: "get-help Remove-VirtualSwitch -online"

Remove-VirtualSwitchPhysicalNetworkAdapter
-------------------------

NAME
    Remove-VirtualSwitchPhysicalNetworkAdapter
    
SYNOPSIS
    This cmdlet removes the specified host physical NICs from the standard virtual switch.
    
    
SYNTAX
    Remove-VirtualSwitchPhysicalNetworkAdapter [-VMHostNetworkAdapter] <PhysicalNic[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified host physical NICs from the standard virtual switch.
    

PARAMETERS
    -VMHostNetworkAdapter <PhysicalNic[]>
        Specifies the network adapters you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMhost "myVMhost" | Get-VMHostNetworkAdapter -Physical -Name "vmnic1" | Remove-VirtualSwitchPhysicalNetworkAdapter
    
    Removes a VMHost NIC from the virtual switch it is attached to.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VirtualSwitchPhysicalNetworkAdapter -examples".
    For more information, type: "get-help Remove-VirtualSwitchPhysicalNetworkAdapter -detailed".
    For technical information, type: "get-help Remove-VirtualSwitchPhysicalNetworkAdapter -full".
    For online help, type: "get-help Remove-VirtualSwitchPhysicalNetworkAdapter -online"

Remove-VM
-------------------------

NAME
    Remove-VM
    
SYNOPSIS
    This cmdlet removes the specified virtual machines from the vCenter Server system.
    
    
SYNTAX
    Remove-VM [-DeletePermanently] [-RunAsync] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified virtual machines from the vCenter Server system. If the value of the DeletePermanently parameter is $true, the cmdlet not only removes the virtual 
    machines from the inventory, but also deletes them from the disk.
    

PARAMETERS
    -DeletePermanently
        Indicates that you want to delete the virtual machines not only from the inventory, but from the datastore.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-VM VM -DeletePermanently
    
    Removes the VM virtual machine and deletes its files from the ESX host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VM -examples".
    For more information, type: "get-help Remove-VM -detailed".
    For technical information, type: "get-help Remove-VM -full".
    For online help, type: "get-help Remove-VM -online"

Remove-VMGuestRoute
-------------------------

NAME
    Remove-VMGuestRoute
    
SYNOPSIS
    This cmdlet removes the specified routes from the routing table of their corresponding virtual machines.
    
    
SYNTAX
    Remove-VMGuestRoute [-VMGuestRoute] <VMGuestRoute[]> [-ToolsWaitSecs <Int32>] [-GuestPassword <SecureString>] [-GuestUser <String>] [-GuestCredential <PSCredential>] [-HostPassword 
    <SecureString>] [-HostUser <String>] [-HostCredential <PSCredential>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use Invoke-VMGuestScript instead.
    
    This cmdlet removes the specified routes from the routing table of their corresponding virtual machines. For a list of supported operating systems, see the PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Execute and VirtualMachine.GuestOperations.Modify privileges.
    

PARAMETERS
    -VMGuestRoute <VMGuestRoute[]>
        Specifies the route you want to remove.
        
    -ToolsWaitSecs <Int32>
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
        
    -GuestPassword <SecureString>
        Specifies the password you want to use for authenticating with the guest OS.
        
    -GuestUser <String>
        Specifies the user name you want to use for authenticating with the guest OS.
        
    -GuestCredential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS. Do not use this parameter if the GuestUser and GuestPassword parameters are used.
        
    -HostPassword <SecureString>
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating 
        with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -HostUser <String>
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are 
        authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -HostCredential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the host. Do not use this parameter if the HostUser and HostPassword parameters are used. You need 
        to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 
        1.10.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-VMGuestRoute -GuestUser user -GuestPassword pass2 -VMGuestRoute $route
    
    Removes the guest route stored in the $route variable.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMGuestRoute -examples".
    For more information, type: "get-help Remove-VMGuestRoute -detailed".
    For technical information, type: "get-help Remove-VMGuestRoute -full".
    For online help, type: "get-help Remove-VMGuestRoute -online"

Remove-VMHost
-------------------------

NAME
    Remove-VMHost
    
SYNOPSIS
    This cmdlet removes the specified hosts from the inventory.
    
    
SYNTAX
    Remove-VMHost [-VMHost] <VMHost[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified hosts from the inventory.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myServer = Connect-VIServer -Server 10.23.112.235
    Get-VMHost -Server $myServer -Location MyDatacenter1 | Remove-VMHost -Confirm:$false
    
    Removes a specified VM host from a vCenter Server system without asking for a confirmation.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMHost -examples".
    For more information, type: "get-help Remove-VMHost -detailed".
    For technical information, type: "get-help Remove-VMHost -full".
    For online help, type: "get-help Remove-VMHost -online"

Remove-VMHostAccount
-------------------------

NAME
    Remove-VMHostAccount
    
SYNOPSIS
    This cmdlet removes the specified host accounts.
    
    
SYNTAX
    Remove-VMHostAccount [-HostAccount] <HostAccount[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified host accounts . These can be  HostGroupAccount objects, HostUserAccount objects, or both.
    

PARAMETERS
    -HostAccount <HostAccount[]>
        Specifies the host accounts you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostAccount -Group -ID user | Remove-VMHostAccount -Confirm
    
    Removes the group account with ID "user". Asks for confirmation before running the command.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMHostAccount -examples".
    For more information, type: "get-help Remove-VMHostAccount -detailed".
    For technical information, type: "get-help Remove-VMHostAccount -full".
    For online help, type: "get-help Remove-VMHostAccount -online"

Remove-VMHostNetworkAdapter
-------------------------

NAME
    Remove-VMHostNetworkAdapter
    
SYNOPSIS
    This cmdlet removes the specified host network adapters.
    
    
SYNTAX
    Remove-VMHostNetworkAdapter [-Nic] <HostVirtualNic[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified host network adapters.
    

PARAMETERS
    -Nic <HostVirtualNic[]>
        Specifies the network adapters you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$network = Get-VMHostNetwork
    
    Remove-VMHostNetworkAdapter $network.VirtualNic[0] -Confirm
    
    Removes the first virtual network adapter of the host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMHostNetworkAdapter -examples".
    For more information, type: "get-help Remove-VMHostNetworkAdapter -detailed".
    For technical information, type: "get-help Remove-VMHostNetworkAdapter -full".
    For online help, type: "get-help Remove-VMHostNetworkAdapter -online"

Remove-VMHostNtpServer
-------------------------

NAME
    Remove-VMHostNtpServer
    
SYNOPSIS
    This cmdlet removes the specified NTP servers from the NTP server list of the specified hosts.
    
    
SYNTAX
    Remove-VMHostNtpServer [-NtpServer] <String[]> [-VMHost] <VMHost[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified NTP servers from the NTP server list of the specified hosts.
    

PARAMETERS
    -NtpServer <String[]>
        Specifies the NTP servers you want to remove from the NTP servers list of the specified host.
        
    -VMHost <VMHost[]>
        Specifies the host whose NTP servers you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Remove-VmHostNtpServer -NtpServer 192.168.1.5 -VMHost $vmhost -Confirm
    
    Removes the NTP server with an IP address 192.168.1.5 from the virtual machine hosts stored in the $vmhost variable.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Remove-VmHostNtpServer -NtpServer "old-ntp-server.com" -VMHost (Get-VMHost) -Confirm
    
    Removes the NTP server with a domain name "old-ntp-server.com" from the virtual machine hosts pipelined through the Get-VMHost cmdlet.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMHostNtpServer -examples".
    For more information, type: "get-help Remove-VMHostNtpServer -detailed".
    For technical information, type: "get-help Remove-VMHostNtpServer -full".
    For online help, type: "get-help Remove-VMHostNtpServer -online"

Remove-VMHostProfile
-------------------------

NAME
    Remove-VMHostProfile
    
SYNOPSIS
    This cmdlet removes the specified host profiles.
    
    
SYNTAX
    Remove-VMHostProfile [-Profile] <VMHostProfile[]> [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Remove-VMHostProfile -Entity <InventoryItem[]> [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes the specified host profiles. If the Entity parameter is provided, the cmdlet removes the profile association for the specified entity. Otherwise, the cmdlet removes 
    the profile object.
    

PARAMETERS
    -Profile <VMHostProfile[]>
        Specifies the host profiles you want to remove.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Entity <InventoryItem[]>
        Specifies the host or cluster whose host profile association you want to remove.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostProfile -Name Profile | Remove-VMHostProfile -Confirm:$false
    
    Deletes the Profile host profile.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMHostProfile -examples".
    For more information, type: "get-help Remove-VMHostProfile -detailed".
    For technical information, type: "get-help Remove-VMHostProfile -full".
    For online help, type: "get-help Remove-VMHostProfile -online"

Remove-VMHostRoute
-------------------------

NAME
    Remove-VMHostRoute
    
SYNOPSIS
    This cmdlet removes host routes.
    
    
SYNTAX
    Remove-VMHostRoute [-VMHostRoute] <VMHostRoute[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet removes host routes.
    

PARAMETERS
    -VMHostRoute <VMHostRoute[]>
        Specifies the host routes you want to remove.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$destIpList = ('192.168.111.101', '192.168.111.102')
    
    $routes = Get-VMHostRoute -VMHost ($script:vmhost1, $script:vmhost2) | where {$destIpList -contains $_.Destination.IPAddressToString}
    
    Remove-VMHostRoute -VMHostRoute $routes -Confirm:$false
    
    Removes the host routes that have the specified destination IP addresses.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Remove-VMHostRoute -examples".
    For more information, type: "get-help Remove-VMHostRoute -detailed".
    For technical information, type: "get-help Remove-VMHostRoute -full".
    For online help, type: "get-help Remove-VMHostRoute -online"



