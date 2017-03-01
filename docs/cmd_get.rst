Get Commands
=========================

This page contains details on **Get** commands.

Get-AdvancedSetting
-------------------------


NAME
    Get-AdvancedSetting
    
SYNOPSIS
    This cmdlet retrieves the advanced settings for the specified entity.
    
    
SYNTAX
    Get-AdvancedSetting [-Entity] <VIObject[]> [[-Name] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the advanced settings for the specified entity.
    

PARAMETERS
    -Entity <VIObject[]>
        Specifies the entities for which you want to retrieve the advanced settings. This parameter accepts VIServer, VirtualMachine, VMHost, DatastoreCluster, and Cluster objects.
        
    -Name <String[]>
        Specifies the names of the advanced settings you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AdvancedSetting -Entity (Get-Cluster -Name Cluster)
    
    Retrieves the advanced settings of the cluster named Cluster.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-AdvancedSetting -Entity (Get-Cluster -Name Cluster) -Name SettingName
    
    Retrieves the advanced setting named SettingName of the Cluster cluster.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-AdvancedSetting -Entity Server -Name '*smtp*'
    
    Retrieve all smtp settings for the specified server.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-AdvancedSetting -examples".
    For more information, type: "get-help Get-AdvancedSetting -detailed".
    For technical information, type: "get-help Get-AdvancedSetting -full".
    For online help, type: "get-help Get-AdvancedSetting -online"

Get-AlarmAction
-------------------------

NAME
    Get-AlarmAction
    
SYNOPSIS
    This cmdlet retrieves the actions of the specified alarm definitions.
    
    
SYNTAX
    Get-AlarmAction [[-AlarmDefinition] <AlarmDefinition[]>] [-ActionType <ActionType[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the actions of the specified alarm definitions.
    

PARAMETERS
    -AlarmDefinition <AlarmDefinition[]>
        Specifies the alarm definitions for which you want to retrieve the configured actions.
        
    -ActionType <ActionType[]>
        Specifies the type of the alarm actions you want to retrieve. The valid values are SendEmail, ExecuteScript, and Send SNMP.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AlarmDefinition -Name "Host processor status" | Get-AlarmAction -ActionType "ExecuteScript", "SendSNMP", "SendEmail"
    
    Extract all PowerCLI supported alarm actions for the default alarm "Host processor status".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-AlarmAction -AlarmDefinition "Host processor status" -ActionType "SendSNMP" -Server 'server IP'
    
    Extract the alarm actions for the default alarm "Host processor status" by specifying the alarm by name.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-AlarmAction -examples".
    For more information, type: "get-help Get-AlarmAction -detailed".
    For technical information, type: "get-help Get-AlarmAction -full".
    For online help, type: "get-help Get-AlarmAction -online"

Get-AlarmActionTrigger
-------------------------

NAME
    Get-AlarmActionTrigger
    
SYNOPSIS
    This cmdlet retrieves the actions that trigger the specified alarm actions.
    
    
SYNTAX
    Get-AlarmActionTrigger [[-AlarmAction] <AlarmAction[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the actions that trigger the specified alarm actions.
    

PARAMETERS
    -AlarmAction <AlarmAction[]>
        Filters the trigger actions by the alarm actions they trigger.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AlarmAction -AlarmDefinition (Get-AlarmDefinition | select -First 1) | Get-AlarmActionTrigger
    
    Retrieves the action triggers for the actions of the first returned alarm.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-AlarmActionTrigger -examples".
    For more information, type: "get-help Get-AlarmActionTrigger -detailed".
    For technical information, type: "get-help Get-AlarmActionTrigger -full".
    For online help, type: "get-help Get-AlarmActionTrigger -online"

Get-AlarmDefinition
-------------------------

NAME
    Get-AlarmDefinition
    
SYNOPSIS
    This cmdlet retrieves the available alarm definitions.
    
    
SYNTAX
    Get-AlarmDefinition [-Id <String[]>] [[-Name] <String[]>] [[-Entity] <VIObject[]>] [-Enabled <Boolean>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available alarm definitions.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the alarms you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Name <String[]>
        Specifies the names of the alarms you want to retrieve.
        
    -Entity <VIObject[]>
        Filters the alarm definitions by the entities to which they are defined. This parameter accepts InventoryItem, Datastore, and DatastoreCluster objects.
        
    -Enabled [<Boolean>]
        Indicates that you want to retrieve only the enabled alarm definitions.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AlarmDefinition -Entity (Get-Folder -NoRecursion) -Name "Host connection and power state" -Enabled:$true
    
    Retrieve the enabled alarms named "Host connection and power state" for the available folders.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-AlarmDefinition -Server Server1, Server2
    
    Retrieves the alarms for the specified servers.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-AlarmDefinition -examples".
    For more information, type: "get-help Get-AlarmDefinition -detailed".
    For technical information, type: "get-help Get-AlarmDefinition -full".
    For online help, type: "get-help Get-AlarmDefinition -online"

Get-Annotation
-------------------------

NAME
    Get-Annotation
    
SYNOPSIS
    This cmdlet retrieves annotations.
    
    
SYNTAX
    Get-Annotation [[-CustomAttribute] <CustomAttribute[]>] [-Entity] <InventoryItem> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Annotation [-Entity] <InventoryItem> [-Name <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves annotations. An annotation is a user-defined description field of one or more vSphere objects.
    

PARAMETERS
    -CustomAttribute <CustomAttribute[]>
        Specifies the custom attributes whose annotations you want to retrieve.
        
    -Entity <InventoryItem>
        Specifies the entities whose annotations you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Name <String[]>
        Specifies the names of the annotations you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Cluster Cluster | Get-Annotation -CustomAttribute PhysicalLocation
    
    Retrieves the annotation of the PhysicalLocation custom attribute for Cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Annotation -examples".
    For more information, type: "get-help Get-Annotation -detailed".
    For technical information, type: "get-help Get-Annotation -full".
    For online help, type: "get-help Get-Annotation -online"

Get-CDDrive
-------------------------

NAME
    Get-CDDrive
    
SYNOPSIS
    This cmdlet retrieves virtual CD drives.
    
    
SYNTAX
    Get-CDDrive [-Id <String[]>] [-Server <VIServer[]>] [[-VM] <VirtualMachine[]>] [[-Template] <Template[]>] [[-Snapshot] <Snapshot[]>] [-Name <String[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet returns a set of virtual CD drives  that belong to the virtual machines, templates, and snapshots specified by the  VirtualMachine, Template, and Snapshot parameters. At 
    least one of these parameters must be provided. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the CD drives you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines from which you want to retrieve virtual CD drives.
        
    -Template <Template[]>
        Specifies the virtual machine templates from which you want to retrieve virtual CD drives.
        
    -Snapshot <Snapshot[]>
        Specifies the snapshots from which you want to retrieve virtual CD drives.
        
    -Name <String[]>
        Specifies the names of the CD drives you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM -Name VM | Get-CDDrive
    
    Connects to a vSphere server and retrieves the CD drive of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-CDDrive -examples".
    For more information, type: "get-help Get-CDDrive -detailed".
    For technical information, type: "get-help Get-CDDrive -full".
    For online help, type: "get-help Get-CDDrive -online"

Get-Cluster
-------------------------

NAME
    Get-Cluster
    
SYNOPSIS
    This cmdlet retrieves the clusters available on a vCenter Server system.
    
    
SYNTAX
    Get-Cluster [[-Name] <String[]>] [-Location <VIContainer[]>] [-NoRecursion] [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Cluster [-RelatedObject] <ClusterRelatedObjectBase[]> [<CommonParameters>]
    
    Get-Cluster [[-Name] <String[]>] [-VM <VirtualMachine[]>] [-VMHost <VMHost[]>] [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Cluster [-Server <VIServer[]>] -Id <String[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the clusters available on a vCenter Server system. Returns a set of clusters that correspond to the filter criteria defined by the cmdlet parameters. To specify a 
    server different from the default one, use the Server parameter.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the clusters you want to retrieve.
        
    -Location <VIContainer[]>
        Specifies vSphere container objects (such as folders, datacenters, and clusters) you want to search for clusters.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -Tag <Tag[]>
        Returns only the clusters that are associated with any of the specified tags.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -RelatedObject <ClusterRelatedObjectBase[]>
        Specifies objects to retrieve one or more Cluster objects that are related to them. This parameter accepts OMResource​ objects.​
        
    -VM <VirtualMachine[]>
        Specifies virtual machines to filter the clusters that contain at least one of them.
        
    -VMHost <VMHost[]>
        Specifies hosts to filter the clusters that contain at least one of them.
        
    -Id <String[]>
        Specifies the IDs of the clusters you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Cluster -Location Folder
    
    Get a list of the available clusters in the Folder folder.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Cluster -examples".
    For more information, type: "get-help Get-Cluster -detailed".
    For technical information, type: "get-help Get-Cluster -full".
    For online help, type: "get-help Get-Cluster -online"

Get-ContentLibraryItem
-------------------------

NAME
    Get-ContentLibraryItem
    
SYNOPSIS
    This cmdlet retrieves catalog items from the content library.
    
    
SYNTAX
    Get-ContentLibraryItem [[-Name] <String[]>] [-ItemType <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-ContentLibraryItem -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves catalog items from the content library. Returns a set of catalog items that correspond to the filter criteria defined by the cmdlet parameters.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the catalog items you want to retrieve.
        
    -ItemType <String[]>
        Filters the catalog items by type.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the catalog items you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-ContentLibraryItem -Type "OVF" -Name "Windows*"
    
    Retrieves content library templates of the specified type that match the specified name.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ContentLibraryItem -examples".
    For more information, type: "get-help Get-ContentLibraryItem -detailed".
    For technical information, type: "get-help Get-ContentLibraryItem -full".
    For online help, type: "get-help Get-ContentLibraryItem -online"

Get-CustomAttribute
-------------------------

NAME
    Get-CustomAttribute
    
SYNOPSIS
    This cmdlet retrieves custom attributes.
    
    
SYNTAX
    Get-CustomAttribute [-Id <String[]>] [[-Name] <String[]>] [[-TargetType] <CustomAttributeTargetType[]>] [-Global] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves custom attributes. A custom attribute is a user-defined description field of one or more vSphere objects.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the custom attributes you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Name <String[]>
        Specifies the names of the custom attributes you want to retrieve.
        
    -TargetType <CustomAttributeTargetType[]>
        Specifies a target type to filter the custom attributes by the type of objects to which they can be applied. The valid values are VirtualMachine, ResourcePool, Folder, VMHost, 
        Cluster, Datacenter, and $null. If the value is $null, the custom attribute is global and applies to all target types.
        
    -Global
        Indicates that only global custom attributes are retrieved. A global custom attribute can be applied both to hosts and virtual machines.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-CustomAttribute -Global
    
    Retrieves all global custom attributes.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-CustomAttribute -TargetType "VirtualMachine", "VMHost"
    
    Retrieves all custom attributes of type VirtualMachine and VMHost.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-CustomAttribute -Name "Creation*" -Global
    
    Retrieves only global custom attributes that match the specified name pattern.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-CustomAttribute -examples".
    For more information, type: "get-help Get-CustomAttribute -detailed".
    For technical information, type: "get-help Get-CustomAttribute -full".
    For online help, type: "get-help Get-CustomAttribute -online"

Get-Datacenter
-------------------------

NAME
    Get-Datacenter
    
SYNOPSIS
    This cmdlet retrieves the datacenters available on a vCenter Server system.
    
    
SYNTAX
    Get-Datacenter [[-Name] <String[]>] [-Location <Folder[]>] [-NoRecursion] [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Datacenter [[-Name] <String[]>] [-VM <VirtualMachine[]>] [-Cluster <Cluster[]>] [-VMHost <VMHost[]>] [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Datacenter [-RelatedObject] <DatacenterRelatedObjectBase[]> [<CommonParameters>]
    
    Get-Datacenter [-Server <VIServer[]>] -Id <String[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the datacenters available on a vCenter Server system. Returns a set of datacenters that correspond to the filter criteria defined by the cmdlet parameters. By 
    default, the cmdlet searches recursively from any provided starting point. In this case, if the location is not explicitly specified, the search includes the root folder and all other 
    inventory items on the root folder level. If the command runs with the NoRecursion parameter set to $true, and the location is not specified, only the root folder is searched and no 
    datacenters are returned. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the datacenters you want to retrieve.
        
    -Location <Folder[]>
        Specifies vSphere container objects (such as folders) you want to search for datacenters.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -Tag <Tag[]>
        Returns only the datacenters that are associated with any of the specified tags.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Specifies virtual machines to filter the datacenters that contain at least one of them.
        
    -Cluster <Cluster[]>
        Specifies clusters to filter the datacenters that contain at least one of them.
        
    -VMHost <VMHost[]>
        Specifies hosts to filter the datacenters that contain at least one of them.
        
    -RelatedObject <DatacenterRelatedObjectBase[]>
        Specifies objects to retrieve one or more Datacenter objects that are related to them. This parameter accepts OMResource​ objects.
        
    -Id <String[]>
        Specifies the IDs of the datacenters you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Datacenter -Name Datacenter*
    
    Retrieves a list of all datacenters on the server, whose names begin with "Datacenter".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Datacenter -examples".
    For more information, type: "get-help Get-Datacenter -detailed".
    For technical information, type: "get-help Get-Datacenter -full".
    For online help, type: "get-help Get-Datacenter -online"

Get-Datastore
-------------------------

NAME
    Get-Datastore
    
SYNOPSIS
    This cmdlet retrieves the datastores available on a vCenter Server system.
    
    
SYNTAX
    Get-Datastore [-Server <VIServer[]>] [[-Name] <String[]>] [-Location <VIObject[]>] [-RelatedObject <DatastoreRelatedObjectBase[]>] [-Refresh] [-Tag <Tag[]>] [<CommonParameters>]
    
    Get-Datastore [-Server <VIServer[]>] -Id <String[]> [-Refresh] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the datastores available on a vCenter Server system. Returns a set of datastores that correspond to the filter criteria defined by the cmdlet parameters. To 
    specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Name <String[]>
        Specifies the names of the datastores you want to retrieve.
        
    -Location <VIObject[]>
        Specifies vSphere container objects that you want to search for datastores. This parameter accepts Datacenter, Folder, and DatastoreCluster objects.
        
    -RelatedObject <DatastoreRelatedObjectBase[]>
        Specifies objects to retrieve one or more Datastore objects that are related to them. This parameter accepts vSphere VirtualMachine, VMHost, Datacenter, DatastoreCluster, Cluster, 
        Folder, HardDisk, and OMResource objects, as well as vCloud Datastore objects.
        
    -Refresh
        Indicates that the cmdlet first refreshes the storage system information and then retrieves the specified datastores.
        
    -Tag <Tag[]>
        Returns only the datastores that are associated with any of the specified tags.
        
    -Id <String[]>
        Specifies the IDs of the datastores you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost -Name VMHost1, VMHost2 | Get-Datastore
    
    Retrieves datastores from the VMHost1 and VMHost2 hosts.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Datastore -Name MyDatastore* -Location MyDatacenter
    
    Retrieves the datastores from the MyDatacenter datacenter that have names starting with MyDatastore.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vm1 = Get-VM -Name myVM1
    $vm2 = Get-VM -Name myVM2
    Get-Datastore -RelatedObject $vm1, $vm2
    
    Retrieves the datastores for a specified array of virtual machines.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myVMHost = Get-VMHost -Name MyVMHost
    Get-Datastore -VMHost $myVMHost -Refresh
    
    Refreshes the host storage system and retrieves its datastores.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Datastore -examples".
    For more information, type: "get-help Get-Datastore -detailed".
    For technical information, type: "get-help Get-Datastore -full".
    For online help, type: "get-help Get-Datastore -online"

Get-DatastoreCluster
-------------------------

NAME
    Get-DatastoreCluster
    
SYNOPSIS
    This cmdlet retrieves datastore clusters.
    
    
SYNTAX
    Get-DatastoreCluster [-Id <String[]>] [[-Name] <String[]>] [-Location <VIContainer[]>] [-VM <VirtualMachine[]>] [-Template <Template[]>] [-Datastore <Datastore[]>] [-Tag <Tag[]>] 
    [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-DatastoreCluster [-RelatedObject] <DatastoreClusterRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves datastore clusters.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the datastore clusters you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Name <String[]>
        Specifies the names of the datastore clusters you want to retrieve.
        
    -Location <VIContainer[]>
        Specifies the datacenters and folders from which you want to retrieve datastore clusters.
        
    -VM <VirtualMachine[]>
        Filters the datastore clusters by the virtual machines located in them.
        
    -Template <Template[]>
        Filters the datastore clusters by the virtual machine templates located in them.
        
    -Datastore <Datastore[]>
        Filters the datastore clusters by the datastores located in them.
        
    -Tag <Tag[]>
        Returns only the datastore clusters that are associated with any of the specified tags.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -RelatedObject <DatastoreClusterRelatedObjectBase[]>
        Specifies objects to retrieve one or more DatastoreCluster objects that are related to them. This parameter accepts OMResource​ objects.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-DatastoreCluster
    
    Retrieves all datastore clusters.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-DatastoreCluster -Name DatastoreCluster1
    
    Retrieves a datastore cluster by name.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VM -Name WebServerVM | Get-DatastoreCluster
    
    Retrieves datastore clusters through filtering by virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-DatastoreCluster -examples".
    For more information, type: "get-help Get-DatastoreCluster -detailed".
    For technical information, type: "get-help Get-DatastoreCluster -full".
    For online help, type: "get-help Get-DatastoreCluster -online"

Get-DrsRecommendation
-------------------------

NAME
    Get-DrsRecommendation
    
SYNOPSIS
    This cmdlet retrieves the available DRS recommendations from the provided clusters.
    
    
SYNTAX
    Get-DrsRecommendation [[-Cluster] <Cluster[]>] [-Refresh] [-Priority <Int32[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available DRS recommendations from the provided clusters.
    

PARAMETERS
    -Cluster <Cluster[]>
        Specifies the clusters whose DRS recommendations you want to retrieve.
        
    -Refresh
        Indicates that you want the cmdlet to refresh the information about the DRS recommendations before retrieving it.
        
    -Priority <Int32[]>
        Specifies the priority of the DRS recommendations you want to retrieve. The valid values range from 1 to 5.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Cluster Cluster | Get-DrsRecommendation -Priority 4,5
    
    Retrieves the DRS recommendations with priorities 4 and 5 from the Cluster cluster.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-DrsRecommendation -Cluster Cluster -Refresh
    
    Refreshes and retrieves information about the DRS recommendations from the Cluster cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-DrsRecommendation -examples".
    For more information, type: "get-help Get-DrsRecommendation -detailed".
    For technical information, type: "get-help Get-DrsRecommendation -full".
    For online help, type: "get-help Get-DrsRecommendation -online"

Get-DrsRule
-------------------------

NAME
    Get-DrsRule
    
SYNOPSIS
    This cmdlet retrieves the list of DRS rules for the specified clusters.
    
    
SYNTAX
    Get-DrsRule [[-Name] <String[]>] [-Cluster] <Cluster[]> [[-VM] <VirtualMachine[]>] [-Type <ResourceSchedulingRuleType[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-DrsRule [[-Name] <String[]>] [-Cluster] <Cluster[]> [[-VM] <VirtualMachine[]>] [-VMHost <VMHost[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the list of DRS rules for the specified clusters. Each rule defines the virtual machines that can run on the same host (affinity rule) or must run on different 
    hosts (anti-affinity).
    
    Note: To retrieve VMHostAffinity rules, you need to state this explicitly by using the Type or the VMHost parameter. Otherwise, this cmdlet returns VMAffinity and VMAntiAffinity rules.
    

PARAMETERS
    -Name <String[]>
        Specifies the name of the DRS rule you want to retrieve.
        
    -Cluster <Cluster[]>
        Specifies the clusters for which you want to retrieve the DRS rules.
        
    -VM <VirtualMachine[]>
        Specifies virtual machines to filter the DRS rules that reference them. Passing values to this parameter through a pipeline is deprecated and will be removed in a future release.
        
    -Type <ResourceSchedulingRuleType[]>
        Specifies the type of DRS rules you want to retrieve. This parameter accepts VMAntiAffinity, VMAffinity, and VMHostAffinity values. You cannot set this parameter, when the VMHost 
        parameter is specified.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VMHost <VMHost[]>
        Specifies VM hosts to filter the DRS rules that reference them. When this parameter is specified, the cmdlet returns only VMHostAffinity rules. You cannot set this parameter, when 
        the Type parameter is specified.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myCluster = Get-Cluster -Name "MyCluster1"
    Get-DrsRule -Cluster $myCluster -Name "*Rule1*"
    
    Retrieves the DRS rules for the cluster stored in the $myCluster variable, whose names contain "Rule1".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Cluster -Name 'MyCluster1' | Get-DrsRule
    
    Retrieves the virtual machine affinity and anti-affinity rules for the specified cluster by pipeline.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVm1 = Get-VM -Name 'MyVm1'
    $myCluster1 = Get-Cluster 'MyCluster1'
    Get-DrsRule -Cluster $myCluster1 -VM $myVm1
    
    Retrieves the virtual machine affinity and anti-affinity rules for the specified virtual machine in the specified cluster.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-Cluster 'MyCluster1' | Get-DrsRule -Type VMHostAffinity
    
    Retrieves virtual machine to host affinity rules for the specified cluster by pipeline.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$myVMHost1 = Get-VMHost -Name 'MyVMHost1'
    $myCluster1 = Get-Cluster -Name 'MyCluster1'
    Get-DrsRule -Cluster $myCluster1 -VMHost $myVMHost1
    
    Retrieves virtual machine to host affinity rules for the specified host and cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-DrsRule -examples".
    For more information, type: "get-help Get-DrsRule -detailed".
    For technical information, type: "get-help Get-DrsRule -full".
    For online help, type: "get-help Get-DrsRule -online"

Get-EsxCli
-------------------------

NAME
    Get-EsxCli
    
SYNOPSIS
    This cmdlet exposes the ESXCLI functionality.
    
    
SYNTAX
    Get-EsxCli -VMHost <VMHost[]> [-V2] [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet exposes the ESXCLI functionality.
    
    Note: This cmdlet provides a new interface to the ESXCLI functionality. Use the -V2 parameter to switch to the new cmdlet interface.  For more information, check the parameter help.
    
    Important: Scripts that use the old cmdlet interface might not be compatible across two different versions of ESXi. The old cmdlet interface is deprecated and will be removed in a 
    future version.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies hosts on which you want to expose the ESXCLI functionality.
        
    -V2
        If specified, the cmdlet returns an EsxCli object version 2 (V2), otherwise an EsxCli object version 1 (V1) is returned. Interface V2 supports specifying method arguments only by 
        name. This is the recommended PowerCLI interface for interoperability with ESXCLI. Interface V1 supports specifying method arguments only by position. Scripts that use interface V1 
        are not guaranteed to be compatible across two different versions of ESXi. Interface V1 is deprecated.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli_v1 = Get-EsxCli -VMHost $vmHost
    
    Retrieves a version 1 interface to ESXCLI. This interface version is deprecated and will be removed in a future release. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$esxcli_v1 = Get-EsxCli
    
    Retrieves a version 1 interface to ESXCLI using the default connection when connected directly to a single ESXi server. This interface version is deprecated and will be removed in a 
    future release. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    
    Retrieves a version 2 interface to ESXCLI by specifying a version switch parameter. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $esxcli.storage.nmp
    
    Retrieves a list of all available applications in the specified namespace. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $esxcli.storage.nmp.device
    
    Retrieves a list of all available commands of the specified ESXCLI application. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli_v1 = Get-EsxCli -VMHost $vmHost
    $esxcli_v1.storage.nmp.device.list()
    
    Runs a command of an ESXCLI application by using the ESXCLI V1 interface of PowerCLI. This interface version is deprecated and will be removed in a future release. This example works on 
    vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $esxcli.storage.nmp.device.list.Invoke()
    
    Runs a command of an ESXCLI application by using the ESXCLI V2 interface of PowerCLI. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 8 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $arguments = $esxcli.storage.nmp.device.set.CreateArgs()
    $arguments
    
    Creates an arguments hash table for a command of an ESXCLI application and prints argument info to the console, similar to the sample output below. This example uses the ESXCLI V2 
    interface of PowerCLI. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    Name                           Value
    ----                           -----
    default                        Unset, ([boolean], optional)
    device                         Unset, ([string])
    psp                            Unset, ([string], optional)
    
    
    --------------  Example 9 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    
    $arguments = $esxcli.storage.nmp.device.set.CreateArgs()
    $arguments.device = "mpx.vmhba1:C0:T2:L0"
    $arguments.psp = "VMW_PSP_MRU"
        
    $esxcli.storage.nmp.device.Set.Invoke($arguments)
    
    Creates an arguments hash table, assigns argument values and invokes a command of an ESXCLI application. This example uses the ESXCLI V2 interface of PowerCLI. This example works on 
    vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 10 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $esxcli.storage.nmp.device.Set.Invoke(@{default=$true; device="mpx.vmhba1:C0:T2:L0"})
    
    Invokes a command of an ESXCLI application by specifying the arguments hash table in-line. This example uses the ESXCLI V2 interface of PowerCLI. This example works on vCenter Server 
    5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 11 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli_v1 = Get-EsxCli -VMHost $vmHost
    $esxcli_v1.storage.nmp.device.set($null, "mpx.vmhba1:C0:T2:L0", "VMW_PSP_MRU")
    
    Runs a command of an ESXCLI application by using the ESXCLI V1 interface of PowerCLI. This interface version is deprecated and will be removed in a future release. This example works on 
    vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 12 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $esxcli.TypeManager.QueryMoInstances($null)
    
    Retrieves a list of all available managed object instance descriptors. This example works on vCenter Server 5.0/ESXi 5.0 and later.
    
    
    
    
    --------------  Example 13 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $moTypeInfo = $esxcli.TypeManager.QueryTypeInfo("vim.EsxCLI.storage.nmp.device")
    
    $moTypeInfo.managedTypeInfo[0].method
    
    Gets information about the specified managed object type (vim.EsxCLI.storage.nmp.device) and its methods.
    
    
    
    
    --------------  Example 14 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $moInstance = $esxcli.TypeManager.CreateDynamicManagedObject("ha-cli-handler-storage-nmp-device")
    
    $moInstance.InvokeOperation("list", $null)
    
    Creates a dynamic managed object for the specified managed object instance descriptor and invokes a method without parameters. This example works on vCenter Server 5.0/ESXi 5.0 and 
    later.
    
    
    
    
    --------------  Example 15 --------------
    
    C:\PS>$vmHost = Get-VMHost "vmHostIp"
    $esxcli = Get-EsxCli -VMHost $vmHost -V2
    $moInstance = $esxcli.TypeManager.CreateDynamicManagedObject("ha-cli-handler-storage-nmp-device")
    
    $moInstance.InvokeOperation("set", @{"device" = "mpx.vmhba1:C0:T2:L0"; "psp" = "VMW_PSP_MRU"})
    
    Creates a dynamic managed object for the specified managed object instance descriptor and invokes a method using a hash table with argument values. This example works on vCenter Server 
    5.0/ESXi 5.0 and later.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-EsxCli -examples".
    For more information, type: "get-help Get-EsxCli -detailed".
    For technical information, type: "get-help Get-EsxCli -full".
    For online help, type: "get-help Get-EsxCli -online"

Get-EsxTop
-------------------------

NAME
    Get-EsxTop
    
SYNOPSIS
    This cmdlet exposes the esxtop functionality.
    
    
SYNTAX
    Get-EsxTop [[-CounterName] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-EsxTop [[-CounterName] <String[]>] -Counter [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-EsxTop -TopologyInfo [[-Topology] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet exposes the esxtop functionality. The default parameter set is CounterValues. The Counter parameter filters the specified statistics. To retrieve all available counters, use 
    the CounterInfo parameter set. The properties of each counter are returned through the Fields property (an array) of the CounterInfo output object. You can also retrieve stats 
    topologies using the TopogyInfo parameter set. This information contains either inventory data that does not change or a counter instance structure describing the relationship between 
    different counter instances.
    

PARAMETERS
    -CounterName <String[]>
        Specifies the name of the counter for which you want to retrieve information.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Counter
        Indicates that you want to retrieve counters information.
        
    -TopologyInfo
        Indicates that you want to retrieve topologies of the statistics.
        
    -Topology <String[]>
        Specifies the topologies for which you want to retrieve information.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-EsxTop -TopologyInfo
    
    Retrieves the available topologies.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-EsxTop -Counter
    
    Retrieves the available counters.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vm = Get-VM VM
    $group = Get-EsxTop -CounterName SchedGroup | where {$_.VMName -eq $vm.Name}
    $groupIDs = $group | select -ExpandProperty GroupID
    $gr = Get-EsxTop -TopologyInfo -Topology SchedGroup | %{$_.Entries} | where {$groupIDs -contains $_.GroupId}
    
    $cpuIds = @()
    $gr | %{$_.CpuClient} | %{$cpuIds += $_.CPUClientID}
    
    $cpuStats = Get-EsxTop -CounterName 'VCPU' | where {$cpuIds -contains $_.VCPUID}
    
    $cpuStats | fl *
    
    Retrieves statistics for the virtual CPUs of the specified virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-EsxTop -examples".
    For more information, type: "get-help Get-EsxTop -detailed".
    For technical information, type: "get-help Get-EsxTop -full".
    For online help, type: "get-help Get-EsxTop -online"

Get-FloppyDrive
-------------------------

NAME
    Get-FloppyDrive
    
SYNOPSIS
    This cmdlet retrieves the virtual floppy drives available on a vCenter Server system.
    
    
SYNTAX
    Get-FloppyDrive [-Id <String[]>] [-Server <VIServer[]>] [[-VM] <VirtualMachine[]>] [[-Template] <Template[]>] [[-Snapshot] <Snapshot[]>] [-Name <String[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the virtual floppy drives available on a vCenter Server system. Returns a set of virtual floppy drives that belong to the virtual machines, templates, and 
    snapshots specified by the  VirtualMachine, Template, and Snapshot parameters. At least one of these parameters must be provided. To specify a server different from the default one, use 
    the Server parameter.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the floppy drives you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines from which you want to retrieve virtual floppy drives.
        
    -Template <Template[]>
        Specifies the templates from which you want to retrieve virtual CD drives.
        
    -Snapshot <Snapshot[]>
        Specifies the snapshots from which you want to retrieve virtual CD drives.
        
    -Name <String[]>
        Specifies the names of the floppy drives you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-FloppyDrive -VM VM
    
    Retrieves the floppy drive of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-FloppyDrive -examples".
    For more information, type: "get-help Get-FloppyDrive -detailed".
    For technical information, type: "get-help Get-FloppyDrive -full".
    For online help, type: "get-help Get-FloppyDrive -online"

Get-Folder
-------------------------

NAME
    Get-Folder
    
SYNOPSIS
    This cmdlet retrieves the folders available on a vCenter Server system.
    
    
SYNTAX
    Get-Folder [-Location <VIContainer[]>] [-Type <FolderType[]>] [-Tag <Tag[]>] [-Server <VIServer[]>] [[-Name] <String[]>] [-NoRecursion] [<CommonParameters>]
    
    Get-Folder [-RelatedObject] <FolderRelatedObjectBase[]> [<CommonParameters>]
    
    Get-Folder [-Server <VIServer[]>] -Id <String[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the folders available on a vCenter Server system. The cmdlet returns a set of folders that correspond to the filter criteria provided by the cmdlet parameters. To 
    specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Location <VIContainer[]>
        Specifies vSphere container objects (folders, datacenters, or clusters) you want to search for folders.
        
    -Type <FolderType[]>
        Specifies the type of the folders you want to retrieve. The valid values are VM, HostAndCluster, Datastore, Network, and Datacenter.
        
    -Tag <Tag[]>
        Returns only the folders that are associated with any of the specified tags.
        
    -Server <VIServer[]>
        Specifies the vSphere servers on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -Name <String[]>
        Specifies the names of the folders you want to retrieve.
        
    -NoRecursion
        Indicates that you want to disable  the  recursive behavior of the command.
        
    -RelatedObject <FolderRelatedObjectBase[]>
        Specifies objects to retrieve one or more Folder objects that are related to them. This parameter accepts OMResource​ objects.
        
    -Id <String[]>
        Specifies the IDs of the folders you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$server = Connect-VIServer -Server 10.23.112.235
    
    Get-Folder -Server $server -Name Folder
    
    Retrieves the folder named Folder on the server with IP address 10.23.112.235.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Folder -NoRecursion
    
    Retrieves the root folder.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-Folder -Location $folder
    
    Gets all folders in the specified location.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$folder = Get-Folder | Select -first 1
    
    Get-Folder -ID $folder.ID
    
    Gets a folder by ID.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-Folder -Type Network
    
    Gets all network folders.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Folder -examples".
    For more information, type: "get-help Get-Folder -detailed".
    For technical information, type: "get-help Get-Folder -full".
    For online help, type: "get-help Get-Folder -online"

Get-HAPrimaryVMHost
-------------------------

NAME
    Get-HAPrimaryVMHost
    
SYNOPSIS
    On vCenter Server 5.0 and later, this cmdlet retrieves the master host of the specified HA cluster.
    On vCenter Server versions earlier than 5.0, this cmdlet retrieves the primary HA (High-Availability) hosts for the specified clusters.
    
    
SYNTAX
    Get-HAPrimaryVMHost [[-Cluster] <Cluster[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    On vCenter Server 5.0 and later, the cmdlet retrieves the master host of the specified HA cluster.
    On vCenter Server versions earlier than 5.0, the cmdlet retrieves the primary HA (High-Availability) hosts for the specified clusters.
    

PARAMETERS
    -Cluster <Cluster[]>
        Specifies the clusters for which you want to retrieve the HA primary hosts.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Cluster | Get-HAPrimaryVMHost
    
    Retrieves the HA primary hosts of the available cluster.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-HAPrimaryVMHost Cluster
    
    Retrieves the HA primary host of the cluster named Cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-HAPrimaryVMHost -examples".
    For more information, type: "get-help Get-HAPrimaryVMHost -detailed".
    For technical information, type: "get-help Get-HAPrimaryVMHost -full".
    For online help, type: "get-help Get-HAPrimaryVMHost -online"

Get-HardDisk
-------------------------

NAME
    Get-HardDisk
    
SYNOPSIS
    This cmdlet retrieves the virtual hard disks available on a vCenter Server system.
    
    
SYNTAX
    Get-HardDisk [-Id <String[]>] [-Path <DatastoreItem[]>] [-DiskType <DiskType[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-HardDisk -RelatedObject <HardDiskRelatedObjectBase[]> [<CommonParameters>]
    
    Get-HardDisk [-Id <String[]>] -Datastore <Datastore[]> [-DatastorePath <String[]>] [-DiskType <DiskType[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-HardDisk [-Id <String[]>] [-DiskType <DiskType[]>] [-Server <VIServer[]>] [[-VM] <VirtualMachine[]>] [[-Template] <Template[]>] [[-Snapshot] <Snapshot[]>] [-Name <String[]>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet returns the virtual hard disks available on a vCenter Server system. You can retrieve a hard disk by specifying the virtual machines, templates, or snapshots to which it 
    belongs. If the hard disk is not attached to any virtual machines, templates, or snapshots, you can search for it in datastores or retrieve it by providing a datastore path to the file 
    where the virtual hard disk is stored. In this case, you might not be able to derive disk type info, and the value of the DiskType property of the hard disk is Unknown.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the hard disks you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Path <DatastoreItem[]>
        Specifies the file paths to the virtual hard disks you want to retrieve. The cmdlet searches recursively the specified locations.
        
    -DiskType <DiskType[]>
        Specifies the type of the hard disks you want to retrieve. The valid values are rawVirtual, rawPhysical, flat, and unknown. If the hard disk is not attached to any virtual machines, 
        templates, or snapshots, you can retrieve it by providing a datastore path to the file where the virtual hard disk is stored. In this case, you might not be able to derive disk type 
        info, and the value of the DiskType property of the hard disk is Unknown.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -RelatedObject <HardDiskRelatedObjectBase[]>
        Specifies objects to retrieve one or more HardDisk objects that are related to them.
        
    -Datastore <Datastore[]>
        Specifies the datastores or datastore clusters you want to search for hard disks. This parameter is required when retrieving a hard disk that is attached to no virtual machines, 
        templates, or snapshots.
        
    -DatastorePath <String[]>
        Specifies datastore paths to the hard disks you want to retrieve. The paths must be in the following format: [datastore_name] <file_path>, where [datastore_name] is the name of the 
        datastore in square brackets and <file_path> is a slash-delimited path from the root of the datastore to the virtual hard disk file.
        The cmdlet searches recursively the specified locations.
        
        To learn more about the Datastore Provider, in the vSphere PowerCLI service console, type:
        
        help about_vimdatastore
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines from which you want to retrieve the hard disks.
        
    -Template <Template[]>
        Specifies the virtual machine templates from which you want to retrieve the hard disks.
        
    -Snapshot <Snapshot[]>
        Specifies the snapshots from which you want to retrieve the hard disks.
        
    -Name <String[]>
        Specifies the names of the SCSI hard disks you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-HardDisk -VM VM
    
    Retrieves the hard disks of the virtual machine named VM.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-HardDisk -VM $vm -DiskType flat
    
    Retrieves the flat hard disks from the specified virtual machines.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-HardDisk -Datastore "Storage1" -DatastorePath "[Storage1] myVM/"
    
    Retrieves the hard disks from the specified datastore and from the specified datastore path.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-HardDisk -examples".
    For more information, type: "get-help Get-HardDisk -detailed".
    For technical information, type: "get-help Get-HardDisk -full".
    For online help, type: "get-help Get-HardDisk -online"

Get-Inventory
-------------------------

NAME
    Get-Inventory
    
SYNOPSIS
    This cmdlet retrieves the inventory items available on a vCenter Server system.
    
    
SYNTAX
    Get-Inventory [-Location <VIContainer[]>] [[-Name] <String[]>] [-NoRecursion] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Inventory -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the inventory items available on a vCenter Server system. The cmdlet returns a set of inventory items that correspond to the filter criteria specified by the 
    provided parameters. To specify a server different from the default one, use the -Server parameter.
    

PARAMETERS
    -Location <VIContainer[]>
        Specifies vSphere container objects (such as folders, datacenters, and clusters) you want to search for inventory items.
        
    -Name <String[]>
        Specifies the names of the inventory objects you want to retrieve.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the inventory objects you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Inventory -Location Datacenter -Name *Pool
    
    Retrieves all inventory items in the Datacenter datacenter, whose names end with "Pool".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Inventory -examples".
    For more information, type: "get-help Get-Inventory -detailed".
    For technical information, type: "get-help Get-Inventory -full".
    For online help, type: "get-help Get-Inventory -online"

Get-IScsiHbaTarget
-------------------------

NAME
    Get-IScsiHbaTarget
    
SYNOPSIS
    This cmdlet retrieves the available iSCSI HBA targets.
    
    
SYNTAX
    Get-IScsiHbaTarget [[-IScsiHba] <IScsiHba[]>] [-Type <IScsiHbaTargetType[]>] [[-IPEndPoint] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available iSCSI HBA targets. The cmdlet retrieves the configured targets (send and static) on the specified iSCSI storage adapters. If IPEndPoint is specified, 
    filters the result by <Address>:<Port>. If no IScsiHba is provided - retrieves all targets from the entire inventory.
    

PARAMETERS
    -IScsiHba <IScsiHba[]>
        Specifies the iSCSI HBA whose targets you want to retrieve.
        
    -Type <IScsiHbaTargetType[]>
        Specifies the type of the iSCSI HBA targets you want to retrieve. The valid values are Send and Static.
        
    -IPEndPoint <String[]>
        Specifies <Address>:<Port> to filter the available iSCSI HBA targets.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-IScsiHbaTarget -Address "10.23.84.73" -Type Send
    
    Retrieves the targets of type Send on the specified address.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-IScsiHbaTarget -examples".
    For more information, type: "get-help Get-IScsiHbaTarget -detailed".
    For technical information, type: "get-help Get-IScsiHbaTarget -full".
    For online help, type: "get-help Get-IScsiHbaTarget -online"

Get-Log
-------------------------

NAME
    Get-Log
    
SYNOPSIS
    This cmdlet retrieves entries from vSphere logs.
    
    
SYNTAX
    Get-Log [-Key] <String[]> [[-VMHost] <VMHost[]>] [[-StartLineNum] <Int32>] [[-NumLines] <Int32>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Log [[-VMHost] <VMHost[]>] [-Bundle] [-DestinationPath] <String> [-Server <VIServer[]>] [-RunAsync] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves entries from vSphere logs. Returns portions of the log files according to the criteria provided by the cmdlet parameters.
    To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Key <String[]>
        Specifies the key identifier of the log file you want to retrieve. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve logs. If no value is given to this parameter, the command returns logs only for the default vCenter Server system.
        
    -StartLineNum <Int32>
        Specifies the start line number for reading from the logs.
        
    -NumLines <Int32>
        Specifies the number of the lines you want to retrieve from the logs.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Bundle
        Indicates whether to retrieve a diagnostic bundle of logs from vCenter Server.
        
    -DestinationPath <String>
        Specifies a local file path where you want to save the log bundle.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$keys = Get-LogType
    
    Get-Log -Key $keys[0]
    
    Obtain the available keys. Obtains the first log file from the currently connected vCenter Server system.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhost = Get-VMHost Host
    
    $keyList = Get-LogType -VMHost $vmhost
    
    $vmhost | Get-Log -Key $keyList[0] -StartLineNum 1 -NumLines 100
    
    Retrieve the first one hundred log lines for the specified host and key.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost Host | Get-Log -Bundle -DestinationPath "D:\VMHostBundeLog"
    
    Retrieve a bundle log for the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Log -examples".
    For more information, type: "get-help Get-Log -detailed".
    For technical information, type: "get-help Get-Log -full".
    For online help, type: "get-help Get-Log -online"

Get-LogType
-------------------------

NAME
    Get-LogType
    
SYNOPSIS
    This cmdlet retrieves information about the log types available on a virtual machine host.
    
    
SYNTAX
    Get-LogType [[-VMHost] <VMHost[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about the log types available on a virtual machine host. If no virtual machine host is specified, the cmdlet retrieves the log types for the default 
    vCenter Server system.  To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to search for log types. If no value is given to this parameter, the command searches for logs only on the default vCenter Server system.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vmhost = Get-VMHost -State "Connected"
    
    Get-Logtype -VMHost $vmhost
    
    Gets information about the available logs on the virtual machine hosts whose state is Connected.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-LogType -examples".
    For more information, type: "get-help Get-LogType -detailed".
    For technical information, type: "get-help Get-LogType -full".
    For online help, type: "get-help Get-LogType -online"

Get-NetworkAdapter
-------------------------

NAME
    Get-NetworkAdapter
    
SYNOPSIS
    This cmdlet retrieves the virtual network adapters  available on a vCenter Server system.
    
    
SYNTAX
    Get-NetworkAdapter [-Id <String[]>] [-Server <VIServer[]>] [[-VM] <VirtualMachine[]>] [[-Template] <Template[]>] [[-Snapshot] <Snapshot[]>] [-Name <String[]>] [<CommonParameters>]
    
    Get-NetworkAdapter -RelatedObject <NetworkAdapterRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the virtual network adapters  available on a vCenter Server system. The cmdlet returns a set of virtual network adapters assigned to the virtual machines, 
    templates, and snapshots specified by the  VirtualMachine, Template, and Snapshot parameters. At least one of these parameters must be provided. To specify a server different from the 
    default one, use the Server parameter.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the network adapters you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines from which you want to retrieve virtual network adapters.
        
    -Template <Template[]>
        Specifies the templates from which you want to retrieve virtual network adapters.
        
    -Snapshot <Snapshot[]>
        Specifies the snapshots from which you want to retrieve virtual network adapters.
        
    -Name <String[]>
        Specifies the names of the network adapters you want to retrieve.
        
    -RelatedObject <NetworkAdapterRelatedObjectBase[]>
        Specify an object to retrieve one or more network adapters that are related to the object. This parameter accepts standard and distributed port groups.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-NetworkAdapter -VM MyVM
    
    Retrieves the network adapters added to the the MyVM virtual machine.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVDPortgroup = Get-VDPortGroup -Name "MyVDPortGroup"
    $myNetworkAdapters = Get-NetworkAdapter -RelatedObject $myVDPortgroup
    
    Retrieves all network adapters connected to the specified port group and stores them in the myNetworkAdapters variable.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-NetworkAdapter -examples".
    For more information, type: "get-help Get-NetworkAdapter -detailed".
    For technical information, type: "get-help Get-NetworkAdapter -full".
    For online help, type: "get-help Get-NetworkAdapter -online"

Get-NicTeamingPolicy
-------------------------

NAME
    Get-NicTeamingPolicy
    
SYNOPSIS
    This cmdlet retrieves the NIC teaming policies of the specified virtual switches and virtual port groups.
    
    
SYNTAX
    Get-NicTeamingPolicy [-VirtualSwitch] <VirtualSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-NicTeamingPolicy [-VirtualPortGroup] <VirtualPortGroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the NIC teaming policies of the specified virtual switches and virtual port groups. The NIC teaming policy determines how network traffic is distributed between 
    adapters and how traffic is reorganized in case of adapter failure.
    

PARAMETERS
    -VirtualSwitch <VirtualSwitch[]>
        Specifies the virtual switches whose NIC teaming policy you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VirtualPortGroup <VirtualPortGroup[]>
        Specifies the port groups whose NIC teaming policy you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VirtualPortGroup -VMHost (Get-VMHost *.128) -Name Virtual* | Get-NicTeamingPolicy | fl is*
    
    For the specified virtual port groups, retrieves the Nic teaming policy settings whose names start with "is".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VirtualSwitch -VMHost (Get-VMHost *.128) -Name vswitch | Get-NicTeamingPolicy
    
    Retrieves the Nic teaming policy of the specified virtual switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-NicTeamingPolicy -examples".
    For more information, type: "get-help Get-NicTeamingPolicy -detailed".
    For technical information, type: "get-help Get-NicTeamingPolicy -full".
    For online help, type: "get-help Get-NicTeamingPolicy -online"

Get-OSCustomizationNicMapping
-------------------------

NAME
    Get-OSCustomizationNicMapping
    
SYNOPSIS
    This cmdlet retrieves the configured NIC setting mappings for the specified OS customization specification.
    
    
SYNTAX
    Get-OSCustomizationNicMapping [-OSCustomizationSpec] <OSCustomizationSpec[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the configured NIC setting mappings for the specified OS customization specification.
    

PARAMETERS
    -OSCustomizationSpec <OSCustomizationSpec[]>
        Specifies the OS customization specification for which you want to retrieve the NIC settings mapping.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$spec1 = Get-OSCustomizationSpec "test"
    
    $spec2 = Get-OSCustomizationSpec "test_old"
    
    Get-OSCustomizationNicMapping -OSCustomizationSpec $spec1,$spec2
    
    Retrieves the NIC mappings of the "test" and "test_old" OS customization specifications.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-OSCustomizationNicMapping -examples".
    For more information, type: "get-help Get-OSCustomizationNicMapping -detailed".
    For technical information, type: "get-help Get-OSCustomizationNicMapping -full".
    For online help, type: "get-help Get-OSCustomizationNicMapping -online"

Get-OSCustomizationSpec
-------------------------

NAME
    Get-OSCustomizationSpec
    
SYNOPSIS
    This cmdlet retrieves the OS customization specifications available on a vCenter Server system.
    
    
SYNTAX
    Get-OSCustomizationSpec [[-Server] <VIServer[]>] [[-Name] <String[]>] [-Id <String[]>] [-Type <OSCustomizationSpecType>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the OS customization specifications available on a vCenter Server system.  To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Name <String[]>
        Specifies the names of the OS customization specifications you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the OS customization specifications you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Type <OSCustomizationSpecType>
        Specifis the type of the OS customization specifications you want to retrieve. The valid values are Persistent and NonPersistent.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-OSCustomizationSpec "test"
    
    Retrieves from the server the OS customization specification named 'test'.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-VM -Name VM -VMHost Host -Template Template -OSCustomizationSpec $spec
    
    Creates a new virtual machine from a template and configures it using a customization specification.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-OSCustomizationSpec -examples".
    For more information, type: "get-help Get-OSCustomizationSpec -detailed".
    For technical information, type: "get-help Get-OSCustomizationSpec -full".
    For online help, type: "get-help Get-OSCustomizationSpec -online"

Get-OvfConfiguration
-------------------------

NAME
    Get-OvfConfiguration
    
SYNOPSIS
    This cmdlet retrieves the OVF configuration object for the specified OVF or OVA package.
    
    
SYNTAX
    Get-OvfConfiguration [-Ovf] <String> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the OVF configuration object for the specified OVF or OVA package. Only user-configurable properties are returned.
    

PARAMETERS
    -Ovf <String>
        Specifies the local path to the OVF or OVA package for which the user-configurable options are returned. URL paths are not supported.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$ovfPath = "myOvfTemplate.ovf"
    $ovfConfig = Get-OvfConfiguration -Ovf $ovfPath
    $ovfConfig.vami.VM1.ip0.Value = "10.23.101.2"
    $ovfConfig.vami.VM2.ip0.Value = "10.23.101.3"
    Import-VApp $ovfPath -OvfConfiguration $ovfConfig -VMHost $vmHost
    
    Modifies a specific OVF property and passes it to the Import-VApp cmdlet.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-OvfConfiguration -examples".
    For more information, type: "get-help Get-OvfConfiguration -detailed".
    For technical information, type: "get-help Get-OvfConfiguration -full".
    For online help, type: "get-help Get-OvfConfiguration -online"

Get-PassthroughDevice
-------------------------

NAME
    Get-PassthroughDevice
    
SYNOPSIS
    This cmdlet retrieves the pass-through devices available on the specified hosts, virtual machines, and templates.
    
    
SYNTAX
    Get-PassthroughDevice [-VM <VirtualMachine[]>] [-VMHost <VMHost[]>] [-Template <Template[]>] [[-Type] <PassthroughDeviceType>] [[-Name] <String[]>] [-Id <String[]>] [-Server 
    <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the pass-through devices available on the specified hosts, virtual machines, and templates.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines for which you want to retrieve the pass-through devices.
        
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve the pass-through devices.
        
    -Template <Template[]>
        Specifies the virtual machine templates for which you want to retrieve the pass-through devices.
        
    -Type <PassthroughDeviceType>
        Specifies the type of the pass-through devices you want to retrieve. The valid values are SCSI and PCI. PCI is supported only on vCenter Server 4.1 and ESX 4.1 and later.
        
    -Name <String[]>
        Specifies the names of the pass-through devices you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the pass-through devices you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-PassthroughDevice -VMHost Host -Type Scsi
    
    Retrieves the SCSI passthrough devices of the Host host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-PassthroughDevice -examples".
    For more information, type: "get-help Get-PassthroughDevice -detailed".
    For technical information, type: "get-help Get-PassthroughDevice -full".
    For online help, type: "get-help Get-PassthroughDevice -online"

Get-PowerCLIConfiguration
-------------------------

NAME
    Get-PowerCLIConfiguration
    
SYNOPSIS
    This cmdlet retrieves the vSphere PowerCLI proxy configuration and default servers policy.
    
    
SYNTAX
    Get-PowerCLIConfiguration [-Scope <ConfigurationScope>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the vSphere PowerCLI proxy configuration and default servers policy.
    

PARAMETERS
    -Scope <ConfigurationScope>
        Specifies a scope to filter vSphere PowerCLI settings by. The parameter accepts Session, User, and All Users values.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-PowerCLIConfiguration
    
    Retrieves information about the vSphere PowerCLI configuration for every scope.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-PowerCLIConfiguration -Scope User
    
    Retrieves information about the vSphere PowerCLI configuration for the User scope.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-PowerCLIConfiguration -Scope ([VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]::Session -bor [VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]::User)
    
    Retrieves information about the vSphere PowerCLI configuration for the User and Session scopes.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-PowerCLIConfiguration -examples".
    For more information, type: "get-help Get-PowerCLIConfiguration -detailed".
    For technical information, type: "get-help Get-PowerCLIConfiguration -full".
    For online help, type: "get-help Get-PowerCLIConfiguration -online"

Get-PowerCLIVersion
-------------------------

NAME
    Get-PowerCLIVersion
    
SYNOPSIS
    This cmdlet retrieves the versions of the installed PowerCLI snapins.
    
    
SYNTAX
    Get-PowerCLIVersion [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the versions of the installed PowerCLI snapins.
    

PARAMETERS
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-PowerCLIVersion
    
    Retrieves the version of vSphere PowerCLI.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-PowerCLIVersion | select -expand SnapinVersions
    
    Lists the versions of additional PowerCLI snapins.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-PowerCLIVersion -examples".
    For more information, type: "get-help Get-PowerCLIVersion -detailed".
    For technical information, type: "get-help Get-PowerCLIVersion -full".
    For online help, type: "get-help Get-PowerCLIVersion -online"

Get-ResourcePool
-------------------------

NAME
    Get-ResourcePool
    
SYNOPSIS
    This cmdlet retrieves the resource pools available on a vCenter Server system.
    
    
SYNTAX
    Get-ResourcePool [[-Name] <String[]>] [-Location <VIContainer[]>] [-Server <VIServer[]>] [-Tag <Tag[]>] [-NoRecursion] [<CommonParameters>]
    
    Get-ResourcePool [[-Name] <String[]>] -VM <VirtualMachine[]> [-Server <VIServer[]>] [-Tag <Tag[]>] [<CommonParameters>]
    
    Get-ResourcePool -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-ResourcePool -RelatedObject <ResourcePoolRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    Retrieves the resource pools available on a vCenter Server system. The cmdlet returns a set of resource pools that correspond to the filter criteria provided by the cmdlet parameters. 
    Virtual machine hosts have a hidden resource pool named Resources, which is a parent of all resource pools of the host. To specify a server different from the default one, use the 
    Server parameter.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the resource pools you want to retrieve.
        
    -Location <VIContainer[]>
        Specifies vSphere container objects (such as folders, datacenters, and clusters) you want to search for resource pools.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Tag <Tag[]>
        Returns only the resource pools that are associated with any of the specified tags.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -VM <VirtualMachine[]>
        Specifies virtual machines to filter the resource pools that contain at least one of them.
        
    -Id <String[]>
        Specifies the IDs of the resource pools you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <ResourcePoolRelatedObjectBase[]>
        Specifies objects to retrieve one or more ResourcePool objects that are related to them. This parameter accepts ProviderVdc and OMResource objects.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$server = Connect-VIServer -Server 10.23.112.235
    
    Get-ResourcePool -Server $server -VM VM
    
    Retrieves information of the resource pool to which the virtual machine MS Win belongs.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ResourcePool -examples".
    For more information, type: "get-help Get-ResourcePool -detailed".
    For technical information, type: "get-help Get-ResourcePool -full".
    For online help, type: "get-help Get-ResourcePool -online"

Get-ScsiController
-------------------------

NAME
    Get-ScsiController
    
SYNOPSIS
    This cmdlet retrieves the virtual SCSI controllers assigned to the specified HardDisk, VirtualMachine, Template, and Snapshot objects.
    
    
SYNTAX
    Get-ScsiController [-Id <String[]>] [-HardDisk <HardDisk[]>] [-Server <VIServer[]>] [[-VM] <VirtualMachine[]>] [[-Template] <Template[]>] [[-Snapshot] <Snapshot[]>] [-Name <String[]>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the virtual SCSI controllers assigned to the specified HardDisk, VirtualMachine, Template, and Snapshot objects.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the SCSI controllers you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -HardDisk <HardDisk[]>
        Filters the SCSI controllers by the hard disks they belong to.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Filters the SCSI controllers by the virtual machines they belong to.
        
    -Template <Template[]>
        Filters the SCSI controllers by the virtual machine templates they belong to.
        
    -Snapshot <Snapshot[]>
        Filters the SCSI controllers by the snapshots they belong to.
        
    -Name <String[]>
        Specifies the names of the SCSI controllers you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM VM1, VM2 | Get-ScsiController
    
    Retrieves the SCSI controllers of the VM1 and VM2 virtual machines.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VM VM | Get-Snapshot Snapshot | Get-ScsiController
    
    Retrieves the SCSI controllers of a virtual machine snapshot.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$disk = Get-VM VM | Get-HardDisk | Select -First 2
    
    Get-ScsiController -HardDisk $disk
    
    Retrieves the SCSI controllers of the first two hard disks of a virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ScsiController -examples".
    For more information, type: "get-help Get-ScsiController -detailed".
    For technical information, type: "get-help Get-ScsiController -full".
    For online help, type: "get-help Get-ScsiController -online"

Get-ScsiLun
-------------------------

NAME
    Get-ScsiLun
    
SYNOPSIS
    This cmdlet retrieves the SCSI devices available on the vCenter Server system.
    
    
SYNTAX
    Get-ScsiLun [[-CanonicalName] <String[]>] [-VmHost] <VMHost[]> [-Key <String[]>] [-LunType <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-ScsiLun -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-ScsiLun [[-CanonicalName] <String[]>] [-Hba] <Hba[]> [-Key <String[]>] [-LunType <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-ScsiLun [[-CanonicalName] <String[]>] [-Datastore] <Datastore[]> [-Key <String[]>] [-LunType <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the SCSI devices available on the vCenter Server system. Examples of SCSI logical unit objects include disks which may contain file system volumes or parts of 
    volumes for the host or might serve as raw disks to a virtual machine. Other examples include SCSI passthrough devices that can be used by virtual machines. When retrieving ScsiLun 
    objects by Datastore, the cmdlet returns a ScsiLun object for each host connected to the specified datastore. ScsiLun objects can be differed by their VMHost property.
    

PARAMETERS
    -CanonicalName <String[]>
        Specifies the canonical name of the SCSI devices you want to retrieve. An example of a SCSI canonical name for Windows is "vmhba0:0:0:0".
        
    -VmHost <VMHost[]>
        Specifies the hosts from which you want to retrieve the virtual SCSI devices.
        
    -Key <String[]>
        Specifies the linkable identifiers of the SCSI devices you want to retrieve.
        
    -LunType <String[]>
        Specifies the type of the SCSI devices you want to retrieve. The following types are valid:
        
        cdrom
        communications
        disk
        enclosure
        mediaChanger
        opticalDevice
        printer
        processor
        scanner
        storageArrayController
        tape
        unknown
        worm
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the SCSI devices that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Hba <Hba[]>
        Specifies the storage adapters for which you want to retrieve the SCSI devices.
        
    -Datastore <Datastore[]>
        Specifies the datastores for which you want to retrieve the SCSI devices. This parameter is supported only for VMFS volumes.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-ScsiLun -VMHost 10.23.123.100 -LunType disk
    
    Retrieves the SCSI devices of "disk" type for the virtual machine host with an IP address 10.23.123.100.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHost | Get-ScsiLun -CanonicalName "naa.*"
    
    Retrieves the SCSI devices with canonical names that starts with "naa." on the provided host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$hba = Get-VMHost | Get-VMHostHba -Type ParallelScsi
    
    Get-ScsiLun -Hba $hba -LunType disk
    
    Retrieves the SCSI devices of "disk" type for the specified HBA devices.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-ScsiLun -Datastore Datastore -Key "key-vim.host.ScsiDisk-*"
    
    For the Datastore datastore, retrieves the SCSI devices that have the specified linkable identifiers.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ScsiLun -examples".
    For more information, type: "get-help Get-ScsiLun -detailed".
    For technical information, type: "get-help Get-ScsiLun -full".
    For online help, type: "get-help Get-ScsiLun -online"

Get-ScsiLunPath
-------------------------

NAME
    Get-ScsiLunPath
    
SYNOPSIS
    This cmdlet retrieves the list of vmhba paths to a specified SCSI device.
    
    
SYNTAX
    Get-ScsiLunPath [[-Name] <String[]>] [-ScsiLun] <ScsiLun[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the list of vmhba paths to a specified SCSI device.
    

PARAMETERS
    -Name <String[]>
        Specifies the name of the SCSI device whose vmhba paths you want to retrieve.
        
    -ScsiLun <ScsiLun[]>
        Specifies the SCSI device whose vmhba paths you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$scsilun = Get-ScsiLun -VMHost 10.23.123.100 -LunType disk
    
    Get-ScsiLunPath $scsilun
    
    Retrieves the vmhba path to the specified SCSI device.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ScsiLunPath -examples".
    For more information, type: "get-help Get-ScsiLunPath -detailed".
    For technical information, type: "get-help Get-ScsiLunPath -full".
    For online help, type: "get-help Get-ScsiLunPath -online"

Get-SecurityPolicy
-------------------------

NAME
    Get-SecurityPolicy
    
SYNOPSIS
    This cmdlet retrieves the security policy for virtual port groups or the default port security policy for virtual switches.
    
    
SYNTAX
    Get-SecurityPolicy [-VirtualSwitch] <VirtualSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-SecurityPolicy [-VirtualPortGroup] <VirtualPortGroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the security policy for virtual port groups or the default port security policy for virtual switches.
    

PARAMETERS
    -VirtualSwitch <VirtualSwitch[]>
        Specifies a virtual switch for which you want to retrieve the default port security policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -VirtualPortGroup <VirtualPortGroup[]>
        Specifies a virtual port group for which you want to retrieve the security policy.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VirtualSwitch "MyVirtualSwitch" | Get-SecurityPolicy
    
    Retrieves the security policy of a virtual switch named "MyVirtualSwitch".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VirtualPortGroup "MyPortgroup" | Get-SecurityPolicy
    
    Retrieves the security policy of a virtual switch port group named "MyPortgroup".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-SecurityPolicy -examples".
    For more information, type: "get-help Get-SecurityPolicy -detailed".
    For technical information, type: "get-help Get-SecurityPolicy -full".
    For online help, type: "get-help Get-SecurityPolicy -online"

Get-Snapshot
-------------------------

NAME
    Get-Snapshot
    
SYNOPSIS
    This cmdlet retrieves the virtual machine snapshots available on a vCenter Server system.
    
    
SYNTAX
    Get-Snapshot [[-Name] <String[]>] [-Id <String[]>] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet returns information about the snapshots that correspond to the filter criteria provided by the Name and VM parameters.  The disk size of the snapshots is retrieved only if 
    you have the "Datastore/Browse datastore" privilege to the datastore where the shapshot is located. Otherwise, the following message is displayed: "Unable to populate snapshot size due 
    to unsufficient permissions."
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the snapshots you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the snapshots you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose snapshots you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you 
        run existing scripts on future PowerCLI versions, specify the parameter by name.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Snapshot -VM VM -Name 'Before ServicePack 2'
    
    Retrieves the snapshot named "Before ServicePack2" of the VM virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Snapshot -examples".
    For more information, type: "get-help Get-Snapshot -detailed".
    For technical information, type: "get-help Get-Snapshot -full".
    For online help, type: "get-help Get-Snapshot -online"

Get-Stat
-------------------------

NAME
    Get-Stat
    
SYNOPSIS
    This cmdlet retrieves the statistical information available on a vCenter Server system.
    
    
SYNTAX
    Get-Stat [-Entity] <VIObject[]> [-Common] [-Memory] [-Cpu] [-Disk] [-Network] [-Stat <String[]>] [-Start <DateTime>] [-Finish <DateTime>] [-MaxSamples <Int32>] [-IntervalMins <Int32[]>] 
    [-IntervalSecs <Int32[]>] [-Instance <String[]>] [-Realtime] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the statistical information available on a vCenter Server system for each provided entity. For example, if the CPU parameter is set to $true, collects the average 
    CPU usage and the average CPU usagemhz counters as appropriate for each entity. If the Stat parameter is specified, collects all provided named stats counters. Counters are provided 
    using a dotted notation of the form "counter group"."counter name"."rollup type". For example: "cpu.usage.min". The cmdlet uses the Start time, if provided, and the Finish time, if 
    provided, along with the MaxSamples, if provided, to bound the data collection. If intervalSecs is provided,  the closest matching available interval is used. For each statistics sample 
    on the server, the cmdlet returns a Sample object. The Instance property of the Sample object shows the serial number of the device for which a statistics value is taken. If the 
    Instance property is empty ("), this indicates that the statistics sample contains an average statistic value for all specified devices. If you are connected to a vCenter Server and 
    Get-Stat is run for a host entity, the cmdlet returns only the statistics available on the vCenter Server.
    

PARAMETERS
    -Entity <VIObject[]>
        Specifies the objects (such as virtual machine, virtual machine host, resource pool, and so on) whose statistics you want to retrieve.
        
    -Common
        Indicates whether the command collects common CPU, disk, memory and network statistics.
        
    -Memory
        Indicates whether the command collects common memory statistics, such as the mem usage, mem vmmemctl, mem active and mem granted counters as appropriate for each entity.
        
    -Cpu
        Indicates whether the command collects common CPU statistics, such as the average CPU usage and average CPU usagemhz counters as appropriate for each entity.
        
    -Disk
        Indicates whether the command collects common disk statistics, such as the average disk usage, average disk read and average disk write counters as appropriate for each entity.
        
    -Network
        Indicates whether the command collects common network statistics, such as the average network usage, average network transmitted and average network received counters as appropriate 
        for each entity.
        
    -Stat <String[]>
        Specifies the identifiers of the statistics you want to retrieve. Counters are provided using a dotted notation of the form "counter group"."counter name"."rollup type". For 
        example, "cpu.usage.min".
        
    -Start <DateTime>
        Specifies the beginning of the time range for which you want to collect statistics. The valid format is dd/mm/yyyy.
        
    -Finish <DateTime>
        Specifies the end of the time range for which you want to collect statistics. The valid format is dd/mm/yyyy.
        
    -MaxSamples <Int32>
        Specifies the maximum number of samples for each statistic.
        
    -IntervalMins <Int32[]>
        Specifies one or more intervals in minutes of the statistics samples you want to retrieve. The closest available statistics interval is taken. To retrieve statistics samples for all 
        available intervals, pass *.
        If the IntervalMins parameter is not specified, the samples with the best sample rate are retrieved. A best sample rate is the highest sample rate, whose relevant period contains 
        the relevant periods for all other sample rates. A relevant period is the period that starts no earlier than the oldest sample still retained, and is a subset of a query period 
        specified by the user.
        
    -IntervalSecs <Int32[]>
        Specifies one or more intervals in seconds of the statistics samples you want to retrieve. The closest available statistics interval is taken. To retrieve statistics samples for all 
        available intervals, pass *.
        
    -Instance <String[]>
        Specifies the Instance property of the statistics you want to retrieve.
        
    -Realtime
        Indicates whether the command collects real time statistics.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Stat -Entity $VM -Start 5/5/2013 -Finish 7/10/2013 -Disk -IntervalSecs 300
    
    Prints the disk statistics for the specified time interval for the first virtual machine, retrieved by the Get-VM cmdlet.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Stat -Entity $MyVMHost -Cpu -Instance 0
    
    Retrieves the CPU statistics for the first processor of a multiprocessor host.
    
    Note: This command can only work with a direct ESX connection.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost -Name "MyVMHost" | Get-Stat -Network -IntervalSecs 20
    
    Retrieves the network usage statistics for the specified host for the specified time interval.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VM -Name "MyVM" | Get-Stat -Stat "mem.usage.average" -Start $MyStartDateTime -Finish $MyFinishDateTime -MaxSamples 10
    
    Retrieves the average memory usage statistics for the specified virtual machine between the specified start and finish date and time. The maximum number of retrieved samples is limited 
    to 10.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-VM -Name "MyVM" | Get-Stat -CPU -Memory -Realtime
    
    Retrieves the real-time CPU and memory usage statistics for the specified virtual machine.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>Get-VMHost -Name "MyVMHost" | Get-Stat -Common
    
    Retrieves the common statistics for the specified host.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>Get-Stat -Entity "MyVMHost" -Disk
    
    Retrieves the disk usage statistics for the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Stat -examples".
    For more information, type: "get-help Get-Stat -detailed".
    For technical information, type: "get-help Get-Stat -full".
    For online help, type: "get-help Get-Stat -online"

Get-StatInterval
-------------------------

NAME
    Get-StatInterval
    
SYNOPSIS
    This cmdlet retrieves the available statistics intervals and filters them using the provided parameters.
    
    
SYNTAX
    Get-StatInterval [[-Name] <String[]>] [[-SamplingPeriodSecs] <Int32[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available statistics intervals and filters them using the provided parameters.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the statistics intervals you want to retrieve.
        
    -SamplingPeriodSecs <Int32[]>
        Specifies the sampling period of the statistics intervals you want to retrieve. The sampling period is an integer that defines (in seconds) the interval of the statistics sample.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-StatInterval
    
    Retrieves the available statistics intervals.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-StatInterval -examples".
    For more information, type: "get-help Get-StatInterval -detailed".
    For technical information, type: "get-help Get-StatInterval -full".
    For online help, type: "get-help Get-StatInterval -online"

Get-StatType
-------------------------

NAME
    Get-StatType
    
SYNOPSIS
    This cmdlet retrieves the available statistics types for a inventory object.
    
    
SYNTAX
    Get-StatType [[-Name] <String[]>] [-Entity] <VIObject[]> [-Start <DateTime>] [-Finish <DateTime>] [-Interval <StatInterval[]>] [-Realtime] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available statistics types for a virtual machine, virtual machine host, cluster, or resource pool. Performance statistics types can be filtered by their names, 
    start and finish times,  and collection intervals. If the Realtime parameter is set, the Start and Finish parameters are ignored.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the statistics types you want to retrieve.
        
    -Entity <VIObject[]>
        Specifies clusters, virtual machine hosts, resource pools, or virtual machines, for which you want to retrieve the available statistics types.
        
    -Start <DateTime>
        Specifies the beginning of the time range for which the statistics types you want to retrieve are collected. The valid format is dd/mm/yyyy. This value corresponds to the server 
        time. When the start time is omitted, the returned statistics types start from the first available statistics type in the system.
        
    -Finish <DateTime>
        Specifies the end of the time range for which the statistics types you want to retrieve are collected. The valid format is dd/mm/yyyy. This value corresponds to the server time. 
        When the finish time is omitted, the returned result includes up to the most recent statistics type.
        
    -Interval <StatInterval[]>
        Specifies the interval at which the statistics types you want to retrieve are gathered. The interval can be specified by its name or by its sampling period in seconds.
        
    -Realtime
        Indicates that you want to retrieve realtime statistics type as well. If this parameter is set, the Start and Finish parameters are ignored.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-StatType -Entity VM
    
    Retrieves the statistics types collected for the VM virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-StatType -examples".
    For more information, type: "get-help Get-StatType -detailed".
    For technical information, type: "get-help Get-StatType -full".
    For online help, type: "get-help Get-StatType -online"

Get-Tag
-------------------------

NAME
    Get-Tag
    
SYNOPSIS
    This cmdlet retrieves the tags available on a vCenter Server system.
    
    
SYNTAX
    Get-Tag [[-Name] <String[]>] [-Category <TagCategory[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Tag -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the tags available on a vCenter Server system. This cmdlet filters tags by name and category to which tags belong.
    

PARAMETERS
    -Name <String[]>
        Filters the tags by name.
        
    -Category <TagCategory[]>
        Filters the tags by category.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Filters the tags by ID.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Tag -Name "MyTag"
    
    Returns all tags named "MyTag".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Tag -Category "MyCategory1", "MyCategory2" -Name "MyTag"
    
    Returns all tags from the "MyCategory1" and "MyCategory2" categories, named "MyTag".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Tag -examples".
    For more information, type: "get-help Get-Tag -detailed".
    For technical information, type: "get-help Get-Tag -full".
    For online help, type: "get-help Get-Tag -online"

Get-TagAssignment
-------------------------

NAME
    Get-TagAssignment
    
SYNOPSIS
    This cmdlet retrieves the tag assignments of objects.
    
    
SYNTAX
    Get-TagAssignment [[-Entity] <VIObjectCore[]>] [-Category <TagCategory[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the tag assignments of objects. If the Entity parameter is specified, the cmdlet returns only the tag assignments for the corresponding items. If the Category 
    parameter is specified, the cmdlet returns only the tag assignments of tags that belong to the specified category.
    

PARAMETERS
    -Entity <VIObjectCore[]>
        Retrieves the tags associated with the specified items.
        
    -Category <TagCategory[]>
        Returns the tags that belong to the specified categories.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$datastore = Get-DataStore MyDatastore
    Get-TagAssignment -Entity $datastore -Category MyCategory
    
    Retrieves all tag assignments for the $datastore entity that have tags from the "MyCategory" category.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-TagAssignment -examples".
    For more information, type: "get-help Get-TagAssignment -detailed".
    For technical information, type: "get-help Get-TagAssignment -full".
    For online help, type: "get-help Get-TagAssignment -online"

Get-TagCategory
-------------------------

NAME
    Get-TagCategory
    
SYNOPSIS
    This cmdlet retrieves the tag categories available on a vCenter Server system and filters them using the specified cmdlet parameters.
    
    
SYNTAX
    Get-TagCategory [[-Name] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-TagCategory -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the tag categories available on a vCenter Server system and filters them using the specified cmdlet parameters.
    

PARAMETERS
    -Name <String[]>
        Filters the tag categories by name.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Filters the tag categories by ID.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-TagCategory -Name "MyTagCategory" -Server "MyServer"
    
    Retrieves a tag category named "MyTagCategory" from a vCenter Server system.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-TagCategory -examples".
    For more information, type: "get-help Get-TagCategory -detailed".
    For technical information, type: "get-help Get-TagCategory -full".
    For online help, type: "get-help Get-TagCategory -online"

Get-Task
-------------------------

NAME
    Get-Task
    
SYNOPSIS
    This cmdlet retrieves the tasks on a vCenter Server system.
    
    
SYNTAX
    Get-Task [[-Status] <TaskState>] [-Server <VIConnection[]>] [<CommonParameters>]
    
    Get-Task -Id <String[]> [-Server <VIConnection[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the tasks on a vCenter Server system. The cmdlet retrieves information about the current or recent tasks. Use the Status parameter to filter tasks by their current 
    status. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Status <TaskState>
        Specifies the status of the tasks you want to retrieve. The valid values are Error, Queued, Running, and Success. Passing values to this parameter through a pipeline is deprecated 
        and will be disabled in a future release.
        
    -Server <VIConnection[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the tasks that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$serv = Connect-VIServer -Server 10.23.112.235
    
    $task = Get-Task -Server $serv -Status Error
    
    $task
    
    Retrieves information on all tasks on the server with IP address 10.23.112.235, whose state is "Error".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Task -examples".
    For more information, type: "get-help Get-Task -detailed".
    For technical information, type: "get-help Get-Task -full".
    For online help, type: "get-help Get-Task -online"

Get-Template
-------------------------

NAME
    Get-Template
    
SYNOPSIS
    This cmdlet retrieves the virtual machine templates available on a vCenter Server system.
    
    
SYNTAX
    Get-Template [-Location <VIContainer[]>] [-Datastore <StorageResource[]>] [[-Name] <String[]>] [-NoRecursion] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-Template -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the virtual machine templates available on a vCenter Server system. The cmdlet returns a set of templates that correspond to the filter criteria defined by the 
    cmdlet parameters. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Location <VIContainer[]>
        Specifies the vSphere container objects (such as folders, datacenters, and clusters) you want to search for templates.
        
    -Datastore <StorageResource[]>
        Filters templates by the datastores or datastore clusters that they are stored on.
        
    -Name <String[]>
        Specifies the names of the virtual machine templates you want to retrieve.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the virtual machine templates you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Template -Name Web* -Location Datacenter
    
    Retrieves all virtual machine templates in the Datacenter datacenter, whose names start with "Web".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Template -examples".
    For more information, type: "get-help Get-Template -detailed".
    For technical information, type: "get-help Get-Template -full".
    For online help, type: "get-help Get-Template -online"

Get-UsbDevice
-------------------------

NAME
    Get-UsbDevice
    
SYNOPSIS
    This cmdlet retrieves the USB devices available on a vCenter Server system.
    
    
SYNTAX
    Get-UsbDevice [-Id <String[]>] [-Server <VIServer[]>] [[-VM] <VirtualMachine[]>] [[-Template] <Template[]>] [[-Snapshot] <Snapshot[]>] [-Name <String[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the USB devices available on a vCenter Server system. The cmdlet returns a set of virtual USB devices assigned to the virtual machines, templates, and snapshots 
    specified by the  VirtualMachine, Template, and Snapshot parameters. At least one of these parameters must be provided. To specify a server different from the default one, use the 
    Server parameter.
    

PARAMETERS
    -Id <String[]>
        Specifies the IDs of the USB devices you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose virtual USB drives you want to retrieve.
        
    -Template <Template[]>
        Specifies the virtual machine templates whose virtual USB drives you want to retrieve.
        
    -Snapshot <Snapshot[]>
        Specifies the virtual machine snapshots whose virtual USB you want to retrieve. Supported only on vCenter Server 4.1 and ESX 4.1 and later.
        
    -Name <String[]>
        Specifies the names of the USB devices you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-UsbDevice -VM (Get-VM -Location Host)
    
    Retrieves the USB devices attached to the virtual machines on the Host host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-UsbDevice -examples".
    For more information, type: "get-help Get-UsbDevice -detailed".
    For technical information, type: "get-help Get-UsbDevice -full".
    For online help, type: "get-help Get-UsbDevice -online"

Get-VApp
-------------------------

NAME
    Get-VApp
    
SYNOPSIS
    This cmdlet retrieves vApps.
    
    
SYNTAX
    Get-VApp [-Location <VIContainer[]>] [-Tag <Tag[]>] [[-Name] <String[]>] [-NoRecursion] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VApp -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves vApps.
    

PARAMETERS
    -Location <VIContainer[]>
        Specifies Folder, Cluster, Datacenter, VMHost, and ResourcePool objects you want to search for vApps.
        
    -Tag <Tag[]>
        Returns only the vApps that are associated with any of the specified tags.
        
    -Name <String[]>
        Specifies the names of the vApps that you want to retrieve.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the vApps that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-ResourcePool MyResourcePool1 | Get-VApp -NoRecursion
    
    Retrieves all the vApps in the ResourcePool resource pool with no recursion.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VApp -examples".
    For more information, type: "get-help Get-VApp -detailed".
    For technical information, type: "get-help Get-VApp -full".
    For online help, type: "get-help Get-VApp -online"

Get-VDBlockedPolicy
-------------------------

NAME
    Get-VDBlockedPolicy
    
SYNOPSIS
    This cmdlet retrieves the blocking policy for distributed ports.
    
    
SYNTAX
    Get-VDBlockedPolicy -VDPortgroup <VDPortgroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDBlockedPolicy -VDSwitch <VDSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDBlockedPolicy -VDPort <VDPort[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the blocking policy for distributed ports. For distributed port group and vSphere distributed switch parameter sets, the default port policy at the distributed 
    port group or switch level is retrieved.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies a distributed port group for which you want to retrieve the default blocking policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -VDSwitch <VDSwitch[]>
        Specifies a vSphere distributed switch for which you want to retrieve the default blocking policy.
        
    -VDPort <VDPort[]>
        Specifies the distributed ports for which you want to retrieve the blocking policy.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDBlockedPolicy
    
    Retrieves the blocking policy of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDPort | Get-VDBlockedPolicy
    
    Retrieves the blocking policies of all ports inside a distributed port group named "MyVDPortgroup".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDBlockedPolicy -examples".
    For more information, type: "get-help Get-VDBlockedPolicy -detailed".
    For technical information, type: "get-help Get-VDBlockedPolicy -full".
    For online help, type: "get-help Get-VDBlockedPolicy -online"

Get-VDPort
-------------------------

NAME
    Get-VDPort
    
SYNOPSIS
    This cmdlet retrieves virtual distributed ports.
    
    
SYNTAX
    Get-VDPort [-VDPortgroup <VDPortgroup[]>] [-VDSwitch <VDSwitch[]>] [[-Key] <String[]>] [-ActiveOnly] [-ConnectedOnly] [-Uplink] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves virtual distributed ports. At least one of the VDSwitch or VDPortgroup parameters must be specified.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies the distributed virtual port group whose ports you want to retrieve.
        
    -VDSwitch <VDSwitch[]>
        Specifies the vSphere distributed switch whose ports you want to retrieve.
        
    -Key <String[]>
        Specifies the key of the port which you want to retrieve.
        
    -ActiveOnly
        If set, only the active ports are returned.
        
    -ConnectedOnly
        If set, only the connected ports are returned.
        
    -Uplink
        If set, only uplink ports are returned. If not set, both uplink and non-uplink ports are returned. This parameter, like every SwitchParameter, can also be set to false 
        (-Uplink:$false), in which case only non-uplink ports are returned.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDPortGroup "MyVDPortgroup" | Get-VDPort -Key "MyPortgroupKey"
    
    Retrieves a virtual distributed port assigned with a key named "MyPortgroupKey" from a virtual distributed port group named “MyVDPortgroup”.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDPort -Uplink
    
    Retrieves all uplink virtual distributed ports of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDPort -ConnectedOnly
    
    Retrieves all connected virtual distributed ports of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDPort -examples".
    For more information, type: "get-help Get-VDPort -detailed".
    For technical information, type: "get-help Get-VDPort -full".
    For online help, type: "get-help Get-VDPort -online"

Get-VDPortgroup
-------------------------

NAME
    Get-VDPortgroup
    
SYNOPSIS
    This cmdlet retrieves distributed port groups.
    
    
SYNTAX
    Get-VDPortgroup [[-Name] <String[]>] [-NetworkAdapter <NetworkAdapter[]>] [-VDSwitch <VDSwitch[]>] [-VMHostNetworkAdapter <HostVirtualNic[]>] [-Server <VIServer[]>] [-Tag <Tag[]>] 
    [<CommonParameters>]
    
    Get-VDPortgroup -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDPortgroup -RelatedObject <VDPortgroupRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves distributed port groups.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the distributed port groups that you want to retrieve.
        
    -NetworkAdapter <NetworkAdapter[]>
        Specifies a virtual machine network adapter to retrieve the distributed port group to which the network adapter is connected.
        
    -VDSwitch <VDSwitch[]>
        Specifies a vSphere distributed switch to retrieve the distributed port groups that belong to the switch.
        
    -VMHostNetworkAdapter <HostVirtualNic[]>
        Specifies a host virtual network adapter to retrieve the distributed port groups to which the network adapter is connected.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -Tag <Tag[]>
        Returns only the distributed port groups that are associated with any of the specified tags.
        
    -Id <String[]>
        Specifies the IDs of the distributed port groups that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <VDPortgroupRelatedObjectBase[]>
        Specifies an object to retrieve one or more distributed port groups that are related to the object. This parameter accepts ExternalNetwork, OrgNetwork, NetworkPool, and OMResource 
        objects.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDPortGroup -Name "MyVDPortGroup" -VDSwitch "MyVDSwitch"
    
    Retrieves the distributed port group named "MyVDPortGroup" on the specified vSphere distributed switch.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-OrgNetwork -Name "MyOrgNetwork" | Get-VDPortGroup
    
    Retrieves the distributed port groups that are related to the specified organization network in the cloud.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-NetworkAdapter -Name "MyVMNetworkAdapter" | Get-VDPortGroup
    
    Retrieves the distributed port group to which the specified virtual machine network adapter is connected.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDPortgroup -examples".
    For more information, type: "get-help Get-VDPortgroup -detailed".
    For technical information, type: "get-help Get-VDPortgroup -full".
    For online help, type: "get-help Get-VDPortgroup -online"

Get-VDPortgroupOverridePolicy
-------------------------

NAME
    Get-VDPortgroupOverridePolicy
    
SYNOPSIS
    This cmdlet retrieves the policy for overriding port group settings at port level.
    
    
SYNTAX
    Get-VDPortgroupOverridePolicy [-VDPortgroup] <VDPortgroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the policy for overriding port group settings at port level.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies a distributed port group for which you want to retrieve the default port group overriding policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDPortgroupOverridePolicy
    
    Retrieves the overriding policy settings of a distributed port group named "MyVDPortgroup".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDPortgroupOverridePolicy -examples".
    For more information, type: "get-help Get-VDPortgroupOverridePolicy -detailed".
    For technical information, type: "get-help Get-VDPortgroupOverridePolicy -full".
    For online help, type: "get-help Get-VDPortgroupOverridePolicy -online"

Get-VDSecurityPolicy
-------------------------

NAME
    Get-VDSecurityPolicy
    
SYNOPSIS
    This cmdlet retrieves the security policy for distributed ports.
    
    
SYNTAX
    Get-VDSecurityPolicy -VDPortgroup <VDPortgroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDSecurityPolicy -VDSwitch <VDSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDSecurityPolicy -VDPort <VDPort[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the security policy for distributed ports. For distributed port group and vSphere distributed switch parameter sets, the default port policy at the distributed 
    port group or switch level is retrieved.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies a distributed port group for which you want to retrieve the default security policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -VDSwitch <VDSwitch[]>
        Specifies a vSphere distributed switch for which you want to retrieve the default security policy.
        
    -VDPort <VDPort[]>
        Specifies the distributed ports for which you want to retrieve the security policy.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDSecurityPolicy
    
    Retrieves the security policy of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDPort –Key 4 | Get-VDSecurityPolicy
    
    Retrieves the security policies of a specific port inside a distributed port group named "MyVDPortgroup".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDSecurityPolicy -examples".
    For more information, type: "get-help Get-VDSecurityPolicy -detailed".
    For technical information, type: "get-help Get-VDSecurityPolicy -full".
    For online help, type: "get-help Get-VDSecurityPolicy -online"

Get-VDSwitch
-------------------------

NAME
    Get-VDSwitch
    
SYNOPSIS
    This cmdlet retrieves vSphere distributed switches.
    
    
SYNTAX
    Get-VDSwitch [[-Name] <String[]>] [-Location <FolderContainer[]>] [-VMHost <VMHost[]>] [-VM <VirtualMachine[]>] [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDSwitch -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDSwitch -RelatedObject <VDSwitchRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves vSphere distributed switches.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the vSphere distributed switches that you want to retrieve.
        
    -Location <FolderContainer[]>
        Specifies vCenter Server container objects that you want to search for vSphere distributed switches. This parameter accepts Datacenter and Folder objects.
        
    -VMHost <VMHost[]>
        Specifies hosts to retrieve vSphere distributed switches to which the hosts are added.
        
    -VM <VirtualMachine[]>
        Specifies virtual machines to retrieve vSphere distributed switches they are connected to.
        
    -Tag <Tag[]>
        Returns only the vSphere distributed switches that are associated with any of the specified tags.
        
    -Server <VIServer[]>
        Specify the cloud servers on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about default 
        servers, see the description of Connect-CIServer.
        
    -Id <String[]>
        Specifies the IDs of the vSphere distributed switches that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <VDSwitchRelatedObjectBase[]>
        Specifies an object to retrieve one or more vSphere distributed switches that are related to the object. This parameter accepts NetworkPool and OMResource objects.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Datacenter -Name MyDatacenter | Get-VDSwitch
    
    Retrieves all vSphere distributed switches in the specified datacenter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHost -Name MyVMHost | Get-VDSwitch
    
    Retrieves all vSphere distributed switches to which the specified host is added.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VM -Name MyVM | Get-VDSwitch
    
    Retrieves all vSphere distributed switches to which the specified virtual machine is connected.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDSwitch -examples".
    For more information, type: "get-help Get-VDSwitch -detailed".
    For technical information, type: "get-help Get-VDSwitch -full".
    For online help, type: "get-help Get-VDSwitch -online"

Get-VDSwitchPrivateVlan
-------------------------

NAME
    Get-VDSwitchPrivateVlan
    
SYNOPSIS
    This cmdlet retrieves the private VLAN configuration entries of a vSphere distributed switch.
    
    
SYNTAX
    Get-VDSwitchPrivateVlan [-VDSwitch] <VDSwitch[]> [-PrimaryVlanId <Int32[]>] [-SecondaryVlanId <Int32[]>] [-PrivateVlanType <PrivateVlanType[]>] [-Server <VIServer[]>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the private VLAN configuration entries of a vSphere distributed switch.
    

PARAMETERS
    -VDSwitch <VDSwitch[]>
        Specifies the vSphere distributed switch whose private VLAN configuration entries to retrieve.
        
    -PrimaryVlanId <Int32[]>
        Specifies the primary VLAN ID of the private VLAN configuration entries that you want to retrieve.
        
    -SecondaryVlanId <Int32[]>
        Specifies the secondary VLAN ID of the private VLAN configuration entries that you want to retrieve.
        
    -PrivateVlanType <PrivateVlanType[]>
        Specifies the private VLAN type of the VLAN configuration entries that you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDSwitchPrivateVlan -PrivateVlanType Isolated
    
    Retrieves all private VLAN entries of a vSphere distributed switch named "MyVDSwitch" with specified 'isolated' VLAN port type.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDSwitchPrivateVlan -PrimaryVlanId 1,3
    
    Retrieves the private VLAN entries of a vSphere distributed switch named "MyVDSwitch" with primary VLAN identifiers 1 and 3.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDSwitchPrivateVlan -examples".
    For more information, type: "get-help Get-VDSwitchPrivateVlan -detailed".
    For technical information, type: "get-help Get-VDSwitchPrivateVlan -full".
    For online help, type: "get-help Get-VDSwitchPrivateVlan -online"

Get-VDTrafficShapingPolicy
-------------------------

NAME
    Get-VDTrafficShapingPolicy
    
SYNOPSIS
    This cmdlet retrieves the traffic shaping policy for distributed ports.
    
    
SYNTAX
    Get-VDTrafficShapingPolicy -Direction <TrafficDirection> -VDPortgroup <VDPortgroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDTrafficShapingPolicy -Direction <TrafficDirection> -VDSwitch <VDSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDTrafficShapingPolicy -Direction <TrafficDirection> -VDPort <VDPort[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the traffic shaping policy for distributed ports. For distributed port group and vSphere distributed switch parameter sets, the default port policy at the 
    distributed port group or switch level is retrieved.
    

PARAMETERS
    -Direction <TrafficDirection>
        Specifies the direction of the traffic shaping policy.
        
    -VDPortgroup <VDPortgroup[]>
        Specifies a distributed port group for which you want to retrieve the default traffic shaping policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -VDSwitch <VDSwitch[]>
        Specifies a vSphere distributed switch for which you want to retrieve the default traffic shaping policy.
        
    -VDPort <VDPort[]>
        Specifies the distributed ports for which you want to retrieve the traffic shaping policy.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDTrafficShapingPolicy -Direction In
    
    Retrieves the ingress traffic shaping policy of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDPort | Get-VDTrafficShapingPolicy -Direction Out
    
    Retrieves the engress traffic shaping policies of all ports inside a distributed port group named "MyVDPortgroup".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDTrafficShapingPolicy -examples".
    For more information, type: "get-help Get-VDTrafficShapingPolicy -detailed".
    For technical information, type: "get-help Get-VDTrafficShapingPolicy -full".
    For online help, type: "get-help Get-VDTrafficShapingPolicy -online"

Get-VDUplinkLacpPolicy
-------------------------

NAME
    Get-VDUplinkLacpPolicy
    
SYNOPSIS
    This cmdlet retrieves the Link Aggregation Control Protocol policy for uplink ports.
    
    
SYNTAX
    Get-VDUplinkLacpPolicy -VDPortgroup <VDPortgroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDUplinkLacpPolicy -VDSwitch <VDSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDUplinkLacpPolicy -VDPort <VDPort[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the Link Aggregation Control Protocol policy for uplink ports. For uplink port group and vSphere distributed switch parameter sets, the default port policy at the 
    uplink port group or switch level is retrieved.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies an uplink port group for which you want to retrieve the default Link Aggregation Control Protocol policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -VDSwitch <VDSwitch[]>
        Specifies a vSphere distributed switch for which you want to retrieve the default Link Aggregation Control Protocol policy.
        
    -VDPort <VDPort[]>
        Specifies the uplink port for which you want to retrieve the Link Aggregation Control Protocol policy.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDUplinkLacpPolicy
    
    Retrieves the Link Aggregation Control Protocol policy of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-UplinkPortgroup "MyVDPortgroup" | Get-VDUplinkLacpPolicy
    
    Retrieves the Link Aggregation Control Protocol policy of an uplink port group named "MyUplinkPortgroup" inside a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDUplinkLacpPolicy -examples".
    For more information, type: "get-help Get-VDUplinkLacpPolicy -detailed".
    For technical information, type: "get-help Get-VDUplinkLacpPolicy -full".
    For online help, type: "get-help Get-VDUplinkLacpPolicy -online"

Get-VDUplinkTeamingPolicy
-------------------------

NAME
    Get-VDUplinkTeamingPolicy
    
SYNOPSIS
    This cmdlet retrieves the uplink teaming policy for distributed ports.
    
    
SYNTAX
    Get-VDUplinkTeamingPolicy -VDPortgroup <VDPortgroup[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDUplinkTeamingPolicy -VDSwitch <VDSwitch[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VDUplinkTeamingPolicy -VDPort <VDPort[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the uplink teaming policy for distributed ports. For distributed port group and vSphere distributed switch parameter sets, the default port policy at the 
    distributed port group or switch level is retrieved.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies a distributed port group for which you want to retrieve the default uplink teaming policy.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -VDSwitch <VDSwitch[]>
        Specifies a vSphere distributed switch for which you want to retrieve the default uplink teaming policy.
        
    -VDPort <VDPort[]>
        Specifies the distributed port for which you want to retrieve the uplink teaming policy.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDUplinkTeamingPolicy
    
    Retrieves the uplink teaming policy of a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDPort | Get-VDUplinkTeamingPolicy
    
    Retrieves the uplink teaming policy of all ports inside a distributed port group named “MyVDPortgroup”.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VDUplinkTeamingPolicy -examples".
    For more information, type: "get-help Get-VDUplinkTeamingPolicy -detailed".
    For technical information, type: "get-help Get-VDUplinkTeamingPolicy -full".
    For online help, type: "get-help Get-VDUplinkTeamingPolicy -online"

Get-VIAccount
-------------------------

NAME
    Get-VIAccount
    
SYNOPSIS
    This cmdlet retrieves the accounts from the ESX/ESXi or vCenter Server.
    
    
SYNTAX
    Get-VIAccount [-Group] [-User] [[-Name] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VIAccount [-Group] [-User] [[-Id] <String[]>] [-Domain <String>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the accounts from the ESX/ESXi or vCenter Server. The Group and User switch parameters let you retrieve group and user accounts. By default, the cmdlet lists only 
    user accounts. If the Domain parameter is specified, the cmdlet retrieves only the accounts on the specified AD domain. Otherwise, only local accounts are listed.
    

PARAMETERS
    -Group
        Specifies that you want to retrieve only group accounts.
        
    -User
        Specifies that you want to retrieve only user accounts.
        
    -Name <String[]>
        Specifies the names of the accounts you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the accounts you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Domain <String>
        Specifies AD domains to search for accounts.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIAccount -Id Administrator
    
    Retrieve accounts by Id.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VIAccount -Group
    
    Retrieve all group accounts.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VIAccount -Id Administrator -Domain "MSDomain"
    
    Get all VIAccounts for specified ID and Domain.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VIAccount -Domain "MSDomain"
    
    Retrieve all accounts for the specified domain.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIAccount -examples".
    For more information, type: "get-help Get-VIAccount -detailed".
    For technical information, type: "get-help Get-VIAccount -full".
    For online help, type: "get-help Get-VIAccount -online"

Get-VIEvent
-------------------------

NAME
    Get-VIEvent
    
SYNOPSIS
    This cmdlet retrieves information about the events on a vCenter Server system.
    
    
SYNTAX
    Get-VIEvent [[-Entity] <VIObject[]>] [-Start <DateTime>] [-Finish <DateTime>] [-Username <String>] [-MaxSamples <Int32>] [-Types <EventCategory[]>] [-Server <VIServer[]>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about the events on a vCenter Server system. An event is any action in the vCenter Server system or ESX/ESXi host. You can filter retrieved events by 
    specifying arguments for the cmdlet parameters. Filters are additive. For example, when you specify the Entity, Start, and Finish parameters, Get-VIEvent filters events both by the 
    entity and the timestamp properties. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Entity <VIObject[]>
        Specifies objects (such as virtual machine, virtual machine host, resource pool, and so on) for which you want to collect events.
        
    -Start <DateTime>
        Specifies the start date of the events you want to retrieve. The valid formats are dd/mm/yyyy and mm/dd/yyyy, depending on the local machine regional settings.
        
    -Finish <DateTime>
        Specifies the end date of the events you want to retrieve. The valid formats are dd/mm/yyyy and mm/dd/yyyy, depending on the local machine regional settings.
        
    -Username <String>
        Specifies the user that has initiated the events you want to retrieve.
        
    -MaxSamples <Int32>
        Specifies the maximum number of retrieved events. When you do not filter events by time period, the maximum number of retrieved events is set to 100 by default.
        
        Note: This parameter is ignored when the Start and Finish parameters are specified and all events from the specified period are retrieved.
        
    -Types <EventCategory[]>
        Specifies the type of the events you want to collect. The valid values are Error, Info, and Warning.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIEvent -Entity MyVM1 -Username admin -Types error -MaxSamples 15
    
    Retrieves a list of the last fifteen error events on the MyVM1 virtual machine for the user admin.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Connect-VIServer -Server 10.23.113.41
    
    $events = Get-VIEvent -MaxSamples 100
    
    foreach ($event in $events) {if  ($event.fullFormattedMessage -match "User (.*)@\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b logged in") {Write-Host ("User " + $matches[1] + " logged in at:" 
    + $event.createdTime)} }
    
    Gathers information for the users that have logged in.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIEvent -examples".
    For more information, type: "get-help Get-VIEvent -detailed".
    For technical information, type: "get-help Get-VIEvent -full".
    For online help, type: "get-help Get-VIEvent -online"

Get-View
-------------------------

NAME
    Get-View
    
SYNOPSIS
    This cmdlet returns the vSphere View objects that correspond to the specified search criteria.
    
    
SYNTAX
    Get-View [-VIObject] <VIObject[]> [-Property <String[]>] [<CommonParameters>]
    
    Get-View [-Server <VIServer[]>] [-SearchRoot <ManagedObjectReference>] -ViewType <Type> [-Filter <Hashtable>] [-Property <String[]>] [<CommonParameters>]
    
    Get-View [-Server <VIServer[]>] [-Id] <ManagedObjectReference[]> [-Property <String[]>] [<CommonParameters>]
    
    Get-View [-Property <String[]>] -RelatedObject <ViewBaseMirroredObject[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet returns the vSphere View objects that correspond to the specified search criteria. The cmdlet retrieves the vSphere View objects specified by their IDs or by their 
    corresponding vSphere inventory objects (VIObject). A View object ID is a <type>-<value> string. For objects with constant names such as AlarmManager and ServiceInstance, the ID format 
    is <type> (see the examples).
    

PARAMETERS
    -VIObject <VIObject[]>
        Specifies the vSphere managed object that corresponds to the View object you want to retrieve.
        
        When you pass VIServer, Get-View returns ServiceInstance. When the retrieved View object is a ServiceInstance, you cannot convert it to a VIObject with Get-VIObjectByVIView.
        
    -Property <String[]>
        Specifies the properties of the view object you want to retrieve. If no value is given, all properties are shown.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -SearchRoot <ManagedObjectReference>
        Specifies a starting point for the search (in the context of the inventory).
        
    -ViewType <Type>
        Specifies the type of the View objects you want to retrieve.
        
    -Filter <Hashtable>
        Specifies a hash of <name>-<value> pairs, where <name> represents the property value to test, and <value> represents a regex pattern the property must match. If more than one pair 
        is present, all the patterns must match.
        
    -Id <ManagedObjectReference[]>
        Specifies the IDs of the View objects you want to retrieve. A view object ID is a <type>-<value> string. For objects with constant names such as AlarmManager and ServiceInstance, 
        the ID format is <type> (see the examples).
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <ViewBaseMirroredObject[]>
        Specifies view-related objects to retrieve their views.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vm = Get-View -ViewType VirtualMachine -Filter @{"Name" = "VM"}
    
    $vmhostView = Get-View -ID $vm.Runtime.Host
    
    $vmhostView.Summary.Runtime
    
    Gets the VM virtual machine using a filter by name, populates the view object and retrieves the runtime information.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$folder = Get-Folder Folder | Get-View
    
    Get-View -SearchRoot $folder.MoRef -ViewType "VirtualMachine"
    
    Gets the view objects of virtual machines by specifying the root folder - MoRef.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$folder = Get-Folder VM
    
    $folderView = Get-View $folder -Property "[VirtualMachine]ChildEntity.Network.*"
    
    $folderView.LinkedView.ChildEntity[0].LinkedView.Network
    
    Gets the view of a folder by specifying for the Property parameter a property path, which leads to the networks of the virtual machines in the specified folder. Retrieves the first of 
    the returned networks.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Connect-CIServer CloudServer1
    
    Connect-VIServer VIServer1
    
    $cloudExternalNetworkView = Get-ExternalNetwork ExternalNetwork1 | Get-CIView
    
    Get-View -RelatedObject $cloudExternalNetworkView
    
    Gets the view of a vSphere object related to the specified Cloud object. In this case, gets the vSphere port group for the cloud external network.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-View -examples".
    For more information, type: "get-help Get-View -detailed".
    For technical information, type: "get-help Get-View -full".
    For online help, type: "get-help Get-View -online"

Get-VIObjectByVIView
-------------------------

NAME
    Get-VIObjectByVIView
    
SYNOPSIS
    This cmdlet converts a vSphere View object to a VIObject.
    
    
SYNTAX
    Get-VIObjectByVIView [-VIView] <ViewBase[]> [<CommonParameters>]
    
    Get-VIObjectByVIView [-Server <VIServer[]>] [-MORef] <ManagedObjectReference[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet converts a vSphere View object to a VIObject using the object ID provided by the MoRef parameter. If the View object is a ServiceInstance, you cannot convert it to a 
    VIObject.
    

PARAMETERS
    -VIView <ViewBase[]>
        Specifies the vSphere .NET View object you want to convert to a vSphere PowerCLI object.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -MORef <ManagedObjectReference[]>
        Specifies the managed object ID, obtained from a property of another managed object or a view.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$view = Get-VM VM | Stop-VM | Get-View
    
    $vm = Get-VIObjectByVIView $view | Start-VM
    
    Gets the VM virtual machine, stops it, and gets its view object. Then, the command gets the virtual machine object using the Get-VIObjectByVIView cmdlet and starts the VM virtual 
    machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIObjectByVIView -examples".
    For more information, type: "get-help Get-VIObjectByVIView -detailed".
    For technical information, type: "get-help Get-VIObjectByVIView -full".
    For online help, type: "get-help Get-VIObjectByVIView -online"

Get-VIPermission
-------------------------

NAME
    Get-VIPermission
    
SYNOPSIS
    This cmdlet retrieves the permissions defined on the specified inventory objects.
    
    
SYNTAX
    Get-VIPermission [[-Entity] <VIObject[]>] [-Principal <VIAccount[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the permissions defined on the specified inventory objects. If no inventory objects are specified, the cmdlet retrieves all permissions available on the server.
    

PARAMETERS
    -Entity <VIObject[]>
        Specifies the inventory items for which you want to retrieve permissions.
        
    -Principal <VIAccount[]>
        Specifies the users and groups for which you want to retrieve permissions.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIPermission -Entity (Get-Datacenter) -Principal Administrator
    
    Retrieves the permissions of the Administrator user on the provided datacenters.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIPermission -examples".
    For more information, type: "get-help Get-VIPermission -detailed".
    For technical information, type: "get-help Get-VIPermission -full".
    For online help, type: "get-help Get-VIPermission -online"

Get-VIPrivilege
-------------------------

NAME
    Get-VIPrivilege
    
SYNOPSIS
    This cmdlet retrieves the privilege groups and items for the provided servers.
    
    
SYNTAX
    Get-VIPrivilege [-PrivilegeGroup] [-PrivilegeItem] [[-Name] <String[]>] [-Id <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VIPrivilege [[-Name] <String[]>] [-Role] <Role[]> [-Id <String[]>] [<CommonParameters>]
    
    Get-VIPrivilege [[-Name] <String[]>] [-Group] <PrivilegeGroup[]> [-Id <String[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the privilege groups and items for the provided servers.
    

PARAMETERS
    -PrivilegeGroup
        Indicates that you want to retrieve only the privilege groups and not the privilege items in them.
        
    -PrivilegeItem
        Indicates that you want to retrieve only the privilege items and not the privilege groups.
        
    -Name <String[]>
        Specifies the names of the privileges you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the privileges you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Role <Role[]>
        Specifies the roles whose privileges you want to retrieve.
        
    -Group <PrivilegeGroup[]>
        Specifies the privilege group whose items you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIPrivilege -Name "Host*"
    
    Retrieves all privileges with names that start with "Host".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VIPrivilege -PrivilegeGroup
    
    Retrieves all privilege groups.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIPrivilege -examples".
    For more information, type: "get-help Get-VIPrivilege -detailed".
    For technical information, type: "get-help Get-VIPrivilege -full".
    For online help, type: "get-help Get-VIPrivilege -online"

Get-VIProperty
-------------------------

NAME
    Get-VIProperty
    
SYNOPSIS
    This cmdlet retrieves extended object properties.
    
    
SYNTAX
    Get-VIProperty [[-Name] <String[]>] [[-ObjectType] <String[]>] [-DeclaredOnly] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the extended properties and filters them by using  the provided cmdlet parameters.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the extended properties you want to retrieve.
        
    -ObjectType <String[]>
        Specifies the object types for which you want to retrieve extended properties.
        
    -DeclaredOnly
        Indicates that you want to retrieve only the extended properties that have been directly defined for the specified object types.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIProperty -Name "property*"
    
    Retrieve all custom properties that match the specified name pattern.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VIProperty -ObjectType 'VirtualMachine'
    
    Retrieve all custom properties for the specified object type.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VIProperty -ObjectType 'VirtualMachine' -DeclaredOnly
    
    Retrieve all custom properties for the specified object type that are not inherited.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIProperty -examples".
    For more information, type: "get-help Get-VIProperty -detailed".
    For technical information, type: "get-help Get-VIProperty -full".
    For online help, type: "get-help Get-VIProperty -online"

Get-VIRole
-------------------------

NAME
    Get-VIRole
    
SYNOPSIS
    This cmdlet retrieves all roles defined on the provided servers.
    
    
SYNTAX
    Get-VIRole [[-Name] <String[]>] [-Id <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves all roles defined on the provided servers.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the roles you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the roles you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VIRole -Server $server -Name "Admin*"
    
    Retrieves all roles on the specified server with names that start with "Admin".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VIRole -examples".
    For more information, type: "get-help Get-VIRole -detailed".
    For technical information, type: "get-help Get-VIRole -full".
    For online help, type: "get-help Get-VIRole -online"

Get-VirtualPortGroup
-------------------------

NAME
    Get-VirtualPortGroup
    
SYNOPSIS
    This cmdlet retrieves the available port groups of hosts, virtual machines, and virtual switches.
    
    
SYNTAX
    Get-VirtualPortGroup [[-VMHost] <VMHost[]>] [-VM <VirtualMachine[]>] [-VirtualSwitch <VirtualSwitchBase[]>] [-Name <String[]>] [-Datacenter <Datacenter[]>] [-Standard] [-Distributed] 
    [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VirtualPortGroup -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VirtualPortGroup -RelatedObject <VirtualPortGroupRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available port groups of hosts, virtual machines, and virtual switches. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts whose port groups you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run 
        existing scripts on future PowerCLI versions, specify the parameter by name.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose port groups you want to retrieve.
        
    -VirtualSwitch <VirtualSwitchBase[]>
        Specifies the virtual switches for which you want to retrieve their port groups.
        
    -Name <String[]>
        Specifies the names of the port groups you want to retrieve.
        
    -Datacenter <Datacenter[]>
        Filters the port groups of the virtual switches connected to hosts in the specified datacenters.
        
    -Standard
        Indicates that you want to retrieve the port groups for VirtualSwitch objects.
        
    -Distributed
        Indicates that you want to retrieve the port groups for DistributedSwitch objects. This parameter is obsolete. To retrieve distributed port groups, use the Get-VDPortgroup cmdlet 
        instead.
        
    -Tag <Tag[]>
        Returns only the virtual port groups that are associated with any of the specified tags.
        
        Note: This parameter is compatible only with standard virtual port groups. For distributed port groups, you should use the Get-VDPortgroup cmdlet.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the port groups you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <VirtualPortGroupRelatedObjectBase[]>
        Specifies objects to retrieve one or more VirtualPortGroup objects that are related to them. This parameter accepts vCloud NetworkPool, vCloud ExternalNetwork, and vCloud OrgNetwork 
        objects.
        
        Note: In vCloud Director 5.1 environments, you cannot retrieve a distributed port group from an organization network backed by the distributed port group.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VirtualPortgroup -Name "VM Network"
    
    Retrieves all port groups named "VM Network".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVMHost = Get-VMHost -Name "MyVMHost"
    Get-VirtualPortGroup -Name "VM Network" -VMHost $myVmHost
    
    Retrieves the port group named "VM Network" on the specified host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVM = Get-VM -Name "MyVM"
    Get-VirtualPortGroup -VM $myVM
    
    Retrieves all port groups to which the specified virtual machine is connected.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$virtualSwitch = Get-VirtualSwitch -VMHost MyVMHost -Name vSwitch0
    Get-VirtualPortGroup -VirtualSwitch $virtualSwitch
    
    Retrieves all port groups which belong to the specified virtual switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VirtualPortGroup -examples".
    For more information, type: "get-help Get-VirtualPortGroup -detailed".
    For technical information, type: "get-help Get-VirtualPortGroup -full".
    For online help, type: "get-help Get-VirtualPortGroup -online"

Get-VirtualSwitch
-------------------------

NAME
    Get-VirtualSwitch
    
SYNOPSIS
    This cmdlet retrieves the virtual switches associated with a virtual machine host or used by a virtual machine.
    
    
SYNTAX
    Get-VirtualSwitch [[-VMHost] <VMHost[]>] [[-VM] <VirtualMachine[]>] [-Datacenter <Datacenter[]>] [-Name <String[]>] [-Standard] [-Distributed] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VirtualSwitch -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VirtualSwitch -RelatedObject <VirtualSwitchRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the virtual switches associated with a virtual machine host or used by a virtual machine. At least one of the VMHost and VM parameters must be provided.  The VM, 
    VMHost, Name parameters do not accept string values through a pipeline because of collision. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts whose virtual switches you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run 
        existing scripts on future PowerCLI versions, specify the parameter by name.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose virtual switches you want to retrieve.
        
    -Datacenter <Datacenter[]>
        Filters the virtual switches connected to hosts in the specified datacenters.
        
    -Name <String[]>
        Specifies the names of the virtual switches you want to retrieve. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. The 
        position of this parameter is deprecated and will be changed in a future release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by 
        name.
        
    -Standard
        Indicates that you want to retrieve only VirtualSwitch objects.
        
    -Distributed
        Indicates that you want to retrieve only DistributedSwitch objects. This parameter is obsolete. To retrieve distributed switches, use the Get-VDSwitch cmdlet instead.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the virtual switches you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <VirtualSwitchRelatedObjectBase[]>
        Specifies objects to retrieve one or more VirtualSwitch objects that are related to them. This parameter accepts vCloud NetworkPool objects.
        
        Note: In vCloud Director 5.1 environments, you cannot retrieve a distributed switch from a network pool backed by the distributed switch.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VirtualSwitch -VM VM
    
    Retrieves the virtual switch used by the virtual machine named VM.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Datacenter -Name "MyDatacenter" | Get-VirtualSwitch
    
    Retrieves all virtual switches in the specified datacenter.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost -Name "MyVMHost" | Get-VirtualSwitch
    
    Retrieves all virtual switches on the specified host.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VirtualSwitch -Name "vSwitch0"
    
    Retrieves all virtual switches named "vSwitch0".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VirtualSwitch -examples".
    For more information, type: "get-help Get-VirtualSwitch -detailed".
    For technical information, type: "get-help Get-VirtualSwitch -full".
    For online help, type: "get-help Get-VirtualSwitch -online"

Get-VM
-------------------------

NAME
    Get-VM
    
SYNOPSIS
    This cmdlet retrieves the virtual machines on a vCenter Server system.
    
    
SYNTAX
    Get-VM [[-Name] <String[]>] [-Server <VIServer[]>] [-Datastore <StorageResource[]>] [-Location <VIContainer[]>] [-Tag <Tag[]>] [-NoRecursion] [<CommonParameters>]
    
    Get-VM [[-Name] <String[]>] [-Server <VIServer[]>] [-VirtualSwitch <VirtualSwitchBase[]>] [-Tag <Tag[]>] [<CommonParameters>]
    
    Get-VM [-Server <VIServer[]>] -Id <String[]> [<CommonParameters>]
    
    Get-VM -RelatedObject <VmRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the virtual machines on a vCenter Server system. Returns a set of virtual machines that correspond to the filter criteria provided by the cmdlet parameters. For 
    virtual machines with multiple NICs and multiple IP addresses, the IPAddress property of the VMGuest object contains all IP addresses of the virtual machine. The IP at position 0 is the 
    primary IP address.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the virtual machines you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Datastore <StorageResource[]>
        Specifies datastores or datastore clusters to filter the virtual machines associated with them. Passing values to this parameter through a pipeline is deprecated and will be removed 
        in a future release.
        
    -Location <VIContainer[]>
        Specifies vSphere container objects you want to search for virtual machines. Supported container object types are: ResourcePool, VApp, VMHost, Folder, Cluster, Datacenter.
        
    -Tag <Tag[]>
        Returns only the virtual machines that are associated with any of the specified tags.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -VirtualSwitch <VirtualSwitchBase[]>
        When specified, the cmdlet returns only the virtual machines that have network adapters attached to the specified switches.
        
    -Id <String[]>
        Specifies the IDs of the virtual machines you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <VmRelatedObjectBase[]>
        Specifies objects to retrieve one or more vSphere VirtualMachine objects that are related to them. This parameter accepts vCloud CIVM and OMResource objects.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM -Name MyVM*
    
    Retrieves all virtual machines whose names starting with "MyVM".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myDatastore = Get-Datastore -Name "MyDatastore"
    Get-VM -Datastore $myDatastore
    
    Retrieves all virtual machines that reside on the specified datastore.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myDatacenter = Get-Datacenter -Name "MyDatacenter"
    Get-VM -Location $myDatacenter
    
    Retrieves all virtual machines in the specified datacenter.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myVDSwitch = Get-VDSwitch -Name "MyVDSwitch"
    Get-VM -DistributedSwitch $myVDSwitch
    
    Retrieves all virtual machines connected to the specified distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VM -examples".
    For more information, type: "get-help Get-VM -detailed".
    For technical information, type: "get-help Get-VM -full".
    For online help, type: "get-help Get-VM -online"

Get-VMGuest
-------------------------

NAME
    Get-VMGuest
    
SYNOPSIS
    This cmdlet retrieves the guest operating systems of the specified virtual machines.
    
    
SYNTAX
    Get-VMGuest [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the guest operating systems of the specified virtual machines. To specify a server different from the default one, use the Server parameter. When Get-VMGuest is 
    run against a virtual machine that is just starting, the properties of the returned VMGuest object are not filled at one time.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose guest operating systems you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMGuest -VM VM
    
    Retrieves the guest OS of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMGuest -examples".
    For more information, type: "get-help Get-VMGuest -detailed".
    For technical information, type: "get-help Get-VMGuest -full".
    For online help, type: "get-help Get-VMGuest -online"

Get-VMGuestNetworkInterface
-------------------------

NAME
    Get-VMGuestNetworkInterface
    
SYNOPSIS
    This cmdlet etrieves information about the network configuration of the specified virtual machines or guests.
    
    
SYNTAX
    Get-VMGuestNetworkInterface [-Name <String[]>] [[-VM] <VirtualMachine[]>] [-VMGuest <VMGuest[]>] [-Server <VIServer[]>] [-ToolsWaitSecs <Int32>] [-GuestPassword <SecureString>] 
    [-GuestUser <String>] [-GuestCredential <PSCredential>] [-HostPassword <SecureString>] [-HostUser <String>] [-HostCredential <PSCredential>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use Invoke-VMScript instead.
    
    This cmdlet retrieves information about the network configuration of the specified virtual machines or guests. For a list of supported operating systems, see the PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Execute and VirtualMachine.GuestOperations.Modify privileges.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the guest network interfaces you want to retrieve.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines for which you want to retrieve the network configuration.
        
    -VMGuest <VMGuest[]>
        Specifies the guest OS for which you want to retrieve the network configuration.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -ToolsWaitSecs <Int32>
        Specifies the time in seconds to wait for a response from the VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
        
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
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMGuestNetworkInterface -VM $vm -GuestUser User -GuestPassword pass2
    
    Retrieves the guest network interface of the $vm virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMGuestNetworkInterface -examples".
    For more information, type: "get-help Get-VMGuestNetworkInterface -detailed".
    For technical information, type: "get-help Get-VMGuestNetworkInterface -full".
    For online help, type: "get-help Get-VMGuestNetworkInterface -online"

Get-VMGuestRoute
-------------------------

NAME
    Get-VMGuestRoute
    
SYNOPSIS
    This cmdlet retrieves the routing configuration of the specified virtual machines or guests.
    
    
SYNTAX
    Get-VMGuestRoute [[-VM] <VirtualMachine[]>] [-VMGuest <VMGuest[]>] [-Server <VIServer[]>] [-ToolsWaitSecs <Int32>] [-GuestPassword <SecureString>] [-GuestUser <String>] 
    [-GuestCredential <PSCredential>] [-HostPassword <SecureString>] [-HostUser <String>] [-HostCredential <PSCredential>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use Invoke-VMGuestScript instead.
    
    This cmdlet retrieves the routing configuration of the specified virtual machines or guests. For a list of supported operating systems, see the PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Execute and VirtualMachine.GuestOperations.Modify privileges.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines for which you want to retrieve the routing configuration.
        
    -VMGuest <VMGuest[]>
        Specifies the guest operating systems for which you want to retrieve the routing configuration.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -ToolsWaitSecs <Int32>
        Specifies the time in seconds to wait for a response from the VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
        
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
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMGuestRoute -VM $vm -GuestUser User -GuestPassword pass2
    
    Retrieves the guest route of the $vm virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMGuestRoute -examples".
    For more information, type: "get-help Get-VMGuestRoute -detailed".
    For technical information, type: "get-help Get-VMGuestRoute -full".
    For online help, type: "get-help Get-VMGuestRoute -online"

Get-VMHost
-------------------------

NAME
    Get-VMHost
    
SYNOPSIS
    This cmdlet retrieves the hosts on a vCenter Server system.
    
    
SYNTAX
    Get-VMHost [[-Name] <String[]>] [-NoRecursion] [-Datastore <StorageResource[]>] [-State <VMHostState[]>] [-Location <VIContainer[]>] [-Tag <Tag[]>] [-Server <VIServer[]>] 
    [<CommonParameters>]
    
    Get-VMHost [[-Name] <String[]>] [-DistributedSwitch <DistributedSwitch[]>] [-Tag <Tag[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHost [[-Name] <String[]>] [-NoRecursion] [-VM <VirtualMachine[]>] [-ResourcePool <ResourcePool[]>] [-Datastore <StorageResource[]>] [-Location <VIContainer[]>] [-Tag <Tag[]>] 
    [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHost [-Server <VIServer[]>] -Id <String[]> [<CommonParameters>]
    
    Get-VMHost [-RelatedObject] <VMHostRelatedObjectBase[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the hosts on a vCenter Server system. Returns a set of hosts that correspond to the filter criteria provided by the cmdlet parameters.  To specify a server 
    different from the default one, use the Server parameter.
    When working directly on an ESX host, the Name property of the returned VMHost object  contains either the DNS name or the IP of the ESX host, depending on which of them was specified 
    when connecting with Connect-VIServer.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the hosts you want to retrieve.
        
    -NoRecursion
        Indicates that you want to disable the recursive behavior of the command.
        
    -Datastore <StorageResource[]>
        Specifies the datastores or datastore clusters to which the hosts that you want to retrieve are associated. Passing values to this parameter through a pipeline is deprecated and 
        will be removed in a future release.
        
    -State <VMHostState[]>
        Specifies the state of the hosts you want to retrieve. The valid values are Connected, Disconnected, NotResponding, and Maintenance.
        
    -Location <VIContainer[]>
        Specifies the vSphere container objects (such as folders, datacenters, and clusters) you want to search for hosts.
        
    -Tag <Tag[]>
        Returns only the virtual machine hosts that are associated with any of the specified tags.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -DistributedSwitch <DistributedSwitch[]>
        Filters the available hosts by the virtual switches they are connected to.
        
    -VM <VirtualMachine[]>
        Specifies virtual machines whose hosts you want to retrieve.
        
    -ResourcePool <ResourcePool[]>
        Specifies resource pools associated with the hosts you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the hosts you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -RelatedObject <VMHostRelatedObjectBase[]>
        Specifies objects to retrieve one or more VMHost​ objects that are related to them. This parameter accepts OMResource​ objects.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost -Location MyDatacenter
    
    Retrieves all hosts in the specified datacenter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$MyVM = Get-VM -Name MyVM
    Get-VMHost -VM $MyVM
    
    Retrieves the host on which the specified virtual machine runs.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVDSwitch = Get-VDSwitch -Name "MyVDSwitch"
    Get-VMHost -DistributedSwitch $myVDSwitch
    
    Retrieves all hosts associated with the specified vSphere distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHost -examples".
    For more information, type: "get-help Get-VMHost -detailed".
    For technical information, type: "get-help Get-VMHost -full".
    For online help, type: "get-help Get-VMHost -online"

Get-VMHostAccount
-------------------------

NAME
    Get-VMHostAccount
    
SYNOPSIS
    This cmdlet retrieves the host accounts available on a vCenter Server system.
    
    
SYNTAX
    Get-VMHostAccount [-Group] [-User] [[-Id] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the host accounts available on a vCenter Server system. If both User and Group parameters are set to $true, in the list returned by the command, group accounts 
    come out on top. If none of the User and Group switch parameters are provided, the cmdlet retrieves only the user accounts. 
    If the ID parameter is set, the cmdlet filters the host accounts by their IDs. To specify a server different from the default one, use the Server parameter.
    Note: The specified server must be an ESX/ESXi host.
    

PARAMETERS
    -Group
        Indicates that you want to retrieve only group host accounts. Starting with ESXi 5.1, this parameter is not supported.
        
    -User
        Indicates that you want to retrieve only user host accounts.
        
    -Id <String[]>
        Specifies the IDs of the host accounts you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostAccount -Group
    
    Retrieves the group accounts for the default ESX/ESXi host. Starting with ESXi 5.1, you cannot retrieve group accounts.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myServer1 = Connect-VIServer -Server 10.23.112.235
    $myUserAccount1 = New-VMHostAccount -ID MyUser1 -Password MyPass1 -UserAccount
    Get-VMHostAccount -Server $myServer1 -ID $myUserAccount1.Id -User
    
    Retrieves a host account specified by an ID and an ESX/ESXi host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myServer1 = Connect-VIServer -Server 10.23.112.235
    $myGroupAccount1 = New-VMHostAccount -ID MyGroup1 -Password MyPassword1 -GroupAccount
    Get-VMHostAccount -Server $myServer1 -Id $myGroupAccount.Id -Group
    
    Retrieves a group host account specified by an ID and an ESX/ESXi host. Starting with ESXi 5.1, you cannot retrieve group host accounts.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myServer1 = Connect-VIServer 10.23.112.235
    Get-VMHostAccount -Server $myServer1 -User -Group
    
    Retrieves all user and group accounts on a specified ESX/ESXi host. Starting with ESXi 5.1, you cannot retrieve group host accounts.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostAccount -examples".
    For more information, type: "get-help Get-VMHostAccount -detailed".
    For technical information, type: "get-help Get-VMHostAccount -full".
    For online help, type: "get-help Get-VMHostAccount -online"

Get-VMHostAdvancedConfiguration
-------------------------

NAME
    Get-VMHostAdvancedConfiguration
    
SYNOPSIS
    This cmdlet retrieves the advanced configuration of the hosts.
    
    
SYNTAX
    Get-VMHostAdvancedConfiguration [[-Name] <String[]>] [-VMHost] <VMHost[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use Get-AdvancedSetting instead.
    
    This cmdlet retrieves the advanced configuration of the hosts. For each of the specified hosts, the cmdlet returns a hash table mapping the names of the settings to the corresponding 
    values.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the host configuration settings you want to retrieve.
        
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve the configuration settings.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostAdvancedConfiguration -VMHost 10.23.123.100 -Name net*tcp*
    
    Retrieves the virtual machine host advanced configuration settings, whose names contain "net" and "tcp".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostAdvancedConfiguration -examples".
    For more information, type: "get-help Get-VMHostAdvancedConfiguration -detailed".
    For technical information, type: "get-help Get-VMHostAdvancedConfiguration -full".
    For online help, type: "get-help Get-VMHostAdvancedConfiguration -online"

Get-VMHostAuthentication
-------------------------

NAME
    Get-VMHostAuthentication
    
SYNOPSIS
    This cmdlet retrieves authentication information for the specified hosts.
    
    
SYNTAX
    Get-VMHostAuthentication [[-VMHost] <VMHost[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHostAuthentication -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves authentication information for the specified hosts.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve authentication information.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the host authentication information that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vmhost | Get-VMHostAuthentication
    
    Retrieve authentication information for the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostAuthentication -examples".
    For more information, type: "get-help Get-VMHostAuthentication -detailed".
    For technical information, type: "get-help Get-VMHostAuthentication -full".
    For online help, type: "get-help Get-VMHostAuthentication -online"

Get-VMHostAvailableTimeZone
-------------------------

NAME
    Get-VMHostAvailableTimeZone
    
SYNOPSIS
    This cmdlet retrieves the time zones available on the specified host.
    
    
SYNTAX
    Get-VMHostAvailableTimeZone [-VMHost] <VMHost[]> [[-Name] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the time zones available on the specified host.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the host for which you want to retrieve the available time zones.
        
    -Name <String[]>
        Specifies the names of the available time zones you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostAvailableTimeZone -Name Pacific* -VMHost 10.23.112.19
    
    Retrieves the Pacific time zones available on the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostAvailableTimeZone -examples".
    For more information, type: "get-help Get-VMHostAvailableTimeZone -detailed".
    For technical information, type: "get-help Get-VMHostAvailableTimeZone -full".
    For online help, type: "get-help Get-VMHostAvailableTimeZone -online"

Get-VMHostDiagnosticPartition
-------------------------

NAME
    Get-VMHostDiagnosticPartition
    
SYNOPSIS
    This cmdlet retrieves a list of  the diagnostic partitions on the specified hosts.
    
    
SYNTAX
    Get-VMHostDiagnosticPartition [-VMHost] <VMHost[]> [-All] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves a list of the diagnostic partitions on the specified hosts. The list is ordered by the partitions preference. Local diagnostic partitions are more preferable than 
    shared diagnostic partitions because multiple servers cannot share the same partition. The most preferred diagnostic partition is first in the list.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve diagnostic partitions.
        
    -All
        Indicates that you want to retrieve all diagnostic partitions on the specified hosts. By default, only the active partitions are retrieved.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost 192.168.1.10 | Get-VMHostDiagnosticPartition -All
    
    Retrieves all diagnostic partitions for the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostDiagnosticPartition -examples".
    For more information, type: "get-help Get-VMHostDiagnosticPartition -detailed".
    For technical information, type: "get-help Get-VMHostDiagnosticPartition -full".
    For online help, type: "get-help Get-VMHostDiagnosticPartition -online"

Get-VMHostDisk
-------------------------

NAME
    Get-VMHostDisk
    
SYNOPSIS
    This cmdlet retrieves information about the specified SCSI LUN disk.
    
    
SYNTAX
    Get-VMHostDisk [[-VMHost] <VMHost[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHostDisk -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHostDisk [[-ScsiLun] <ScsiLun[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about the specified SCSI LUN disk.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies hosts to retrieve the hard disks attached to them.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the SCSI LUN disks that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -ScsiLun <ScsiLun[]>
        Specifies the SCSI LUN for which you want to retrieve information.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostDisk -VMHost $vmhost
    
    Retrieves the disks of the specified host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhost | Get-VMHostHba -Type FibreChannel | Get-ScsiLun | Get-VMHostDisk
    
    Retrieves the host disks only for LUNs that are of FibreChannel type.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostDisk -examples".
    For more information, type: "get-help Get-VMHostDisk -detailed".
    For technical information, type: "get-help Get-VMHostDisk -full".
    For online help, type: "get-help Get-VMHostDisk -online"

Get-VMHostDiskPartition
-------------------------

NAME
    Get-VMHostDiskPartition
    
SYNOPSIS
    This cmdlet retrieves the partitions of a host disk (LUN).
    
    
SYNTAX
    Get-VMHostDiskPartition [[-VMHostDisk] <VMHostDisk[]>] [<CommonParameters>]
    
    Get-VMHostDiskPartition -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the partitions of a host disk (LUN).
    

PARAMETERS
    -VMHostDisk <VMHostDisk[]>
        Specifies the host disk for which you want to retrieve the partitions.
        
    -Id <String[]>
        Specifies the IDs of the host disk partitions that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost Host | Get-VMHostDisk | Get-VMHostDiskPartition | ? {.Type -eq "Ntfs"} | Format-VMHostDiskPartition -VolumeName "NewStorage"
    
    Formats the NTFS disk partitions of a host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostDiskPartition -examples".
    For more information, type: "get-help Get-VMHostDiskPartition -detailed".
    For technical information, type: "get-help Get-VMHostDiskPartition -full".
    For online help, type: "get-help Get-VMHostDiskPartition -online"

Get-VMHostFirewallDefaultPolicy
-------------------------

NAME
    Get-VMHostFirewallDefaultPolicy
    
SYNOPSIS
    This cmdlet retrieves the firewall default policy of the specified hosts.
    
    
SYNTAX
    Get-VMHostFirewallDefaultPolicy [-VMHost] <VMHost[]> [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the firewall default policy of the specified hosts. The firewall policy determines whether the outgoing and incoming connections are allowed.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts whose firewall default policy you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostFirewallDefaultPolicy -VMHost 10.23.123.100
    
    Retrieves the default firewall policy of the virtual machine host with an IP address 10.23.123.100.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostFirewallDefaultPolicy -examples".
    For more information, type: "get-help Get-VMHostFirewallDefaultPolicy -detailed".
    For technical information, type: "get-help Get-VMHostFirewallDefaultPolicy -full".
    For online help, type: "get-help Get-VMHostFirewallDefaultPolicy -online"

Get-VMHostFirewallException
-------------------------

NAME
    Get-VMHostFirewallException
    
SYNOPSIS
    This cmdlet retrieves the exceptions from the firewall policy on the specified hosts.
    
    
SYNTAX
    Get-VMHostFirewallException [[-Name] <String[]>] [-VMHost] <VMHost[]> [-Port <Int32[]>] [-Enabled <Boolean>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the exceptions from the firewall policy on the specified hosts. The exceptions can be filtered using the VMHost, Name, Port, and Enabled parameters.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the firewall exceptions you want to retrieve.
        
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve firewall exceptions.
        
    -Port <Int32[]>
        Specifies the number of the port for which you want to retrieve the firewall exceptions.
        
    -Enabled [<Boolean>]
        Indicates whether you want to retrieve only the enabled hosts firewall exceptions.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost -Name VMHost1 | Get-VMHostFirewallException -Enabled:$true
    
    Retrieves the enabled firewall exceptions of a host named VMHost1.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostFirewallException "SSH Server", "SSH Client" -VMHost $vmhost
    
    Retrieves the firewall exceptions for the SSH server and client for the virtual machine host $vmhost.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHostFirewallException -VMHost Host -Port 21
    
    Retrieves the firewall exceptions of a host named Host. Only firewall exceptions which have port 21 in their incoming port or outgoing ports are returned.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostFirewallException -examples".
    For more information, type: "get-help Get-VMHostFirewallException -detailed".
    For technical information, type: "get-help Get-VMHostFirewallException -full".
    For online help, type: "get-help Get-VMHostFirewallException -online"

Get-VMHostFirmware
-------------------------

NAME
    Get-VMHostFirmware
    
SYNOPSIS
    This cmdlet retrieves hosts firmware information.
    
    
SYNTAX
    Get-VMHostFirmware [-VMHost] <VMHost[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHostFirmware [-VMHost] <VMHost[]> [-BackupConfiguration] -DestinationPath <String> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves firmware information for the hosts specified by the VMHost parameter. To specify a server different from the default one, use the Server parameter. To run this 
    cmdlet, you need to have the "Host.Config.Firmware" permission to the ESX.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve firmware information.
        
    -Server <VIServer[]>
        This parameter is required when you specify the host by name. In this case, the host with the specified name is searched on the specified servers and firmware information is 
        retrieved from it. If a VMHost object is passed to the VMHost parameter, the Server parameter is not used.
        
    -BackupConfiguration
        Indicates that you want to backup the host firmware configuration and download the bundle to the specified DestinationPath.
        
    -DestinationPath <String>
        Specifies a destination path where to download the host configuration backup bundle if the BackupConfiguration parameter is set.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostFirmware -VMHost $vmhost
    
    Retrieves the firmware information for the specified host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostFirmware -VMHost $vmhost -BackupConfiguration -DestinationPath C:\Downloads
    
    Backups a server configuration for the virtual machine host stored in the $vmhost variable, and downloads the configuration files into the specified folder.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostFirmware -examples".
    For more information, type: "get-help Get-VMHostFirmware -detailed".
    For technical information, type: "get-help Get-VMHostFirmware -full".
    For online help, type: "get-help Get-VMHostFirmware -online"

Get-VMHostHardware
-------------------------

NAME
    Get-VMHostHardware
    
SYNOPSIS
    This cmdlet retrieves ESXi host hardware and firmware information.
    
    
SYNTAX
    Get-VMHostHardware [-VMHost <VMHost[]>] [-WaitForAllData] [-SkipCACheck] [-SkipCNCheck] [-SkipRevocationCheck] [-SkipAllSslCertificateChecks] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHostHardware -Id <String[]> [-WaitForAllData] [-SkipCACheck] [-SkipCNCheck] [-SkipRevocationCheck] [-SkipAllSslCertificateChecks] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves hardware and firmware information for the hosts specified by the VMHost parameter. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve hardware information. If not specified, the cmdlet retrieves hardware information for all hosts on all default connections.
        
    -WaitForAllData
        If specified, forces all data for each result object to be retrieved before that object is returned. If this parameter is not specified, retrieval of some of the data in the output 
        objects might be postponed to an arbitrary point in time between the cmdlet call and the first time the data is accessed through the corresponding property. As a result, not 
        specifying this parameter makes the cmdlet return data faster, but different portions of the data in result objects might come from different points in time.
        
    -SkipCACheck
        Indicates that when connecting through HTTPS, the client does not validate that the server certificate is signed by a trusted certification authority (CA).
        
        Note: You should use this parameter only when the remote server can be trusted by using another mechanism, such as when the remote computer is part of a network that is physically 
        secure and isolated.
        
    -SkipCNCheck
        Indicates that the certificate common name (CN) of the server does not need to match the hostname of the server.
        
        Note: You should use this parameter only for trusted computers.
        
    -SkipRevocationCheck
        Indicates that the revocation check for server certificates is skipped.
        
        Note: You should use this parameter only for trusted computers.
        
    -SkipAllSslCertificateChecks
        Indicates that all checks for SSL server certificates are skipped.
        
        Note: You should use this parameter only for trusted computers.
        
    -Server <VIServer[]>
        This parameter is required when you specify the host by name. In this case, the host with the specified name is searched on the specified servers and hardware information is 
        retrieved from it. If a VMHost object is passed to the VMHost parameter, the Server parameter is not used.
        
    -Id <String[]>
        Filters the ESXi hosts by ID.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost "MyVMHost" | Get-VMHostHardware
    
    Retrieves hardware information about the "MyVMHost" host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostHardware -VMHost "MyVMHost" -SkipAllSslCertificateChecks
    
    Retrieves hardware information about the "MyVMHost" host, skipping all verifications of SSL server certificates.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostHardware -examples".
    For more information, type: "get-help Get-VMHostHardware -detailed".
    For technical information, type: "get-help Get-VMHostHardware -full".
    For online help, type: "get-help Get-VMHostHardware -online"

Get-VMHostHba
-------------------------

NAME
    Get-VMHostHba
    
SYNOPSIS
    This cmdlet retrieves information about the available HBAs (Host Bus Adapter).
    
    
SYNTAX
    Get-VMHostHba [[-VMHost] <VMHost[]>] [[-Device] <String[]>] [-Type <HbaType[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about the available HBAs (Host Bus Adapter).
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve HBAs.
        
    -Device <String[]>
        Specifies the devices of the HBA you want to retrieve.
        
    -Type <HbaType[]>
        Specifies the type of the HBAs you want to retrieve. The valid values are Block, FibreChannel, iSCSI, and ParallelSCSI.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostHba -Device *hba0* | fl
    
    Retrieves the available HBA devices that contain "hba0" in their names.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostHba -examples".
    For more information, type: "get-help Get-VMHostHba -detailed".
    For technical information, type: "get-help Get-VMHostHba -full".
    For online help, type: "get-help Get-VMHostHba -online"

Get-VMHostModule
-------------------------

NAME
    Get-VMHostModule
    
SYNOPSIS
    This cmdlet retrieves the option strings of the specified host modules.
    
    
SYNTAX
    Get-VMHostModule [-VMHost] <VMHost[]> [[-Name] <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the option strings of the specified host modules. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies hosts to retrieve their modules.
        
    -Name <String[]>
        Specifies the names of the host modules you want to retrieve. To find a list of the valid module names for different servers, see the vSphere documentation or in the ESX console, 
        run "esxcfg-module -l". This parameter is mandatory only if you are connected to ESX/vCenter Server with version earlier than 4.0.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostModule -Name Shaper
    
    Retrieves the option string for the specified host module.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostModule -examples".
    For more information, type: "get-help Get-VMHostModule -detailed".
    For technical information, type: "get-help Get-VMHostModule -full".
    For online help, type: "get-help Get-VMHostModule -online"

Get-VMHostNetwork
-------------------------

NAME
    Get-VMHostNetwork
    
SYNOPSIS
    THis cmdlet retrieves the host networks on a vCenter Server system.
    
    
SYNTAX
    Get-VMHostNetwork [-Server <VIServer[]>] [-VMHost] <VMHost[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the host networks on a vCenter Server system. This command retrieves the networking configuration of the hosts specified by the VMHost parameter. To specify a 
    server different from the default one, use the Server parameter.
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VMHost <VMHost[]>
        Specifies the hosts whose networking configuration you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostNetwork -VMHost 10.23.113.212 | fl
    
    Retrieves the  networking configuration for the virtual machine host on IP address 10.23.113.212.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostNetwork -examples".
    For more information, type: "get-help Get-VMHostNetwork -detailed".
    For technical information, type: "get-help Get-VMHostNetwork -full".
    For online help, type: "get-help Get-VMHostNetwork -online"

Get-VMHostNetworkAdapter
-------------------------

NAME
    Get-VMHostNetworkAdapter
    
SYNOPSIS
    This cmdlet retrieves the host network adapters on a vCenter Server system.
    
    
SYNTAX
    Get-VMHostNetworkAdapter [-VMHost <VMHost[]>] [[-VirtualSwitch] <VirtualSwitchBase[]>] [-PortGroup <VirtualPortGroupBase[]>] [-Physical] [-VMKernel] [-Console] [[-Name] <String[]>] [-Id 
    <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the host network adapters on a vCenter Server system.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts whose network adapters you want to retrieve. The position of this parameter is deprecated and might change in a following release.
        
    -VirtualSwitch <VirtualSwitchBase[]>
        Specifies the virtual switches to which network adapters that you want to retrieve are connected. The position of this parameter is deprecated and will be changed in a future 
        release. To avoid errors when you run existing scripts on future PowerCLI versions, specify the parameter by name.
        
    -PortGroup <VirtualPortGroupBase[]>
        Specifies the port groups to which network adapters that you want to retrieve are connected.
        
    -Physical
        Indicates that you want to retrieve only physical network adapters.
        
    -VMKernel
        Indicates that you want to retrieve only VMKernel virtual network adapters.
        
    -Console
        Indicates that you want to retrieve only service console virtual network adapters.
        
    -Name <String[]>
        Specifies the names of the host network adapters you want to retrieve. The position of this parameter is deprecated and will be changed in a future release. To avoid errors when you 
        run existing scripts on future PowerCLI versions, specify the parameter by name.
        
    -Id <String[]>
        Specifies the IDs of the host network adapters you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostNetworkAdapter -VMKernel
    
    Retrieves information about about all VMKernel network adapters on servers that you are connected to.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVMHost = Get-VMHost -Name MyVMHost
    Get-VMHostNetworkAdapter -VMHost $myVMHost -Physical
    
    Retrieves all physical network adapters on the specified host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVDSwitch = Get-VDSwitch -Name MyVDSwitch
    Get-VMHostNetworkAdapter -VirtualSwitch $myVDSwitch -VMKernel
    
    Retrieves all VMKernel network adapters connected to the specified virtual switch.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VDPortGroup -Name MyVDPortGroup | Get-VMHostNetworkAdapter
    
    Retrieves VMHost network adapters by a specified distributed port group.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$myVirtualSwitch = Get-VirtualSwitch -Name MyVirtualSwitch
    Get-VMHostNetworkAdapter -VirtualSwitch $myVirtualSwitch
    
    Retrieves physical VMHost network adapters by a specified standard virtual switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostNetworkAdapter -examples".
    For more information, type: "get-help Get-VMHostNetworkAdapter -detailed".
    For technical information, type: "get-help Get-VMHostNetworkAdapter -full".
    For online help, type: "get-help Get-VMHostNetworkAdapter -online"

Get-VMHostNtpServer
-------------------------

NAME
    Get-VMHostNtpServer
    
SYNOPSIS
    This cmdlet retrieves the NTP servers on the specified hosts.
    
    
SYNTAX
    Get-VMHostNtpServer [-VMHost] <VMHost[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the NTP servers on the specified hosts.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts, whose NTP servers you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostNtpServer -VMHost 10.23.123.100
    
    Retrieves the NTP server of the virtual machine host with an IP address 10.23.123.100.
    
    
    
    127.127.1.0
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostNtpServer -examples".
    For more information, type: "get-help Get-VMHostNtpServer -detailed".
    For technical information, type: "get-help Get-VMHostNtpServer -full".
    For online help, type: "get-help Get-VMHostNtpServer -online"

Get-VMHostPatch
-------------------------

NAME
    Get-VMHostPatch
    
SYNOPSIS
    This cmdlet retrieves information about the host patches installed on the specified hosts.
    This cmdlet is deprecated and will not return any results for ESX hosts version 5.0 and later. Use (Get-ESXCli).software.vib.list() as an alternative.
    
    
SYNTAX
    Get-VMHostPatch [[-VMHost] <VMHost[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about the host patches installed on the specified hosts.
    This cmdlet is deprecated and will not return any results for ESX hosts version 5.0 and later. Use (Get-ESXCli).software.vib.list() as an alternative.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve the available patches.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostPatch Host
    
    Retrieves information of the host patches installed on the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostPatch -examples".
    For more information, type: "get-help Get-VMHostPatch -detailed".
    For technical information, type: "get-help Get-VMHostPatch -full".
    For online help, type: "get-help Get-VMHostPatch -online"

Get-VMHostPciDevice
-------------------------

NAME
    Get-VMHostPciDevice
    
SYNOPSIS
    This cmdlet retrieves the PCI devices on the specified hosts.
    
    
SYNTAX
    Get-VMHostPciDevice [-Name <String[]>] [-VMHost <VMHost[]>] [-DeviceClass <PciDeviceClass[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the PCI devices on the specified hosts.
    

PARAMETERS
    -Name <String[]>
        Filters the PCI devices by name.
        
        Note: This parameter is not case-sensitive.
        
    -VMHost <VMHost[]>
        Specifies the hosts whose PCI devices you want to retrieve. If not specified, the cmdlet retrieves PCI devices for all hosts on all default connections.
        
    -DeviceClass <PciDeviceClass[]>
        Limits results to devices of the specified classes.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost "MyHost" | Get-VMHostPciDevice
    
    Retrieves the PCI devices on the "MyVMHost" host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostPciDevice -examples".
    For more information, type: "get-help Get-VMHostPciDevice -detailed".
    For technical information, type: "get-help Get-VMHostPciDevice -full".
    For online help, type: "get-help Get-VMHostPciDevice -online"

Get-VMHostProfile
-------------------------

NAME
    Get-VMHostProfile
    
SYNOPSIS
    This cmdlet retrieves the available host profiles.
    
    
SYNTAX
    Get-VMHostProfile [[-Name] <String[]>] [-Description <String[]>] [-Entity <InventoryItem[]>] [-ReferenceHost <VMHost[]>] [-Id <String[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the available host profiles. A host profile encapsulates the host settings and helps to manage the host configuration.
    

PARAMETERS
    -Name <String[]>
        Specifies the names of the host profiles you want to retrieve.
        
    -Description <String[]>
        Specifies a phrase from the description of the host profiles you want to retrieve.
        
    -Entity <InventoryItem[]>
        Specifies inventory objects associated with the host profiles you want to retrieve.
        
    -ReferenceHost <VMHost[]>
        Specifies the reference hosts of the profiles you want to retrieve.
        
    -Id <String[]>
        Specifies the IDs of the host profiles you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostProfile -Name Profile
    
    Retrieves the virtual machine host profile named Profile.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostProfile -examples".
    For more information, type: "get-help Get-VMHostProfile -detailed".
    For technical information, type: "get-help Get-VMHostProfile -full".
    For online help, type: "get-help Get-VMHostProfile -online"

Get-VMHostProfileRequiredInput
-------------------------

NAME
    Get-VMHostProfileRequiredInput
    
SYNOPSIS
    This cmdlet performs a check whether the available information is sufficient to apply a host profile.
    
    
SYNTAX
    Get-VMHostProfileRequiredInput [-VMHost] <VMHost> [[-Variable] <Hashtable>] [-Profile <VMHostProfile>] [-Inapplicable] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet performs a check whether the available information is sufficient to apply a host profile, and returns missing values. If the cmdlet returns no output, the information in the 
    hashtable passed to the Variable parameter is sufficient to apply the host profile to the host by using the Apply-VMHostProfile cmdlet.
    

PARAMETERS
    -VMHost <VMHost>
        Specifies a host to check if the provided information is sufficient for applying the specified host profile.
        
    -Variable <Hashtable>
        Provides a hash table that contains the available values required for applying the specified profile to the the specified host.
        
    -Profile <VMHostProfile>
        Specifies a host profile to check if the provided information is sufficient for applying it to the specified host.
        
    -Inapplicable
        Indicates that you want to view also the elements that are inapplicable to the operation.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost | Get-VMHostProfileRequiredInput
    
    Retrieves required input for a list of hosts.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostProfileRequiredInput -VMHost $vmhost -Profile $vmhostProfile
    
    Retrieves a required input by specifying a host and a profile.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$result = Get-VMHostProfileRequiredInput -VMHost $vmhost -Variable $requiredInputHashtable;
    
    if (-not $result) { Apply-VMHostProfile -Entity $vmhost -Variable $requiredInputHashtable}
    
    Check whether the specified hashtable that contains values for each required input is exhaustive. If the result is null, then the hashtable can be used by Apply-VMHostProfile.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$result = Get-VMHostProfileRequiredInput -VMHost $vmhost -Variable $requiredInputHashtable -Inapplicable;
    
    $result | where { $_.Type -eq 'Inapplicable' } | foreach { Write-Host "Key $($_.Key) is not applicable for host $vmhost" }
    
    Retrieve the required and inapplicable input and display all inapplicable keys.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostProfileRequiredInput -examples".
    For more information, type: "get-help Get-VMHostProfileRequiredInput -detailed".
    For technical information, type: "get-help Get-VMHostProfileRequiredInput -full".
    For online help, type: "get-help Get-VMHostProfileRequiredInput -online"

Get-VMHostRoute
-------------------------

NAME
    Get-VMHostRoute
    
SYNOPSIS
    This cmdlet retrieves the routes from the routing table of the specified hosts.
    
    
SYNTAX
    Get-VMHostRoute [[-VMHost] <VMHost[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the routes from the routing table of the specified hosts.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve routes.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostRoute -VMHost $vmhost
    
    Retrieves the routes for the specified host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostRoute -VMHost $vmhost1, $vmhost2 -Server $server1, $server2
    
    Retrieves the routes for the specified hosts and servers.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostRoute -examples".
    For more information, type: "get-help Get-VMHostRoute -detailed".
    For technical information, type: "get-help Get-VMHostRoute -full".
    For online help, type: "get-help Get-VMHostRoute -online"

Get-VMHostService
-------------------------

NAME
    Get-VMHostService
    
SYNOPSIS
    This cmdlet retrieves information about a host service.
    
    
SYNTAX
    Get-VMHostService [-VMHost] <VMHost[]> [-Refresh] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about a host service. If the Refresh parameter is set to $true, the cmdlet refreshes the host services information before retrieving it. To specify a 
    server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies hosts for which you want to retrieve the available services.
        
    -Refresh
        Indicates whether the cmdlet refreshes the service information before retrieving it.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostService -Refresh
    
    Refreshes and retrieves the host services on the default server.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name Host
    
    $vmHostService = Get-VMHostService -VMHost $vmhost
    
    Gets the services of the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostService -examples".
    For more information, type: "get-help Get-VMHostService -detailed".
    For technical information, type: "get-help Get-VMHostService -full".
    For online help, type: "get-help Get-VMHostService -online"

Get-VMHostSnmp
-------------------------

NAME
    Get-VMHostSnmp
    
SYNOPSIS
    This cmdlet retrieves hosts SNMP configuration.
    
    
SYNTAX
    Get-VMHostSnmp [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves hosts SNMP configuration. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostSNMP
    
    Retrieves the host SNMP configuration. Operates on the default server which must be an ESX host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostSnmp -examples".
    For more information, type: "get-help Get-VMHostSnmp -detailed".
    For technical information, type: "get-help Get-VMHostSnmp -full".
    For online help, type: "get-help Get-VMHostSnmp -online"

Get-VMHostStartPolicy
-------------------------

NAME
    Get-VMHostStartPolicy
    
SYNOPSIS
    This cmdlet retrieves the start policy of hosts.
    
    
SYNTAX
    Get-VMHostStartPolicy [-VMHost] <VMHost[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the start policy of the hosts specified by the VMHost parameter. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts whose start policy you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHostStartPolicy -VMHost 10.23.113.212
    
    Retrieves the start policy of the virtual machine host on IP address 10.23.113.212.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostStartPolicy -examples".
    For more information, type: "get-help Get-VMHostStartPolicy -detailed".
    For technical information, type: "get-help Get-VMHostStartPolicy -full".
    For online help, type: "get-help Get-VMHostStartPolicy -online"

Get-VMHostStorage
-------------------------

NAME
    Get-VMHostStorage
    
SYNOPSIS
    This cmdlet retrieves the host storages on a vCenter Server system.
    
    
SYNTAX
    Get-VMHostStorage [-VMHost] <VMHost[]> [-Refresh] [-RescanAllHba] [-RescanVmfs] [-Server <VIServer[]>] [<CommonParameters>]
    
    Get-VMHostStorage -Id <String[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the host storages on a vCenter Server system. The cmdlet returns a list of the storages on the hosts specified by the VMHost parameter. To specify a server 
    different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts for which you want to retrieve storage information.
        
    -Refresh
        Indicates whether the cmdlet refreshes the storage system information before retrieving the specified host storages.
        
    -RescanAllHba
        Indicates whether to issue a request to rescan all virtual machine hosts bus adapters for new storage devices prior to retrieving the storage information.
        
    -RescanVmfs
        Indicates whether to perform a re-scan for new virtual machine file systems that might have been added, prior to retrieving the storage information.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Id <String[]>
        Specifies the IDs of the host storages that you want to retrieve.
        
        Note: When a list of values is specified for the Id parameter, the returned objects would have an ID that matches exactly one of the string values in that list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VmHostStorage -VMHost 10.23.112.234 -Refresh
    
    Retrieves storage information from the virtual machine host with IP address 10.23.112.234.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostStorage | select -expandproperty scsilun | fl *
    
    Retrieves information about the vendor, model, and serial number of the virtual machine host storage SCSI adapter.
    
    Note that for devices, that are not SCSI-3 compliant, the SerialNumber property is not defined. And not  all SCSI-3 compliant devices provide the serial number information.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostStorage -examples".
    For more information, type: "get-help Get-VMHostStorage -detailed".
    For technical information, type: "get-help Get-VMHostStorage -full".
    For online help, type: "get-help Get-VMHostStorage -online"

Get-VMHostSysLogServer
-------------------------

NAME
    Get-VMHostSysLogServer
    
SYNOPSIS
    This cmdlet displays the remote syslog servers of the specified hosts.
    
    
SYNTAX
    Get-VMHostSysLogServer [-VMHost] <VMHost[]> [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet displays the remote syslog servers of the specified hosts. The returned object contains the server address and the port if configured.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the host whose remote syslog server you want to display.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$sysLogServer = Get-VMHostSysLogServer  -VMHost 10.23.123.234
    
    Retrieves the SysLog server of the virtual machine host with IP address 10.23.123.234.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMHostSysLogServer -examples".
    For more information, type: "get-help Get-VMHostSysLogServer -detailed".
    For technical information, type: "get-help Get-VMHostSysLogServer -full".
    For online help, type: "get-help Get-VMHostSysLogServer -online"

Get-VMQuestion
-------------------------

NAME
    Get-VMQuestion
    
SYNOPSIS
    This cmdlet retrieves the pending questions for the specified virtual machines.
    
    
SYNTAX
    Get-VMQuestion [-VM <VirtualMachine[]>] [[-QuestionText] <String>] [-QuestionId <String>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the pending questions for the specified virtual machines. A question is a task that requires a response from you. If the VM parameter is not specified or its value 
    is $null, the cmdlet returns all questions for all virtual machines on the specified servers.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose pending questions you want to retrieve.
        
    -QuestionText <String>
        Specifies a phrase from the text that describes the questions you want to retrieve.
        
    -QuestionId <String>
        Specifies the IDs of the questions you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMQuestion -VM VM
    
    Retrieves the questions of the VM virtual machine.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vm = Get-VM VM
    
    $vm | Get-VMQuestion -QuestionText "*have been moved or copied*"
    
    Retrieves the VM virtual machine questions that contain the phrase "have been moved or copied".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMQuestion -examples".
    For more information, type: "get-help Get-VMQuestion -detailed".
    For technical information, type: "get-help Get-VMQuestion -full".
    For online help, type: "get-help Get-VMQuestion -online"

Get-VMResourceConfiguration
-------------------------

NAME
    Get-VMResourceConfiguration
    
SYNOPSIS
    This cmdlet retrieves information about the resource allocation between the selected virtual machines.
    
    
SYNTAX
    Get-VMResourceConfiguration [-Server <VIServer[]>] [-VM] <VirtualMachine[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves information about the resource allocation between the selected virtual machines.
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose resource configuration you want to retrieve.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMResourceConfiguration -VM VM | Format-Custom -Property DiskResourceConfiguration
    
    Displays the disk share for the VM virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMResourceConfiguration -examples".
    For more information, type: "get-help Get-VMResourceConfiguration -detailed".
    For technical information, type: "get-help Get-VMResourceConfiguration -full".
    For online help, type: "get-help Get-VMResourceConfiguration -online"

Get-VMStartPolicy
-------------------------

NAME
    Get-VMStartPolicy
    
SYNOPSIS
    This cmdlet retrieves the start policy of the virtual machines on a vCenter Server system.
    
    
SYNTAX
    Get-VMStartPolicy [-VMHost <VMHost[]>] [[-VM] <VirtualMachine[]>] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet retrieves the start policy of the virtual machines on a vCenter Server system. The virtual machines are specified by the VM parameter or retrieved from the host passed 
    through the VMHost parameter. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts of the virtual machines whose start policy you want to retrieve.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose start policy you want to retrieve.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMStartPolicy -VM VM
    
    Retrieves the start policy of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-VMStartPolicy -examples".
    For more information, type: "get-help Get-VMStartPolicy -detailed".
    For technical information, type: "get-help Get-VMStartPolicy -full".
    For online help, type: "get-help Get-VMStartPolicy -online"



