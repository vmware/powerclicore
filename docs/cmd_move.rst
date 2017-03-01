Move Commands
=========================

This page contains details on **Move** commands.

Move-Cluster
-------------------------


NAME
    Move-Cluster
    
SYNOPSIS
    This cmdlet moves a vCenter Server cluster from one location to another.
    
    
SYNTAX
    Move-Cluster [-Cluster] <Cluster[]> [-Destination] <VIContainer> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a vCenter Server cluster to the location that is specified by the Destination parameter. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Cluster <Cluster[]>
        Specifies the clusters you want to move to another location.
        
    -Destination <VIContainer>
        Specifies the folder or datacenter where you want to move the clusters. If a datacenter is specified for the Destination parameter, the cluster is moved to its "hostFolder" folder. 
        The "hostFolder" is a system folder and is guaranteed to exist.
        
        Note: You cannot move clusters from one datacenter to another. You can only move clusters between folders and to datacenter level.
        
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
    
    C:\PS>Move-Cluster -Cluster Cluster -Destination Folder
    
    Moves the cluster named Cluster into the folder called Folder on the same datacenter
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-Cluster -examples".
    For more information, type: "get-help Move-Cluster -detailed".
    For technical information, type: "get-help Move-Cluster -full".
    For online help, type: "get-help Move-Cluster -online"

Move-Datacenter
-------------------------

NAME
    Move-Datacenter
    
SYNOPSIS
    This cmdlet moves a vCenter Server datacenter from one location to another.
    
    
SYNTAX
    Move-Datacenter [-Datacenter] <Datacenter[]> [-Destination] <VIContainer> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a vCenter Server datacenter to the location that is specified by the Destination parameter.  To specify a server different from the default one, use the Server 
    parameter.
    

PARAMETERS
    -Datacenter <Datacenter[]>
        Specifies the datacenters you want to move to another location.
        
    -Destination <VIContainer>
        Specifies the folder where you want to move the datacenters.
        
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
    
    C:\PS>Move-Datacenter Datacenter -Destination Folder
    
    Moves the Datacenter datacenter into the folder named Folder.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-Datacenter -examples".
    For more information, type: "get-help Move-Datacenter -detailed".
    For technical information, type: "get-help Move-Datacenter -full".
    For online help, type: "get-help Move-Datacenter -online"

Move-Datastore
-------------------------

NAME
    Move-Datastore
    
SYNOPSIS
    This cmdlet moves datastores from one location to another.
    
    
SYNTAX
    Move-Datastore [-Datastore] <Datastore[]> [-Destination] <VIObject> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves datastores from one location to another.
    

PARAMETERS
    -Datastore <Datastore[]>
        Specifies the datastore that you want to move.
        
    -Destination <VIObject>
        Specifies a datastore cluster, folder, or datacenter where you want to place the datastore.
        
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
    
    C:\PS>Move-Datastore "MyDatastore" -Destination "MyDatastoreFolder"
    
    Moves the MyDatastore datastore to the specified folder.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myDatastoreCluster = Get-DatastoreCluster -Name "MyDatatoreCluster"
    Get-Datastore "MyDatastore1", "MyDatastore2" | Move-Datstore -Destination $myDatastoreCluster
    
    Moves two datastores to a specified datastore cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-Datastore -examples".
    For more information, type: "get-help Move-Datastore -detailed".
    For technical information, type: "get-help Move-Datastore -full".
    For online help, type: "get-help Move-Datastore -online"

Move-Folder
-------------------------

NAME
    Move-Folder
    
SYNOPSIS
    This cmdlet moves a vCenter Server folder from one location to another.
    
    
SYNTAX
    Move-Folder [-Folder] <Folder[]> [-Destination] <VIContainer> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a vCenter Server folder to the location that is specified by the Destination parameter. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -Folder <Folder[]>
        Specifies the folders you want to move to another location.
        
    -Destination <VIContainer>
        Specifies the datacenter or folder where you want to move the folders. If a datacenter is specified for the Destination parameter, the folder is moved to the datacenter's hostFolder 
        or vmFolder folder, depending on the folder's child item type. The hostFolder and vmFolder are system folders and are guaranteed to exist.
        
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
    
    C:\PS>Get-Folder -Name "vmFolder" | Move-Folder -Destination "destinationVmFolder"
    
    Moves the "vmFolder" folder into another folder of the same type named "destinationVmFolder".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-Folder -examples".
    For more information, type: "get-help Move-Folder -detailed".
    For technical information, type: "get-help Move-Folder -full".
    For online help, type: "get-help Move-Folder -online"

Move-HardDisk
-------------------------

NAME
    Move-HardDisk
    
SYNOPSIS
    This cmdlet moves a hard disk from one location to another.
    
    
SYNTAX
    Move-HardDisk [-HardDisk] <HardDisk[]> [-Datastore] <Datastore> [-StorageFormat <VirtualDiskStorageFormat>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a hard disk from one location to another.
    

PARAMETERS
    -HardDisk <HardDisk[]>
        Specifies the hard disk that you want to move to another location.
        
    -Datastore <Datastore>
        Specifies a datastore where you want to place the hard disk.
        
    -StorageFormat <VirtualDiskStorageFormat>
        Specifies the storage format of the relocated hard disk. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
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
    
    C:\PS>$myDatastore1 = Get-Datastore -Name 'MyDatastore1'
    $myDisk = Get-VM -Name MyVm1 | Get-HardDisk
    Move-HardDisk -HardDisk $myDisk -Datastore $myDatastore1
    
    Moves the hard disk of a specified virtual machine to another datastore.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myDisk = Get-VM -Name 'MyVM1' | Get-HardDisk
    $myDatastore1 = Get-Datastore -Name 'MyDatastore1'
    Move-hardDisk - HardDisk $myDisk -Datastore $myDatastore1 - StorageFormat 'EagerZeroedThick'
    
    Moves the hard disk of a specified virtual machine to another datastore and changes the storage format of the hard disk to EagerZeroedThick.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-HardDisk -examples".
    For more information, type: "get-help Move-HardDisk -detailed".
    For technical information, type: "get-help Move-HardDisk -full".
    For online help, type: "get-help Move-HardDisk -online"

Move-Inventory
-------------------------

NAME
    Move-Inventory
    
SYNOPSIS
    This cmdlet moves a vCenter Server inventory item from one location to another.
    
    
SYNTAX
    Move-Inventory [-Item] <InventoryItem[]> [-Destination] <VIContainer> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a vCenter Server inventory object or template to the location that is specified by the Destination parameter.
    

PARAMETERS
    -Item <InventoryItem[]>
        Specifies the Folder, ResourcePool, Datacenter, VirtualMachine, VMHost, Template, or Cluster objects you want to move to another location.
        
    -Destination <VIContainer>
        Specifies the location where you want to move the inventory items.
        
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
    
    C:\PS>$vm = Get-VM -Name VM*
    
    Move-Inventory -Item $vm -Destination Folder
    
    Moves the virtual machines whose names start with VM to the Folder folder.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Folder Folder1 | Get-Inventory -NoRecursion | Move-Inventory -Destination Folder2
    
    Moves all objects from the Folder1 folder to the Folder2 folder.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-Inventory -examples".
    For more information, type: "get-help Move-Inventory -detailed".
    For technical information, type: "get-help Move-Inventory -full".
    For online help, type: "get-help Move-Inventory -online"

Move-ResourcePool
-------------------------

NAME
    Move-ResourcePool
    
SYNOPSIS
    This cmdlet moves a resource pool from one location to another.
    
    
SYNTAX
    Move-ResourcePool [-ResourcePool] <ResourcePool[]> [-Destination] <VIContainer> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a resource pool to the location that is specified by the Destination parameter. To specify a server different from the default one, use the Server parameter. Moving a 
    resource pool is only supported when the objects assigned to the ResourcePool and Destination parameters are passed through connections to one and the same server with the same 
    credentials.
    

PARAMETERS
    -ResourcePool <ResourcePool[]>
        Specifies the resource pools you want to move to another location.
        
    -Destination <VIContainer>
        Specifies the location where you want to move the resource pools. If a host or a cluster is specified for the Destination parameter, the resource pool is moved into a resource pool 
        named Resources. The Resources resource pool is a system resource pool and is guaranteed to exist.
        
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
    
    C:\PS>Move-ResourcePool -ResourcePool ResourcePool -Destination Host
    
    Moves the resource pool named ResourcePool to the virtual machine host Host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-ResourcePool -examples".
    For more information, type: "get-help Move-ResourcePool -detailed".
    For technical information, type: "get-help Move-ResourcePool -full".
    For online help, type: "get-help Move-ResourcePool -online"

Move-Template
-------------------------

NAME
    Move-Template
    
SYNOPSIS
    This cmdlet moves virtual machine templates to another location.
    
    
SYNTAX
    Move-Template [-Template] <Template[]> [-Destination] <VIContainer> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves virtual machine templates to a location that is specified by the Destination parameter.
    

PARAMETERS
    -Template <Template[]>
        Specifies the virtual machine templates you want to move to another location.
        
    -Destination <VIContainer>
        Specifies a container object where you want to move the templates.
        
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
    
    C:\PS>Move-Template -Template $template -Destination $dest
    
    Moves the $template object into the $dest container object.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-Template -examples".
    For more information, type: "get-help Move-Template -detailed".
    For technical information, type: "get-help Move-Template -full".
    For online help, type: "get-help Move-Template -online"

Move-VApp
-------------------------

NAME
    Move-VApp
    
SYNOPSIS
    This cmdlet moves the specified virtual appliances to a new location.
    
    
SYNTAX
    Move-VApp [-Destination] <VIContainer> [-VApp] <VApp[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves the specified vApps to a new location. If the destination is a host or a cluster, the vApps are moved to the system "Resources" resource pool.
    

PARAMETERS
    -Destination <VIContainer>
        Specifies where you want to move the specified vApps. Supported types are Folder, VMHost, Cluster, ResourcePool, VApp, and Datacenter.
        
    -VApp <VApp[]>
        Specifies the vApps you want to move.
        
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
    
    C:\PS>$vmHost = Get-VMHost -Name "MyVMHost1"
    $myDestinationRP = New-ResourcePool -Name "vApp ResourcePool" -Location $vmHost
    Move-VApp -VApp (Get-Vapp -Name "MyVApp1" -Location $vmHost) -Destination $myDestinationRP
    
    Moves a vApp from a host to a resource pool from the same host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmHost = Get-VMHost -Name "MyVMHost1"
    $myDestinationVApp = New-VApp -Name "MyvApp1" -Location $vmHost
    (Get-Vapp -Name "MyvApp2" -Location (Get-ResourcePool -Name "MyResourcePool1") | Move-VApp -Destination $myDestinationVApp
    
    Moves a vApp from a resource pool to another vApp.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Move-VApp -Name "MyvApp1" (Get-VMHost -Name "MyVMHost1")
    
    Moves a vApp from a resource pool to a host.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myVmFolder1 = Get-Folder -Name "MyVMFolder1" -Location (Get-Datacenter -Name "MyDatacenter1") -NoRecursion
    $myVMFolder2 = New-Folder -Name "MyVMFolder2" -Location $myVmFolder1
    Get-VApp -Name "MyVApp" | Move-VApp -Destination $myVMFolder2 -RunAsync
    
    Moves a virtual appliance to a folder asynchronously.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-VApp -examples".
    For more information, type: "get-help Move-VApp -detailed".
    For technical information, type: "get-help Move-VApp -full".
    For online help, type: "get-help Move-VApp -online"

Move-VM
-------------------------

NAME
    Move-VM
    
SYNOPSIS
    This cmdlet moves virtual machines to another location.
    
    
SYNTAX
    Move-VM [-AdvancedOption <AdvancedOption[]>] [[-Destination] <VIContainer>] [-Datastore <StorageResource>] [-DiskStorageFormat <VirtualDiskStorageFormat>] [-VMotionPriority 
    <VMotionPriority>] [-RunAsync] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves a virtual machine to the location that is specified by the Destination or the Datastore parameters. The destination must be a folder, host, cluster, or a resource 
    pool. You can move a virtual machine to a DRS cluster. Moving a virtual machine to the top level of a non-DRS cluster is only possible if the virtual machine is in a resource pool in 
    that cluster. If the virtual machine is outside the non-DRS cluster, you need to specify a virtual machine host in that cluster as destination. When moving virtual machines that are 
    powered on, vMotion is used. To specify a server different from the default one, use the Server parameter. You can move storage and compute resources simultaneously.
    

PARAMETERS
    -AdvancedOption <AdvancedOption[]>
        This parameter is only applicable when a DatastoreCluster object is passed to the Datastore parameter.
        Specifies one or more rules for the placement of the virtual machines that you want to relocate. 
        
        To indicate that VMs should be stored on different datastores, pass an SdrsVMAntiAffinityRule object to the parameter. You can set more than one Storage DRS (SDRS) VM anti-affinity 
        rules.
        
        To indicate that the VM disks should be stored on different datastores, pass an SdrsVMDiskAntiAffinityRule object to the parameter. You can set only one SDRS VM disk anti-affinity 
        rule.
        
    -Destination <VIContainer>
        Specifies a folder, host, cluster, or a resource pool where you want to move the virtual machines. If a datacenter is specified for the Destination parameter, the virtual machines 
        are moved to the datacenter's "vmFolder" folder. The "vmFolder" is a system folder and is guaranteed to exist.
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -Datastore <StorageResource>
        Specifies the datastore or datastore cluster where you want to move the virtual machines. When you pass a datastore cluster to the Datastore parameter, you can also set the 
        AdvancedOption parameter.
        
    -DiskStorageFormat <VirtualDiskStorageFormat>
        Specifies a new storage format for the hard disk of the virtual machine you want to move. This parameter is applicable only when moving a virtual machine to a different datastore, 
        using the Datastore parameter. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
    -VMotionPriority <VMotionPriority>
        Determines the priority that should be used for a vMotion operation.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to move to another location.
        
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
    
    C:\PS>Get-VM -Name VM | Move-VM -Destination 10.23.112.235
    
    Moves the virtual machine named VM from its current location to the host on IP address 10.23.112.235.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Move-VM -VM VM -Destination Folder
    
    Moves the virtual machine to a folder called Folder. Note that you are able to move virtual machines only to folders containing virtual machines (the 'blue' folders in the vSphere 
    Client).
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Move-VM -VM 'MyVM' -Destination 'MyDestination'
    
    Moves a powered-on virtual machine from one existing host to another, by using vMotion, passing parameters by name.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Move-VM -VM 'MyVM' -Datastore 'MyDatastore'
    
    Moves a powered-on virtual machine from one existing datastore to another, by using storage vMotion, passing parameters by name.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$myDatastoreCluster1 = Get-DatastoreCluster -Name 'MyDatastoreCluster1'
    Move-VM -VM 'MyVM1' -Datastore $myDatastoreCluster1
    
    Moves the MyVM1 virtual machine to any datastore in the specified datastore cluster.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$myDatastoreCluster1 = Get-DatastoreCluster -Name 'MyDatastoreCluster1'
    $myVm2 = Get-VM -Name 'MyVM2'
    $vmAntiAffinityRule = New-Object -TypeName VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMAntiAffinityRule -ArgumentList $myVm2
    Move-VM -VM 'MyVM1' -Datastore $myDatastoreCluster1 -AdvancedOption $vmAntiAffinityRule
    
    Moves the MyVM1 virtual machine to the specified datastore cluster and sets a VM anti-affinity rule for the placement of the virtual machine. The MyVM1 virtual machine will be placed on 
    any datastore in the specified datastore cluster that does not contain the MyVM2 virtual machine.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>$myVm1 = Get-VM -Name 'MyVM1'
    $vmdks = Get-Harddisk -VM $myVm1
    $myDatastoreCluster1 = Get-DatastoreCluster -Name 'MyDatastoreCluster1'
    $vmdkAntiAffinityRule = New-Object -TypeName VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMDiskAntiAffinityRule -ArgumentList $vmdks
    Move-VM -VM '$myVm1' -Datastore $myDatastoreCluster1 -AdvancedOption $vmdkAntiAffinityRule
    
    Moves the MyVM1 virtual machine to the specified datastore cluster and sets a VM disk anti-affinity rule for the placement of the virtual machine. The disks of the MyVM1 virtual machine 
    will be stored on different datastores in the specified datastore cluster.
    
    
    
    
    --------------  Example 8 --------------
    
    C:\PS>Get-VM -Name 'MyVM' -Server 'MyServer' | Move-VM -Destination 'NewHost' -Datastore 'DatastoreOnNewHost' -DiskStorageFormat 'Thin'
    
    Moves a powered-off virtual machine to another datastore on another host and changes its disk storage format to thin.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-VM -examples".
    For more information, type: "get-help Move-VM -detailed".
    For technical information, type: "get-help Move-VM -full".
    For online help, type: "get-help Move-VM -online"

Move-VMHost
-------------------------

NAME
    Move-VMHost
    
SYNOPSIS
    This cmdlet moves hosts to another location.
    
    
SYNTAX
    Move-VMHost [-VMHost] <VMHost[]> [-Destination] <VIContainer> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet moves hosts to the location that is specified by the Destination parameter. To specify a server different from the default one, use the Server parameter.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to move to another location.
        
    -Destination <VIContainer>
        Specifies the location where you want to move the hosts.
        
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
    
    C:\PS>Move-VMHost 192.168.112.113 -Destination Datacenter
    
    Moves the host with IP address 10.23.112.113 to a different datacenter named Datacenter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Move-VMHost -examples".
    For more information, type: "get-help Move-VMHost -detailed".
    For technical information, type: "get-help Move-VMHost -full".
    For online help, type: "get-help Move-VMHost -online"



