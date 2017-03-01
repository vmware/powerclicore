New Commands
=========================

This page contains details on **New** commands.

New-AdvancedSetting
-------------------------


NAME
    New-AdvancedSetting
    
SYNOPSIS
    This cmdlet creates a new advanced setting for the specified entity.
    
    
SYNTAX
    New-AdvancedSetting [-Name] <String> [-Value] <Object> [-Entity] <VIObject[]> [-Type <AdvancedSettingType>] [-Force] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new advanced setting for the specified entity.
    

PARAMETERS
    -Name <String>
        Specifies a name for the advanced setting.
        
    -Value <Object>
        Specifies a value for the advanced setting.
        
    -Entity <VIObject[]>
        Specifies the entity for which you want to create a new advanced setting. This parameter accepts VIServer, VirtualMachine, DatastoreCluster, and Cluster objects.
        
    -Type <AdvancedSettingType>
        Specifies the type of the new advanced setting.
        
    -Force
        Indicates that you want to create the new advanced setting even if another setting with the same name exists for the specified object type.
        
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
    
    C:\PS>New-AdvancedSetting -Entity (Get-Cluster -Name Cluster) -Name SettingName -Value SettingValue -Type ClusterHA
    
    Creates a new advanced setting for the Cluster cluster - of type CLusterHA, with name SettingName and value SettingValue.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-AdvancedSetting -examples".
    For more information, type: "get-help New-AdvancedSetting -detailed".
    For technical information, type: "get-help New-AdvancedSetting -full".
    For online help, type: "get-help New-AdvancedSetting -online"

New-AlarmAction
-------------------------

NAME
    New-AlarmAction
    
SYNOPSIS
    This cmdlet creates an alarm action and attaches it to the specified alarm.
    
    
SYNTAX
    New-AlarmAction [-AlarmDefinition] <AlarmDefinition> -Snmp [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-AlarmAction [-AlarmDefinition] <AlarmDefinition> -Email [-Subject <String>] -To <String[]> [-Cc <String[]>] [-Body <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    New-AlarmAction [-AlarmDefinition] <AlarmDefinition> -Script -ScriptPath <String> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates an alarm action and attaches it to the specified alarm.
    

PARAMETERS
    -AlarmDefinition <AlarmDefinition>
        Specifies the alarm definition for which you want to configure actions.
        
    -Snmp
        Indicates that a SNMP message is sent when the alarm is activated.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Email
        Indicates that when the alarm is activated, the system sends an email message to the specified address. Use the Subject, To, CC, and Body parameters to customize the alarm message.
        
    -Subject <String>
        Specifies a subject for the email message you want to send.
        
    -To <String[]>
        Specifies the email address to which you want to send a message.
        
    -Cc <String[]>
        Specifies the email addresses you want to add to the CC field of the email message.
        
    -Body <String>
        Specifies the text of the email message.
        
    -Script
        Indicates that a script is run when the alarm is activated.
        
    -ScriptPath <String>
        Specifies the path to a batch file, located on a vCenter Server system, that will run when the alarm is activated.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-AlarmDefinition -Name "Alarm1" | New-AlarmAction -Snmp
    
    Creates an alarm action SNMP.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-AlarmDefinition -Name "Alarm1" | New-AlarmAction -Script -ScriptPath 'c:\test.bat'
    
    Creates an alarm action script.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-AlarmDefinition -Name "Alarm1" | New-AlarmAction -Email -To 'test@vmware.com' -CC @('test1@vmware.com', 'test2@vmware.com') -Body 'Test body' -Subject 'Test subject'
    
    Creates an alarm action Email.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-AlarmAction -examples".
    For more information, type: "get-help New-AlarmAction -detailed".
    For technical information, type: "get-help New-AlarmAction -full".
    For online help, type: "get-help New-AlarmAction -online"

New-AlarmActionTrigger
-------------------------

NAME
    New-AlarmActionTrigger
    
SYNOPSIS
    This cmdlet creates a new action trigger for the specified alarm action.
    
    
SYNTAX
    New-AlarmActionTrigger [-StartStatus] <InventoryItemStatus> [-EndStatus] <InventoryItemStatus> -AlarmAction <AlarmAction> [-Repeat] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new action trigger for the specified alarm action.
    

PARAMETERS
    -StartStatus <InventoryItemStatus>
        Specifies the start status for the alarm action. The valid values are Green, Yellow, and Red.
        
    -EndStatus <InventoryItemStatus>
        Specifies the end status for the alarm action. The valid values are Green, Yellow, and Red.
        
    -AlarmAction <AlarmAction>
        Specifies the alarm action for which you want to create an action trigger.
        
    -Repeat
        Indicates whether you want the alarm action to repeat until the alarm is acknowledged.
        
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
    
    C:\PS>Get-AlarmDefinition -Name "Alarm1" | Get-AlarmAction | New-AlarmActionTrigger -StartStatus 'Red' -EndStatus 'Yellow' -Repeat
    
    Creates an action trigger for all actions for the specified alarm definition.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-AlarmActionTrigger -examples".
    For more information, type: "get-help New-AlarmActionTrigger -detailed".
    For technical information, type: "get-help New-AlarmActionTrigger -full".
    For online help, type: "get-help New-AlarmActionTrigger -online"

New-CDDrive
-------------------------

NAME
    New-CDDrive
    
SYNOPSIS
    This cmdlet creates a new virtual CD drive.
    
    
SYNTAX
    New-CDDrive [-IsoPath <String>] [-HostDevice <String>] [-StartConnected] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new virtual CD drive for each of the provided virtual machines. If an ISO location is provided, sets the CD to point to the ISO.
    

PARAMETERS
    -IsoPath <String>
        Specifies the datastore path to the ISO (CD image) file that backs the virtual CD drive. Do not set this parameter if the HostDevice parameter is set.
        
    -HostDevice <String>
        Specifies the path to the CD drive on the virtual machine host that backs the virtual CD drive. Do not set this parameter if the ISOPath parameter is set.
        
    -StartConnected
        Indicates that the virtual CD drive starts connected when the virtual machine associated with it powers on.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machine to which the new virtual CD drive belongs.
        
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
    
    C:\PS>New-CDDrive -VM $vm -ISOPath "Path_to_ISO\test.iso"
    
    Creates a CD drive on the specified virtual machine and attach an ISO image to it.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-CDDrive -examples".
    For more information, type: "get-help New-CDDrive -detailed".
    For technical information, type: "get-help New-CDDrive -full".
    For online help, type: "get-help New-CDDrive -online"

New-Cluster
-------------------------

NAME
    New-Cluster
    
SYNOPSIS
    This cmdlet creates a new cluster.
    
    
SYNTAX
    New-Cluster [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse <HAIsolationResponse>] [-VMSwapfilePolicy <VMSwapfilePolicy>] [-Name] <String> -Location <VIContainer> 
    [-HAEnabled] [-HAAdmissionControlEnabled] [-HAFailoverLevel <Int32>] [-DrsEnabled] [-DrsMode <DrsMode>] [-DrsAutomationLevel <DrsAutomationLevel>] [-VsanDiskClaimMode 
    <VsanDiskClaimMode>] [-VsanEnabled] [-EVCMode <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new cluster with the provided inputs, in the location that is specified by the Location parameter.
    HAEnabled is automatically set to $true if some of the HA settings, HAAdmissionControlEnabled, HAFailoverLevel, HARestartPriority, HAIsolationResponse, are specified .
    DrsEnabled is automatically set to $true if some of the DRS settings, DrsAutomationLevel, DrsMode, are specified .
    

PARAMETERS
    -HARestartPriority <HARestartPriority>
        Specifies the cluster HA restart priority. The valid values are Disabled, Low, Medium, and High. VMware HA is a feature that detects failed virtual machines and automatically 
        restarts them on alternative ESX hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -HAIsolationResponse <HAIsolationResponse>
        Indicates that the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The valid values are PowerOff and DoNothing. 
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -VMSwapfilePolicy <VMSwapfilePolicy>
        Specifies the swapfile placement policy. The following values are valid:
        
        InHostDataStore - Store the swapfile in the datastore that is specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is 
        not set or indicates a datastore with unsufficient free space, store the swapfile in the same directory as the virtual machine. This setting might degrade VMotion performance.
        
        WithVM - Store the swapfile in the same directory as the virtual machine.
        
    -Name <String>
        Specifies the name of the new cluster.
        
    -Location <VIContainer>
        Specifies the location where you want to place the new cluster. If a datacenter is specified for the Location parameter, the cluster is created in its "hostFolder" folder. The 
        "hostFolder" is a system folder and is guaranteed to exist.
        
    -HAEnabled
        Indicates that VMware HA (High Availability) is enabled.
        
    -HAAdmissionControlEnabled
        Indicates that virtual machines cannot be powered on if they violate availability constraints.
        
    -HAFailoverLevel <Int32>
        Specifies a configured failover level. This is the number of physical host failures that can be tolerated without impacting the ability to meet minimum thresholds for all running 
        virtual machines. The valid values range from 1 to 4.
        
    -DrsEnabled
        Indicates that VMware DRS (Distributed Resource Scheduler) is enabled.
        
    -DrsMode <DrsMode>
        This parameter is deprecated and scheduled for removal. Use the DrsAutomationLevel parameter instead. 
        
        Specifies a DRS (Distributed Resource Scheduler) mode. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
        
    -DrsAutomationLevel <DrsAutomationLevel>
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
        
    -VsanDiskClaimMode <VsanDiskClaimMode>
        Specifies the mode by which disks are claimed by the Virtual SAN. If not specified and VsanEnabled is specified, the assumed value is Manual.
        
    -VsanEnabled
        Indicates that the Virtual SAN feature is enabled on this cluster.
        
    -EVCMode <String>
        Specifies the VMware Enhanced vMotion Compatibility (EVC) mode of the newly created cluster. If not specified or set to $null, EVC is disabled.
        
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
    
    C:\PS>New-Cluster -Name "MyCluster" -Location "MyDatacenter"
    
    Creates a new cluster named "MyCluster" in the "MyDatacenter" datacenter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-Cluster -Name "MyCluster" -Location "MyDatacenter" -HAEnabled -HAAdmissionControlEnabled -HAFailoverLevel 2 -VMSwapfilePolicy "InHostDatastore" -HARestartPriority "Low" 
    -HAIsolationResponse "PowerOff"
    
    Creates a new cluster named "MyCluster" in the "MyDatacenter" datacenter, with specified VMware HA (Hgh Availability) settings.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>New-Cluster -Name "MyCluster" -Location "MyDatacenter" -DRSEnabled -DRSAutomationLevel 'Manual'
    
    Creates a new cluster named "MyCluster" in the "MyDatacenter" datacenter, with specified VMware DRS (Distributed Resource Scheduler) settings.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>New-Cluster -Name "MyCluster" -Location "MyDatacenter" -EVCMode 'intel-nehalem'
    
    Creates a new cluster named "MyCluster" in the "MyDatacenter" datacenter, with specified VMware EVC (Enhanced vMotion Compatibility) settings.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Cluster -examples".
    For more information, type: "get-help New-Cluster -detailed".
    For technical information, type: "get-help New-Cluster -full".
    For online help, type: "get-help New-Cluster -online"

New-CustomAttribute
-------------------------

NAME
    New-CustomAttribute
    
SYNOPSIS
    This cmdlet creates a new custom attribute.
    
    
SYNTAX
    New-CustomAttribute [-Name] <String> [[-TargetType] <CustomAttributeTargetType[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new custom attribute. A custom attribute is a user-defined description field of one or more vCenter Server objects.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new custom attribute.
        
    -TargetType <CustomAttributeTargetType[]>
        Specifies the type of the objects to which the new custom attribute applies. The valid values are VirtualMachine, ResourcePool, Folder, VMHost, Cluster, Datacenter, and $null. If 
        the value is $null the custom attribute is global and applies to all target types.
        
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
    
    C:\PS>New-CustomAttribute -Name "CompanyName" -TargetType VMHost, VirtualMachine
    
    Creates a new custom attribute named CompanyName for the virtual machines and hosts on the server.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-CustomAttribute -examples".
    For more information, type: "get-help New-CustomAttribute -detailed".
    For technical information, type: "get-help New-CustomAttribute -full".
    For online help, type: "get-help New-CustomAttribute -online"

New-Datacenter
-------------------------

NAME
    New-Datacenter
    
SYNOPSIS
    This cmdlet creates a new datacenter.
    
    
SYNTAX
    New-Datacenter [-Location] <VIContainer> [-Name] <String> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new datacenter in the location that is specified by the Location parameter.
    

PARAMETERS
    -Location <VIContainer>
        Specifies the location where you want to create the new datacenter.
        
    -Name <String>
        Specifies a name for the new datacenter.
        
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
    
    C:\PS>$folder = Get-Folder -NoRecursion | New-Folder -Name Folder
    
    New-Datacenter -Location $folder -Name Datacenter | fl
    
    Gets the inventory root folder and create a new folder called Folder in it.
    Creates a new datacenter called Datacenter in the Folder folder. The result is pipelined to the fl command to retrieve a flat view of the new datacenter properties.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Datacenter -examples".
    For more information, type: "get-help New-Datacenter -detailed".
    For technical information, type: "get-help New-Datacenter -full".
    For online help, type: "get-help New-Datacenter -online"

New-Datastore
-------------------------

NAME
    New-Datastore
    
SYNOPSIS
    This cmdlet creates a new datastore.
    
    
SYNTAX
    New-Datastore [-Server <VIServer[]>] [-VMHost] <VMHost[]> [-Name] <String> -Path <String> [-Vmfs] [-BlockSizeMB <Int32>] [-FileSystemVersion <String>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    New-Datastore [-Server <VIServer[]>] [-VMHost] <VMHost[]> [-Name] <String> -Path <String> [-Nfs] -NfsHost <String[]> [-ReadOnly] [-Kerberos] [-FileSystemVersion <String>] [-WhatIf] 
    [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new datastore based on the provided parameters. The following characters cannot be used in a datastore name: slash (/), backslash (\), and percent (%).
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -VMHost <VMHost[]>
        Specifies a host where you want to create the new datastore.
        
    -Name <String>
        Specifies a name for the new datastore.
        
    -Path <String>
        If you want to create an NFS datastore, specify the remote path of the NFS mount point.
        If you want to create a VMFS datastore, specify the canonical name of the SCSI logical unit that will contain new VMFS datastores.
        
    -Vmfs
        Indicates that you want to create a VMFS datastore.
        
    -BlockSizeMB <Int32>
        Specifies the maximum file size of VMFS in megabytes (MB). If no value is given, the maximum file size for the current system platform is used.
        
    -FileSystemVersion <String>
        Specifies the file system you want to use on the new datastore.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Nfs
        Indicates that you want to create an NFS datastore.
        
    -NfsHost <String[]>
        Specifies the NFS host where you want to create the new datastore.
        
    -ReadOnly
        Indicates that the access mode for the mount point is ReadOnly. The default access mode is ReadWrite.
        
    -Kerberos
        By default, NFS datastores are created with AUTH_SYS as the authentication protocol. This parameter indicates that the NFS datastore uses Kerberos version 5 for authentication. This 
        parameter is available only for NFS version 4.1 datastores.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>New-Datastore -VMHost $vmhost -Name Datastore -Path $scsiLun.CanonicalName -Vmfs -FileSystemVersion 3
    
    Creates a VMFS datastore by specifying the file system type.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-Datastore -Nfs -VMHost 10.23.112.60 -Name NFSDatastore -Path /mynfs -NfsHost 10.23.84.73
    
    Creates a NFS datastore.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vmhost1, $vmhost2 | New-Datastore -Nfs -Name NFS1 -Path "/mnt/nfs1/nfs11/test1" -NfsHost 10.23.113.55 -ReadOnly
    
    Creates a read-only NFS datastore across multiple virtual machine hosts.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Datastore -examples".
    For more information, type: "get-help New-Datastore -detailed".
    For technical information, type: "get-help New-Datastore -full".
    For online help, type: "get-help New-Datastore -online"

New-DatastoreCluster
-------------------------

NAME
    New-DatastoreCluster
    
SYNOPSIS
    This cmdlet creates a new datastore cluster.
    
    
SYNTAX
    New-DatastoreCluster [-Name] <String> -Location <VIContainer> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new datastore cluster. By default, Storage DRS is disabled. To enable Storage DRS, run Set-DatastoreCluster.
    

PARAMETERS
    -Name <String>
        Specifies a name for the datastore cluster that you want to create.
        
    -Location <VIContainer>
        Specifies a container object (Datacenter or Folder) where you want to place the new datastore cluster.
        
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
    
    C:\PS>New-DatastoreCluster -Name 'MyDatastoreCluster' -Location 'MyDatacenter'
    
    Creates a new datastore cluster on the specified datacenter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-DatastoreCluster -examples".
    For more information, type: "get-help New-DatastoreCluster -detailed".
    For technical information, type: "get-help New-DatastoreCluster -full".
    For online help, type: "get-help New-DatastoreCluster -online"

New-DrsRule
-------------------------

NAME
    New-DrsRule
    
SYNOPSIS
    This cmdlet creates a new DRS rule.
    
    
SYNTAX
    New-DrsRule [-Name] <String> [-Cluster] <Cluster[]> [-Enabled <Boolean>] -KeepTogether <Boolean> -VM <VirtualMachine[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new DRS rule. Each rule defines the virtual machines that can run on the same host (affinity rule) or must run on different hosts (anti-affinity rule).
    

PARAMETERS
    -Name <String>
        Specifies a name for the new DRS rule.
        
    -Cluster <Cluster[]>
        Specifies the clusters for which the new DRS rule applies.
        
    -Enabled [<Boolean>]
        If the value of this parameter is $true, the new DRS rule is enabled for the specified clusters. If the value is $false, it is disabled.
        
    -KeepTogether [<Boolean>]
        If the value of this parameter is $true, the new DRS rule is an affinity rule. If the value is $false, the DRS rule is an anti-affinity rule.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines that are referenced by the new DRS rule.
        
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
    
    C:\PS>New-DrsRule -Cluster $cluster -Name antiAffinityRule1 -KeepTogether $false -VM $antiAffinityVMs
    
    Creates a new DRS rule for the cluster saved in the $cluster variable with the specified parameters.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-DrsRule -examples".
    For more information, type: "get-help New-DrsRule -detailed".
    For technical information, type: "get-help New-DrsRule -full".
    For online help, type: "get-help New-DrsRule -online"

New-FloppyDrive
-------------------------

NAME
    New-FloppyDrive
    
SYNOPSIS
    This cmdlet creates a new virtual floppy drive.
    
    
SYNTAX
    New-FloppyDrive [-FloppyImagePath <String>] [-NewFloppyImagePath <String>] [-HostDevice <String>] [-StartConnected] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new virtual floppy drive for each of the provided virtual machines. If a floppy image path is provided, sets the floppy drive to point to the image. If both the 
    FloppyImagePath and HostDevice parameters are specified, an error is generated.
    

PARAMETERS
    -FloppyImagePath <String>
        Specifies the datastore path to the floppy image file backing the virtual floppy drive. Do not use this parameter together with the HostDevice parameter.
        
    -NewFloppyImagePath <String>
        Specifies a new datastore path to a floppy image file backing the virtual floppy drive. Do not use this parameter together with the HostDevice parameter.
        
    -HostDevice <String>
        Specifies the path to the floppy drive on the host which will back this virtual floppy drive. Do not use this parameter together with the FloppyImagePath parameter.
        
    -StartConnected
        Indicates that the virtual floppy drive starts connected when its associated virtual machine powers on.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines to which you want to attach the new virtual floppy drive.
        
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
    
    C:\PS>New-FloppyDrive -VM VM -HostDevice '/dev/fd0' -StartConnected
    
    Creates a floppy drive backed by the client device /dev/fd0 and sets it to start connected when the virtual machine is powered on.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-FloppyDrive -examples".
    For more information, type: "get-help New-FloppyDrive -detailed".
    For technical information, type: "get-help New-FloppyDrive -full".
    For online help, type: "get-help New-FloppyDrive -online"

New-Folder
-------------------------

NAME
    New-Folder
    
SYNOPSIS
    This cmdlet creates a new folder on a vCenter Server system.
    
    
SYNTAX
    New-Folder [-Name] <String> [-Location] <VIContainer> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new folder on the specified location.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new folder.
        
    -Location <VIContainer>
        Specifies a container object (folder, datacenter, or cluster) where you want to place the new folder. If a datacenter is specified for the Location parameter, then the folder is 
        created in its "hostFolder" folder and contains hosts and clusters. The "hostFolder" is a system folder and is guaranteed to exist.
        
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
    
    C:\PS>New-Folder -Name "Folder1" -Location (Get-Datacenter)[0]
    
    Creates a new folder in a datacenter root.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-Folder -Name "Folder1" -Location (Get-Cluster)[0]
    
    Creates a new folder in a cluster root.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-Folder | Select -First 1 | New-Folder -Name "Folder2"
    
    Creates a nested folder by using a pipeline command.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Folder -examples".
    For more information, type: "get-help New-Folder -detailed".
    For technical information, type: "get-help New-Folder -full".
    For online help, type: "get-help New-Folder -online"

New-HardDisk
-------------------------

NAME
    New-HardDisk
    
SYNOPSIS
    This cmdlet creates a new hard disk on the specified location.
    
    
SYNTAX
    New-HardDisk [-AdvancedOption <AdvancedOption[]>] [[-Persistence] <String>] [-Controller <ScsiController>] [[-DiskType] <DiskType>] [-CapacityKB <Int64>] [-CapacityGB <Decimal>] 
    [-Split] [-ThinProvisioned] [-StorageFormat <VirtualDiskStorageFormat>] [-DeviceName <String>] [-Datastore <StorageResource>] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] 
    [-Confirm] [<CommonParameters>]
    
    New-HardDisk [[-Persistence] <String>] [-Controller <ScsiController>] -DiskPath <String> [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new hard disk on the specified virtual machine or datastore. When a new virtual disk with raw disk mapping (RDM) backing is created, the compatibility mode of 
    "virtual" or "physical" must be specified using the DiskType parameter. In "virtual" compatibility mode, the disk can use the specified disk modes. In "physical" compatibility mode, the 
    disk modes are ignored and commands are passed directly to the backing Logical Unit Number (LUN). If "flat" mode is set by the DiskType parameter, the virtual disk backing is 
    pre-allocated. If the hard disk is attached to no virtual machine, the value of the DiskType parameter might be Unknown, which means that no type is specified. Use the Persistence 
    parameter to make the disk Persistent (changes are immediately and permanently written to the disk), Nonpersistent (changes to the disk are discarded when you power off or reset the 
    virtual machine), IndependentPersistent, IndependentNonPersistent, or Undoable.
    

PARAMETERS
    -AdvancedOption <AdvancedOption[]>
        Specifies advanced options for creating hard disks. Accepts only SdrsVMDiskAntiAffinityRule objects. You can define an anti-affinity SDRS rule for the disk by specifying a 
        SdrsVMDiskAntiAffinityRule object to the AdvancedOption parameter and this will override any existing SdrsVMDiskAntiAffinityRule for the virtual machine.
        
        The SdrsVMDiskAntiAffinityRule defines a Storage DRS intra-VM anti-affinity rule (vm disk anti-affinity rule). It is only applicable when creating a virtual machine or hard disk on 
        a datastore cluster. An instance of the object is created by invoking its constructor. There are two constructors - "public SdrsVMDiskAntiAffinityRule(param string[] 
        diskIdentifier)" and "public SdrsVMDiskAntiAffinityRule(param HardDisk[] disk)". For the first constructor, "diskIdentifier" can be either the disk key or the index of the disk in 
        the disk array. The specified disks (and the disk to which the rule is applied) are placed in an anti-affinity rule on a DatastoreCluster. Only one such rule is supported per a 
        virtual machine. You can pass the instance to the AdvancedOption parameter of the New-VM or New-HardDisk cmdlets.
        
        The SDRS functionality is experimental.
        
    -Persistence <String>
        Specifies the disk persistence mode. The valid values are Persistent, NonPersistent, IndependentPersistent, IndependentNonPersistent, and Undoable. This parameter is supported only 
        when the disk type is set to “rawVirtual” or “flat”. The 'NonPersistent' and 'Undoable' values are deprecated and scheduled for removal. Their usage is not recommended because they 
        do not work with snapshots and are not supported on ESX 3.5 and later.
        
    -Controller <ScsiController>
        Specifies a SCSI controller to which you want to attach the new hard disk.
        
    -DiskType <DiskType>
        Specifies the type of file backing you want to use. The valid values are rawVirtual, rawPhysical, flat, and unknown. If the hard disk is attached to no virtual machine, the value of 
        the DiskType parameter might be Unknown, which means that no type is specified.
        
    -CapacityKB <Int64>
        This parameter is obsolete. Use CapacityGB instead.
        Specifies the capacity of the new virtual disk in kilobytes (KB). You need to specify this parameter when you create hard disks of type Flat.
        
    -CapacityGB <Decimal>
        Specifies the capacity of the new virtual disk in gigabytes (GB). You need to specify this parameter when you create hard disks of type Flat.
        
    -Split
        This parameter is deprecated and scheduled for removal. Use the StorageFormat instead. 
        Specifies the type of the virtual disk file - split or monolithic. If the value is $true, the virtual disk is stored in multiple files, each 2GB. If the value is $false, the virtual 
        disk is stored in a single file. This parameter is supported only if the DiskType parameter is set to “flat”.
        
    -ThinProvisioned
        This parameter is deprecated and scheduled for removal. Use the StorageFormat instead. 
        Indicates to the underlying file system, that the virtual disk backing file should be allocated lazily (using thin provisioning). This parameter is only used for file systems that 
        support configuring the provisioning policy on a per file basis, such as VMFS3. This parameter is supported only if the DiskType parameter is set to “flat”.
        
    -StorageFormat <VirtualDiskStorageFormat>
        Specifies the storage format of the new hard disk. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
    -DeviceName <String>
        Specifies the host-specific device the LUN is being accessed through. If the target LUN is not available on the host then it is empty. For example, this could happen if it has been 
        masked out accidentally. Only supported when DiskType is set to “rawVirtual” or “rawPhysical”. The device name is visible in the vSphere Client through the new raw hard disk wizard 
        or can be retrieved using PowerCLI views.
        
    -Datastore <StorageResource>
        Specifies the datastore where you want to place the new hard disk. If a DatastoreCluster object is passed to the Datastore parameter, the hard disk is added to the DatastoreCluster 
        in an automated SDRS mode. You can define an anti-affinity SDRS rule for the disk by specifying an SdrsVMDiskAntiAffinityRule object to the AdvancedOption parameter and this will 
        override any existing SdrsVMDiskAntiAffinityRule for the virtual machine.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines to which you want to add the new disk.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -DiskPath <String>
        Specifies the path to the hard disk.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vm = Get-VM VM
    
    $vm | New-HardDisk -CapacityGB 100 -Persistence persistent
    
    Adds to the VM virtual machine a new hard disk in a persistent mode with capacity of 100 GB.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$deviceName = ($vmhost | Get-ScsiLun | Where {$_.CanonicalName -match "naa"})[0].ConsoleDeviceName
    
    New-HardDisk -VM $vm -DiskType RawPhysical -DeviceName $deviceName
    
    Obtains a valid device name for Raw Disk Mapping.  Then the command creates a RDM hard disk for the specified virtual machine, with the obtained device name.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>New-HardDisk -VM $vm -CapacityGB 100 -Persistence IndependentNonPersistent
    
    Creates a non-persistent hard disk with the specified capacity.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>New-HardDisk -VM $vm -DiskPath "[storage1] OtherVM/OtherVM.vmdk"
    
    Attaches an available disk from a *.vmdk file.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$vm = Get-VM WebServerVM
    
    $disk = $vm | Get-HardDisk
    
    $antiAffinityRule = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMDiskAntiAffinityRule' $disk
    
    New-HardDisk -VM $vm -AdvancedOption $antiAffinityRule -CapacityGB 40 -Datastore DatastoreCluster1
    
    First retrieves the existing disk which will be part of the VMDK anti affinity rule. Then, creates an object describing the rule and creates the new hard disk.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-HardDisk -examples".
    For more information, type: "get-help New-HardDisk -detailed".
    For technical information, type: "get-help New-HardDisk -full".
    For online help, type: "get-help New-HardDisk -online"

New-IScsiHbaTarget
-------------------------

NAME
    New-IScsiHbaTarget
    
SYNOPSIS
    This cmdlet creates a new iSCSI HBA target.
    
    
SYNTAX
    New-IScsiHbaTarget -IScsiHba <IScsiHba[]> [-Address] <String[]> [[-Port] <Int32>] [-Type <IScsiHbaTargetType>] [[-IScsiName] <String>] [-ChapType <ChapType>] [-ChapName <String>] 
    [-ChapPassword <String>] [-MutualChapEnabled <Boolean>] [-MutualChapName <String>] [-MutualChapPassword <String>] [-InheritChap <Boolean>] [-InheritMutualChap <Boolean>] [-Server 
    <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new iSCSI HBA target. The cmdlet also enables and configures the CHAP (Challenge Handshake Authentication Protocol) authentication settings of the new target.
    
    The Address parameter supports both IPv4 and v6 and also supports the string representations of these types. e.g.  “<address>:<port>”.
    The Port parameter is used only when the value of the Address parameter does not contain the port. The default port number is 3260.
    

PARAMETERS
    -IScsiHba <IScsiHba[]>
        Specifies the iSCSI HBA for which you want to create the new target.
        
    -Address <String[]>
        Specifies the address of the new iSCSI HBA target.
        
    -Port <Int32>
        Specifies the TCP port of the target.
        
    -Type <IScsiHbaTargetType>
        Specifies the type of the target. The valid values are Static and Send.
        
    -IScsiName <String>
        Specifies the iSCSI name of the target. It can be specified only for Static targets.
        
    -ChapType <ChapType>
        Specifies the type of the CHAP (Challenge Handshake Authentication Protocol) you want the new target to use. The valid values are Prohibited, Discouraged, Preferred, and Required.
        
    -ChapName <String>
        Specifies a CHAP authentication name for the new target.
        
    -ChapPassword <String>
        Specifies a CHAP authentication password for the new target.
        
    -MutualChapEnabled [<Boolean>]
        Indicates that Mutual CHAP is enabled.
        
    -MutualChapName <String>
        Specifies a Mutual CHAP authentication name for the new target.
        
    -MutualChapPassword <String>
        Specifies a Mutual CHAP authentication password for the new target.
        
    -InheritChap [<Boolean>]
        Indicates that the CHAP setting is inherited from the iSCSI HBA.
        
    -InheritMutualChap [<Boolean>]
        Indicates that the Mutual CHAP setting is inherited from the iSCSI HBA.
        
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
    
    C:\PS>$hba = Get-VMHost | Get-VMHostHba -Type iScsi
    
    New-IScsiHbaTarget -IScsiHba $hba -Address 10.23.84.73
    
    Creates a new target with IP address 10.23.84.73 on the specified iSCSI HBA device.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHost | Get-VMHostHba -Type iScsi | New-IScsiHbaTarget -Address "10.23.84.73" -ChapType Preferred -ChapName user -ChapPassword pass
    
    Creates a new target on the provided iSCSI HBA device and configures the CHAP settings of the target.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-IScsiHbaTarget -examples".
    For more information, type: "get-help New-IScsiHbaTarget -detailed".
    For technical information, type: "get-help New-IScsiHbaTarget -full".
    For online help, type: "get-help New-IScsiHbaTarget -online"

New-NetworkAdapter
-------------------------

NAME
    New-NetworkAdapter
    
SYNOPSIS
    This cmdlet creates a new virtual network adapter.
    
    
SYNTAX
    New-NetworkAdapter [-MacAddress <String>] -NetworkName <String> [-StartConnected] [-WakeOnLan] [-Type <VirtualNetworkAdapterType>] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-NetworkAdapter [-MacAddress <String>] [-StartConnected] [-WakeOnLan] [-Type <VirtualNetworkAdapterType>] -PortId <String> -DistributedSwitch <DistributedSwitch> [-VM] 
    <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-NetworkAdapter [-MacAddress <String>] [-StartConnected] [-WakeOnLan] [-Type <VirtualNetworkAdapterType>] -Portgroup <VirtualPortGroupBase> [-VM] <VirtualMachine[]> [-Server 
    <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new virtual network adapter for each of the provided virtual machines and sets the optional properties if provided.
    

PARAMETERS
    -MacAddress <String>
        Specifies an optional MAC address for the new virtual network adapter.
        
    -NetworkName <String>
        Specifies the name of the network to which you want to add the new virtual network adapter. Specifying a distributed port group name is obsolete. Use the Portgroup parameter instead.
        
    -StartConnected
        Indicates that the virtual network adapter starts connected when the virtual machine associated with it powers on.
        
    -WakeOnLan
        Indicates that wake-on-LAN is enabled on the newly created virtual network adapter.
        
    -Type <VirtualNetworkAdapterType>
        Specifies the type of the new network adapter. The valid types are e1000, Flexible, Vmxnet, EnhancedVmxnet, and Vmxnet3, and Unknown. If no value is given to the parameter, the new 
        network adapter is of the type recommended by VMware for the given guest OS.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines to which  you want to attach the new virtual network adapter.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -PortId <String>
        Specifies the port of the specified distributed switch to which you want to connect the network adapter. Use this parameter only if the DistributedSwitch parameter is specified.
        
    -DistributedSwitch <DistributedSwitch>
        Specifies a virtual switch to which you want to connect the network adapter.
        
    -Portgroup <VirtualPortGroupBase>
        Specifies a standard or a distributed port group to which you want to connect the new network adapter.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM VM | New-NetworkAdapter  -NetworkName "VM Network" -MacAddress '00:50:56:a1:00:00' -WakeOnLan -StartConnected -Type EnhancedVmxnet
    
    Create a virtual network adapter with the specified parameters.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVm = Get-VM -Name MyVM
    $MyVDPortgroup = Get-VDPortgroup -Name MyVDPortGroup
    New-NetworkAdapter -VM $myVM -Portgroup $MyVDPortgroup
    
    Adds a new network adapter to the specified virtual machine and connects it to the specified distributed port group.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVM = Get-VM -Name MyVM
    $MyVDSwitch = Get-VDSwitch -Name MyVDSwitch
    New-NetworkAdapter -VM $myVM -DistributedSwitch $MyVDSwitch -PortId 100
    
    Adds a new network adapter to the specified virtual machine and connects it to the specified port on the specified vSphere distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-NetworkAdapter -examples".
    For more information, type: "get-help New-NetworkAdapter -detailed".
    For technical information, type: "get-help New-NetworkAdapter -full".
    For online help, type: "get-help New-NetworkAdapter -online"

New-OSCustomizationNicMapping
-------------------------

NAME
    New-OSCustomizationNicMapping
    
SYNOPSIS
    This cmdlet adds NIC settings mappings to the specified OS customization specifications.
    
    
SYNTAX
    New-OSCustomizationNicMapping -OSCustomizationSpec <OSCustomizationSpec[]> [-Server <VIServer[]>] [-IpMode <OSCustomizationIPMode>] [-VCApplicationArgument <String>] [[-IpAddress] 
    <String>] [[-SubnetMask] <String>] [[-DefaultGateway] <String>] [-AlternateGateway <String>] [[-Dns] <String[]>] [-Wins <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-OSCustomizationNicMapping -OSCustomizationSpec <OSCustomizationSpec[]> [-NetworkAdapterMac <String[]>] [-Server <VIServer[]>] [-IpMode <OSCustomizationIPMode>] 
    [-VCApplicationArgument <String>] [[-IpAddress] <String>] [[-SubnetMask] <String>] [[-DefaultGateway] <String>] [-AlternateGateway <String>] [[-Dns] <String[]>] [-Wins <String[]>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-OSCustomizationNicMapping -OSCustomizationSpec <OSCustomizationSpec[]> [-Position <Int32[]>] [-Server <VIServer[]>] [-IpMode <OSCustomizationIPMode>] [-VCApplicationArgument 
    <String>] [[-IpAddress] <String>] [[-SubnetMask] <String>] [[-DefaultGateway] <String>] [-AlternateGateway <String>] [[-Dns] <String[]>] [-Wins <String[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet adds  NIC settings mappings to the specified OS customization specifications. If the given specification is server-side, it is updated on the server. If it is client-side, 
    the reference that is kept in-memory is updated but the variable that is passed to the cmdlet is not modified.
    

PARAMETERS
    -OSCustomizationSpec <OSCustomizationSpec[]>
        Specifies the OS customization specification to which you want to add the NIC setting mapping.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -IpMode <OSCustomizationIPMode>
        Specifies the IP configuration mode. The valid values are UseDhcp, PromptUser, UseVCApplication, and UseStaticIP.
        
    -VCApplicationArgument <String>
        Specifies an optional argument you want to pass to the vCenter Server to obtain an IP address.
        
    -IpAddress <String>
        Specifies an IP address. Using this parameter automatically sets the IpMode parameter to UseStaticIp.
        
    -SubnetMask <String>
        Specifies a subnet mask.
        
    -DefaultGateway <String>
        Specifies a default gateway.
        
    -AlternateGateway <String>
        Specifies an alternate gateway.
        
    -Dns <String[]>
        Specifies a DNS address. This parameter applies only to Windows operating systems.
        
    -Wins <String[]>
        Specifies WINS servers. This parameter applies only to Windows operating systems.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -NetworkAdapterMac <String[]>
        Specifies the MAC addresses of the network adapters to which you want to map the new OS customization specifications.
        
    -Position <Int32[]>
        Specifies the position of the NIC to which you want to map the OS customization specification.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>New-OSCustomizationNicMapping -OSCustomizationSpec $spec -IpMode UseStaticIP -IPAddress 10.0.0.1 -SubnetMask 255.255.255.0 -DefaultGateway 10.0.0.253 -DnsServer 10.0.0.253
    
    Creates a new NIC mapping for the OS customization spec stored in $spec.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-OSCustomizationNicMapping -examples".
    For more information, type: "get-help New-OSCustomizationNicMapping -detailed".
    For technical information, type: "get-help New-OSCustomizationNicMapping -full".
    For online help, type: "get-help New-OSCustomizationNicMapping -online"

New-OSCustomizationSpec
-------------------------

NAME
    New-OSCustomizationSpec
    
SYNOPSIS
    This cmdlet creates a new OS customization specification.
    
    
SYNTAX
    New-OSCustomizationSpec [-OSType <String>] [-Server <VIServer[]>] [-Name <String>] [-Type <OSCustomizationSpecType>] [-DnsServer <String[]>] [-DnsSuffix <String[]>] [-Domain <String>] 
    [-NamingScheme <String>] [-NamingPrefix <String>] [-Description <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-OSCustomizationSpec -OSCustomizationSpec <OSCustomizationSpec> [-Server <VIServer[]>] [-Name <String>] [-Type <OSCustomizationSpecType>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-OSCustomizationSpec -FullName <String> -OrgName <String> [-OSType <String>] [-ChangeSid] [-DeleteAccounts] [-Server <VIServer[]>] [-Name <String>] [-Type <OSCustomizationSpecType>] 
    [-DnsServer <String[]>] [-DnsSuffix <String[]>] [-GuiRunOnce <String[]>] [-AdminPassword <String>] [-TimeZone <String>] [-AutoLogonCount <Int32>] [-Domain <String>] [-Workgroup 
    <String>] [-DomainCredentials <PSCredential>] [-DomainUsername <String>] [-DomainPassword <String>] [-ProductKey <String>] [-NamingScheme <String>] [-NamingPrefix <String>] 
    [-Description <String>] [-LicenseMode <LicenseMode>] [-LicenseMaxConnections <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new OS customization specification or clones an existing one. If a name is provided, creates and adds the specified customization specification to the server. 
    Otherwise, creates and returns the requested specification object. If the Name parameter is not specified, the OSCustomizationSpec object is not persisted on the server. Either the 
    Domain or the Workgroup parameters should be provided if a Windows specification is created. If a Linux specification is created, the Domain parameter is mandatory.  
    New-OSCustomizationSpec automatically creates a default NIC mapping.
    

PARAMETERS
    -OSType <String>
        Specifies the type of the operating system. The valid values are Linux and Windows.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -Name <String>
        Specifies a name for the new specification.
        
    -Type <OSCustomizationSpecType>
        Specifies the type of the OS customization specification. The valid values are Persistent and NonPersistent.
        
    -DnsServer <String[]>
        Specifies the DNS server settings. This parameter applies only to Linux operating systems.
        
    -DnsSuffix <String[]>
        Specifies the DNS suffix settings. This parameter applies only to Linux operating systems.
        
    -Domain <String>
        Specifies a domain name.
        
    -NamingScheme <String>
        Specifies the naming scheme for the virtual machine. The following values are valid:
        
        Custom - Specifies that vCenter Server will launch an external application to generate the (hostname/IP). The command line for this application must be specified in the server 
        configuration file (vpxd.cfg) in the vpxd/name-ip-generator key.
        
        
        Fixed - Specifies that the name is fixed.
        
        Prefix - Specifies that a unique name should be generated by concatenating the base string with a number. Virtual machine names are unique across the set of hosts and virtual 
        machines known to the vCenter Server system. vCenter Server tracks the network names of virtual machines as well as hosts. VMware Tools runs in a guest operating system and reports 
        information to vCenter Server, including the network name of the guest.
        
        Vm - Specifies that vCenter Server should generate a virtual machine name from a base prefix comprising the virtual machine entity name. A number is appended, if necessary, to make 
        it unique. Virtual machine names are unique across the set of hosts and virtual machines known to the vCenter Server system. VMware Tools reports the names of existing virtual 
        machines.
        
    -NamingPrefix <String>
        Depends on the customization naming scheme - Custom, NamingPrefix, or Prefix. If the "Custom" naming scheme is used, NamingPrefix is an optional argument that is passed to the 
        utility for this IP address. The meaning of this field is user-defined in the script. If the "Fixed" naming scheme is used, NamingPrefix should indicate the name of the virtual 
        machine. If the "Prefix" naming scheme is selected, NamingPrefix indicates the prefix to which a unique number is appended.
        
    -Description <String>
        Provides a description for the new specification.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -OSCustomizationSpec <OSCustomizationSpec>
        Specifies an OS customization specification that you want to clone.
        
    -FullName <String>
        Specifies the administrator's full name. This parameter applies only to Windows operating systems.
        
    -OrgName <String>
        Specifies the name of the organization to which the administrator belongs.
        
    -ChangeSid
        Indicates that the customization should modify the system security identifier (SID). This parameter applies only to Windows operating systems.
        
    -DeleteAccounts
        Indicates that you want to delete all user accounts. This parameter applies only to Windows operating systems.
        
    -GuiRunOnce <String[]>
        Specifies a list of commands. These commands run when a user logs in for the first time after the customization completes. This parameter applies only to Windows operating systems.
        
    -AdminPassword <String>
        Specifies a new OS administrator's password. This parameter applies only to Windows operating systems.
        
    -TimeZone <String>
        Specifies the name or ID of the time zone for a Windows guest OS only. Using wildcards is supported. The following time zones are available:
        
        
        000 Int'l Dateline
        001 Samoa
        002 Hawaii
        003 Alaskan
        004 Pacific
        010 Mountain (U.S. and Canada)
        015 U.S. Mountain: Arizona
        020 Central (U.S. and Canada)
        025 Canada Central
        030 Mexico
        033 Central America
        035 Eastern (U.S. and Canada)
        040 U.S. Eastern: Indiana (East)
        045 S.A. Pacific
        050 Atlantic (Canada)
        055 S.A. Western
        056 Pacific S.A.
        060 Newfoundland
        065 E. South America
        070 S.A. Eastern
        073 Greenland
        075 Mid-Atlantic
        080 Azores
        083 Cape Verde Islands
        085 GMT (Greenwich Mean Time)
        090 GMT Greenwich
        095 Central Europe
        100 Central European
        105 Romance
        110 W. Europe
        113 W. Central Africa
        115 E. Europe
        120 Egypt
        125 EET (Helsinki, Riga, Tallinn)
        130 EET (Athens, Istanbul, Minsk)
        135 Israel: Jerusalem
        140 S. Africa: Harare, Pretoria
        145 Russian
        150 Arab
        155 E. Africa
        160 Iran
        165 Arabian
        170 Caucasus Pacific (U.S. and Canada)
        175 Afghanistan
        180 Russia Yekaterinburg
        185 W. Asia
        190 India
        193 Nepal
        195 Central Asia
        200 Sri Lanka
        201 N. Central Asia
        203 Myanmar: Rangoon
        205 S.E. Asia
        207 N. Asia
        210 China
        215 Singapore
        220 Taipei
        225 W. Australia
        227 N. Asia East
        230 Korea: Seoul
        235 Tokyo
        240 Sakha Yakutsk
        245 A.U.S. Central: Darwin
        250 Central Australia
        255 A.U.S. Eastern
        260 E. Australia
        265 Tasmania
        270 Vladivostok
        275 W. Pacific
        280 Central Pacific
        285 Fiji
        290 New Zealand
        300 Tonga
        
    -AutoLogonCount <Int32>
        Specifies the number of times the virtual machine automatically logs in as administrator without prompting for user credentials. The valid values are in the range between 0 and 
        Int32.MaxValue. Specifying 0 disables auto log-on. This parameter applies only to Windows operating systems.
        
    -Workgroup <String>
        Specifies a workgroup. This parameter applies only to Windows operating systems.
        
    -DomainCredentials <PSCredential>
        Specifies the credentials you want to use for domain authentication. This parameter applies only to Windows operating systems.
        
    -DomainUsername <String>
        Specifies the user name you want to use for domain authentication. This parameter applies only to Windows operating systems.
        
    -DomainPassword <String>
        Specifies the password you want to use for domain authentication. This parameter applies only to Windows operating systems.
        
    -ProductKey <String>
        Specifies the MS product key. If the guest OS version is earlier than Vista, this parameter is required in order to make the customization unattended. For Vista or later, the OS 
        customization is unattended no matter if the ProductKey parameter is set.
        
    -LicenseMode <LicenseMode>
        Specifies the license mode of the Windows 2000/2003 guest operating system. The valid values are Perseat, Perserver, and Notspecified. If Perserver is set, use the 
        LicenseMaxConnection parameter to define the maximum number of connections. This parameter applies only to Windows operating systems.
        
    -LicenseMaxConnections <Int32>
        Specifies the maximum connections for server license mode. Use this parameter only if the LicenseMode parameter is set to Perserver. This parameter applies only to Windows operating 
        systems.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>New-OSCustomizationSpec -Name Spec -OSType Windows -FullName Administrator -OrgName Organization -NamingScheme Fixed -NamingPrefix Computer -ProductKey "xxxx-xxxx" -LicenseMode 
    PerSeat -Workgroup Workgroup -ChangeSid
    
    Generates a new SID for the machine and sets the name of the machine to "Computer".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-OSCustomizationSpec -Name Spec -OSType Windows -Description "This spec adds a computer in a domain." -FullName Administrator -OrgName Organization -NamingScheme Fixed 
    -NamingPrefix "Computer" -ProductKey "xxxx-xxxx" -LicenseMode Perserver -LicenseMaxConnections 30 -AdminPassword pass -Domain Domain -DomainUsername Root -DomainPassword pass
    
    Creates a customization specification that adds a computer in the domain named "Domain".
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-OSCustomizationSpec -examples".
    For more information, type: "get-help New-OSCustomizationSpec -detailed".
    For technical information, type: "get-help New-OSCustomizationSpec -full".
    For online help, type: "get-help New-OSCustomizationSpec -online"

New-ResourcePool
-------------------------

NAME
    New-ResourcePool
    
SYNOPSIS
    This cmdlet creates a new resource pool.
    
    
SYNTAX
    New-ResourcePool -Location <VIContainer> -Name <String> [-CpuExpandableReservation <Boolean>] [-CpuLimitMhz <Int64>] [-CpuReservationMhz <Int64>] [-CpuSharesLevel <SharesLevel>] 
    [-MemExpandableReservation <Boolean>] [-MemLimitMB <Int64>] [-MemLimitGB <Decimal>] [-MemReservationMB <Int64>] [-MemReservationGB <Decimal>] [-MemSharesLevel <SharesLevel>] 
    [-NumCpuShares <Int32>] [-NumMemShares <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new resource pool with the provided inputs on the location that is specified by the Location parameter.
    

PARAMETERS
    -Location <VIContainer>
        Specifies a container object (ResourcePool, Cluster, or VMHost) where you want to place the new resource pool. If a host or a cluster is specified for the Location parameter, the 
        resource pool is created in the "Resources" resource pool. The "Resources" resource pool is a system resource pool and is guaranteed to exist.
        
    -Name <String>
        Specifies a name for the new resource pool.
        
    -CpuExpandableReservation [<Boolean>]
        Indicates that the CPU reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
        
    -CpuLimitMhz <Int64>
        Specifies a CPU usage limit in MHz. Utilization will not exceed this limit even if there are available resources.
        
    -CpuReservationMhz <Int64>
        Specifies the CPU size in MHz that is guaranteed to be available.
        
    -CpuSharesLevel <SharesLevel>
        Specifies the CPU allocation level for this pool. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
        
    -MemExpandableReservation [<Boolean>]
        If the value is $true, the memory reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
        
    -MemLimitMB <Int64>
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
        
    -MemLimitGB <Decimal>
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
        
    -MemReservationMB <Int64>
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
        
    -MemReservationGB <Decimal>
        Specifies the guaranteed available memory in gigabytes (GB).
        
    -MemSharesLevel <SharesLevel>
        Specifies the memory allocation level for this pool. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
        
    -NumCpuShares <Int32>
        Specifies the CPU allocation level for this pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless the CpuSharesLevel 
        parameter is set to Custom.
        
    -NumMemShares <Int32>
        Specifies the memory allocation level for this pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless the MemSharesLevel 
        parameter is set to Custom.
        
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
    
    C:\PS>$resourcepool1 = Get-ResourcePool -Location Cluster -Name ResourcePool1
    
    New-ResourcePool -Location $resourcepool1 -Name ResourcePool2 -CpuExpandableReservation $true -CpuReservationMhz 500 -CpuSharesLevel high -MemExpandableReservation $true 
    -MemReservationGB 5 -MemSharesLevel high
    
    Creates a new resource pool named ResourcePool2 in the cluster's root resource pool ResourcePool1.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-ResourcePool -examples".
    For more information, type: "get-help New-ResourcePool -detailed".
    For technical information, type: "get-help New-ResourcePool -full".
    For online help, type: "get-help New-ResourcePool -online"

New-ScsiController
-------------------------

NAME
    New-ScsiController
    
SYNOPSIS
    This cmdlet creates a new SCSI controller.
    
    
SYNTAX
    New-ScsiController [-HardDisk] <HardDisk[]> [[-Type] <ScsiControllerType>] [[-BusSharingMode] <ScsiBusSharingMode>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new SCSI controller.
    

PARAMETERS
    -HardDisk <HardDisk[]>
        Specifies the hard disks you want to attach to the new SCSI controller.
        
    -Type <ScsiControllerType>
        Specifies the type of the SCSI controller. The valid values are ParaVirtual, VirtualBusLogic, VirtualLsiLogic, and VirtualLsiLogicSAS.
        
    -BusSharingMode <ScsiBusSharingMode>
        Specifies the bus sharing mode of the SCSI controller. The valid values are NoSharing, Physical, and Virtual.
        
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
    
    C:\PS>$vm = Get-VM VM | New-HardDisk -CapacityKB 10485760 | New-ScsiController
    
    Creates a new 10GB hard disk and a new SCSI controller with default values for the BusSharingMode and Type properties.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$disk = Get-HardDisk -VM VM | Select -First 2
    
    New-ScsiController -HardDisk $disk -BusSharingMode Physical -Type VirtualLsiLogicSAS
    
    Creates for the first two hard disks of VM a new SCSI controller of VirtualLsiLogicSAS type and with Physical bus sharing mode.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-ScsiController -examples".
    For more information, type: "get-help New-ScsiController -detailed".
    For technical information, type: "get-help New-ScsiController -full".
    For online help, type: "get-help New-ScsiController -online"

New-Snapshot
-------------------------

NAME
    New-Snapshot
    
SYNOPSIS
    This cmdlet creates a new snapshot of a virtual machine.
    
    
SYNTAX
    New-Snapshot [-VM] <VirtualMachine[]> [-Name] <String> [-Description <String>] [-Memory] [-Quiesce] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new snapshot of a virtual machine with the provided inputs.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to snapshot.
        
    -Name <String>
        Specifies a name for the new snapshot.
        
    -Description <String>
        Provide a description of the new snapshot.
        
    -Memory
        If the value is $true and if the virtual machine is powered on, the virtual machine's memory state is preserved with the snapshot.
        
    -Quiesce
        If the value is $true and the virtual machine is powered on, VMware Tools are used to quiesce the file system of the virtual machine. This assures that a disk snapshot represents a 
        consistent state of the guest file systems. If the virutal machine is powered off or VMware Tools are not available, the Quiesce parameter is ignored.
        
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
    
    C:\PS>New-Snapshot -VM VM -Name BeforePatch
    
    Creates a new snapshot of the VM virtual machine named BeforePatch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Snapshot -examples".
    For more information, type: "get-help New-Snapshot -detailed".
    For technical information, type: "get-help New-Snapshot -full".
    For online help, type: "get-help New-Snapshot -online"

New-StatInterval
-------------------------

NAME
    New-StatInterval
    
SYNOPSIS
    This cmdlet creates a statistics interval with the specified parameters.
    
    
SYNTAX
    New-StatInterval [-Name] <String> [-SamplingPeriodSecs] <Int32> [-StorageTimeSecs] <Int32> [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a statistics interval with the specified parameters.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new statistics interval.
        
    -SamplingPeriodSecs <Int32>
        Specifies a sampling period in seconds.
        
    -StorageTimeSecs <Int32>
        Specifies the length of time (in seconds) that the statistics information is kept in the database.
        
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
    
    C:\PS>New-StatInterval -Name Minute -SamplingPeriodSecs 60 -StorageTimeSecs 600
    
    Creates a new statistics interval named Minute. Note that creating statistics intervals is allowed only on VirtualCenter 2.0.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-StatInterval -examples".
    For more information, type: "get-help New-StatInterval -detailed".
    For technical information, type: "get-help New-StatInterval -full".
    For online help, type: "get-help New-StatInterval -online"

New-Tag
-------------------------

NAME
    New-Tag
    
SYNOPSIS
    This cmdlet creates a new tag in the specified tag category with the specified parameters.
    
    
SYNTAX
    New-Tag [-Name] <String> [-Category] <TagCategory> [-Description <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new tag in the specified tag category with the specified parameters.
    

PARAMETERS
    -Name <String>
        Specifies the name of the new tag.
        
    -Category <TagCategory>
        Specifies the tag category in which the new tag will be created.
        
    -Description <String>
        Specifies the description of the new tag.
        
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
    
    C:\PS>Get-TagCategory -Name "MyTagCategory" | New-Tag -Name "MyTag" -Description "Create MyTag tag in MyTagCategory category."
    
    Retrieves a specific tag category, named "MyTagCategory", creates a tag named "MyTag" inside it, and sets the tag description.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Tag -examples".
    For more information, type: "get-help New-Tag -detailed".
    For technical information, type: "get-help New-Tag -full".
    For online help, type: "get-help New-Tag -online"

New-TagAssignment
-------------------------

NAME
    New-TagAssignment
    
SYNOPSIS
    This cmdlet assigns the specified tag to the specified entity.
    
    
SYNTAX
    New-TagAssignment [-Tag] <Tag> [-Entity] <VIObjectCore> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet assigns the specified tag to the specified entity.
    

PARAMETERS
    -Tag <Tag>
        Specifies the tag to be assigned to the entity.
        
    -Entity <VIObjectCore>
        Specifies the object on which to assign the specified tag.
        
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
    
    C:\PS>$myTag = Get-Tag "MyTag"
    Get-VM "*MyVM*" | New-TagAssignment -Tag $myTag
    
    Assigns the "MyTag" tag to all virtual machines whose name contains the "*MyVM*" wildcard pattern.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-TagAssignment -examples".
    For more information, type: "get-help New-TagAssignment -detailed".
    For technical information, type: "get-help New-TagAssignment -full".
    For online help, type: "get-help New-TagAssignment -online"

New-TagCategory
-------------------------

NAME
    New-TagCategory
    
SYNOPSIS
    This cmdlet creates a new tag category on the specified vCenter Server systems with the specified parameters.
    
    
SYNTAX
    New-TagCategory [-Name] <String> [-Description <String>] [-Cardinality <Cardinality>] [-EntityType <String[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new tag category on the specified vCenter Server systems with the specified parameters.
    

PARAMETERS
    -Name <String>
        Specifies the name of the new tag category.
        
    -Description <String>
        Specifies the description of the new tag category.
        
    -Cardinality <Cardinality>
        Specifies the cardinality of the tag category. If not specified, the default value is "Single".
        
        "Single" means that only a single tag from this category can be assigned to a specific object at a time. "Multiple" means that more than one tag from this category can be assigned 
        to a specific object at a time.
        
    -EntityType <String[]>
        Defines the type of objects to which the tags in this category will be applicable.
        If you do not specify this parameter or specify "All" as a value, the tags in this category will be applicable to all valid entity types.
        
        This parameter accepts both PowerCLI type names and vSphere API type names. The valid PowerCLI type names are: Cluster, Datacenter, Datastore, DatastoreCluster, 
        DistributedPortGroup, DistributedSwitch, Folder, ResourcePool, VApp, VirtualPortGroup, VirtualMachine, VM, VMHost.
        
        For vSphere API type names  that are not vCenter Server API type names, a namespace prefix is used.
        The format is: <namespace>/<type>
        Example: 'vco/WorkflowItem'
        
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
    
    C:\PS>New-TagCategory -Name "MyTagCategory" -Cardinality "Single" -EntityType "VirtualMachine"
    
    Creates a new tag category, named "MyTagCategory", defining the "VirtualMachine" type as applicable to the tags inside that category and specifying that only a single tag from that 
    category can be assigned to a specific VirtualMachine object at a time.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-TagCategory -Name "MyTagCategory" -Cardinality "Multiple" -Description "MyTagCategory description"
    
    Creates a new tag category, named "MyTagCategory", that has "MyTagCategory description" set as a description and specifies that multiple tags from that category can be assigned to an 
    object. Tags from this category are applicable to all valid entity types.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-TagCategory -examples".
    For more information, type: "get-help New-TagCategory -detailed".
    For technical information, type: "get-help New-TagCategory -full".
    For online help, type: "get-help New-TagCategory -online"

New-Template
-------------------------

NAME
    New-Template
    
SYNOPSIS
    This cmdlet creates a new virtual machine template.
    
    
SYNTAX
    New-Template [-VM] <VirtualMachine> [-Name] <String> [-Location] <VIContainer> [-Datastore <StorageResource>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-Template [[-Name] <String>] [-Location <VIContainer>] [-VMHost <VMHost>] [-Datastore <StorageResource>] [-DiskStorageFormat <VirtualDiskStorageFormat>] -Template <Template> [-Server 
    <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-Template [[-Name] <String>] [-Location <VIContainer>] -VMHost <VMHost> [-TemplateFilePath] <String> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new template based on the specified virtual machine.
    You can also create a new template by cloning an existing one. You can also register an existing template to the vCenter Server inventory.
    

PARAMETERS
    -VM <VirtualMachine>
        Specifies the virtual machine from which you want to create the new template.
        
    -Name <String>
        Specifies a name for the new template.
        
    -Location <VIContainer>
        Specifies the location where you want to place the new template.
        
    -Datastore <StorageResource>
        Specifies the datastore or the datastore cluster where you want to store the new template.
        
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
        
    -VMHost <VMHost>
        Specifies the host where you want to create the new template.
        
    -DiskStorageFormat <VirtualDiskStorageFormat>
        Specifies the disk storage format of the new template. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
    -Template <Template>
        Specifies a template you want to clone.
        
    -TemplateFilePath <String>
        Specifies the datastore path to the file you want to use to register the new template.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myVM = Get-VM -Name "MyVM1"
    $drsCluster=Get-DatastoreCluster "MyDatastoreCluster"
    New-Template -VM $myVM -Name "MyTemplate" -Datastore $drsCluster -Location Datacenter2
    
    Creates a template named MyTemplate from the MyVM1 virtual machine and stores it in the MyDatastoreCluster datastore cluster in the Datacenter2 datacenter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myFolder = Get-Folder -Name "MyFolder1"
    New-Template -Name "MyTemplate1" -TemplateFilePath "[Storage1] templatefolder/template.vmtx" -Location $myFolder -VMHost (Get-VMHost)
    
    Registers the existing MyTemplate1 template to a vCenter Server inventory folder by using the specified template file.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myTemplate = Get-Template -Name "MyTemplate1"
    $myDs = Get-Datastore -Name "MyDatastore1"
    New-Template -Template $myTemplate -Name "MyTemplate2" -Datastore $myDs -Location "Datacenter2"
    
    Creates the MyTemplate2 template by cloning an existing template and stores the new template in the specified datastore in the Datacenter2 datacenter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Template -examples".
    For more information, type: "get-help New-Template -detailed".
    For technical information, type: "get-help New-Template -full".
    For online help, type: "get-help New-Template -online"

New-VApp
-------------------------

NAME
    New-VApp
    
SYNOPSIS
    This cmdlet creates a new vApp.
    
    
SYNTAX
    New-VApp -Location <VIContainer> [-Name] <String> [-CpuExpandableReservation <Boolean>] [-CpuLimitMhz <Int64>] [-CpuReservationMhz <Int64>] [-CpuSharesLevel <SharesLevel>] 
    [-MemExpandableReservation <Boolean>] [-MemLimitMB <Int64>] [-MemLimitGB <Decimal>] [-MemReservationMB <Int64>] [-MemReservationGB <Decimal>] [-MemSharesLevel <SharesLevel>] 
    [-NumCpuShares <Int32>] [-NumMemShares <Int32>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VApp -Location <VIContainer> [[-Name] <String>] -VApp <VApp> [-VMHost <VMHost>] [-Datastore <Datastore>] [-DiskStorageFormat <VirtualDiskStorageFormat>] [-Server <VIServer[]>] 
    [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VApp -Location <VIContainer> [[-Name] <String>] [-Datastore <Datastore>] -ContentLibraryItem <ContentLibraryItem> [-DiskStorageFormat <VirtualDiskStorageFormat>] [-Server 
    <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new vApp.
    

PARAMETERS
    -Location <VIContainer>
        Specifies a VApp, ResourcePool, VMHost, or Cluster object where you want to place the new vApp.
        
    -Name <String>
        Specifies a name for the new vApp.
        
    -CpuExpandableReservation [<Boolean>]
        Indicates that the CPU reservation can grow beyond the specified value if there are available resources.
        
    -CpuLimitMhz <Int64>
        Specifies a CPU usage limit in MHz. Utilization will not exceed this limit even if there are available resources.
        
    -CpuReservationMhz <Int64>
        Specifies the CPU size in MHz that is guaranteed to be available.
        
    -CpuSharesLevel <SharesLevel>
        Specifies the CPU allocation level for this vApp. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
        
    -MemExpandableReservation [<Boolean>]
        If the value is $true, the memory reservation can grow beyond the specified value if there are available resources.
        
    -MemLimitMB <Int64>
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
        
    -MemLimitGB <Decimal>
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
        
    -MemReservationMB <Int64>
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
        
    -MemReservationGB <Decimal>
        Specifies the guaranteed available memory in gigabytes (GB).
        
    -MemSharesLevel <SharesLevel>
        Specifies the memory allocation level for this vApp. This property is used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
        
    -NumCpuShares <Int32>
        Specifies the CPU allocation level for this vApp. This property is used in relative allocation between resource consumers. This parameter is ignored unless the CpuSharesLevel 
        parameter is set to Custom.
        
    -NumMemShares <Int32>
        Specifies the memory allocation level for this vApp. This property is used in relative allocation between resource consumers. This parameter is ignored unless the MemSharesLevel 
        parameter is set to Custom.
        
    -Server <VIServer[]>
        Specifies the Center Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -VApp <VApp>
        Specifies a vApp you want to copy.
        
    -VMHost <VMHost>
        Specifies the host where you want to run the copied vApp.
        
    -Datastore <Datastore>
        Specifies the datastore where you want to store the copied vApp. If you do not specify a datastore, the cmdlet takes the first datastore of the host or cluster.
        
    -DiskStorageFormat <VirtualDiskStorageFormat>
        Specifies the storage format of the disks of the vApp.
        
    -ContentLibraryItem <ContentLibraryItem>
        Specifies the content library template to deploy the vApp from.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>New-VApp -Name MyVApp1 -CpuLimitMhz 4000 -CpuReservationMhz 1000 -Location MyVMHost1
    
    Creates a new vApp on the MyVMHost1 host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VApp -examples".
    For more information, type: "get-help New-VApp -detailed".
    For technical information, type: "get-help New-VApp -full".
    For online help, type: "get-help New-VApp -online"

New-VDPortgroup
-------------------------

NAME
    New-VDPortgroup
    
SYNOPSIS
    This cmdlet creates distributed port groups.
    
    
SYNTAX
    New-VDPortgroup [-VDSwitch] <VDSwitch> -Name <String> [-Notes <String>] [-NumPorts <Int32>] [-VlanId <Int32>] [-VlanTrunkRange <VlanRangeList>] [-PortBinding 
    <DistributedPortGroupPortBinding>] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VDPortgroup [-VDSwitch] <VDSwitch> [-Name <String>] -ReferencePortgroup <VDPortgroup> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VDPortgroup [-VDSwitch] <VDSwitch> [-Name <String>] -BackupPath <String> [-KeepIdentifiers] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates distributed port groups. You can create a new distributed port group with custom properties, specify a reference port group to clone its properties, or provide a 
    backup profile to import the port group configuration.
    

PARAMETERS
    -VDSwitch <VDSwitch>
        Specifies the vSphere distributed switch on which you want to create the new distributed port group.
        
    -Name <String>
        Specifies the name of the new distributed port group that you want to create.
        
    -Notes <String>
        Specifies a description for the new distributed port group that you want to create.
        
    -NumPorts <Int32>
        Specifies the number of ports that the distributed port group will have. If you do not set this parameter, the number of ports for the new distributed port group is set to 128 ports.
        
    -VlanId <Int32>
        Specifies the VLAN ID of the distributed port group that you want to create. Valid values are integers in the range of 1 to 4094.
        
    -VlanTrunkRange <VlanRangeList>
        Specifies the VLAN trunk range for the distributed port group that you want to create. Valid values are strings representing ranges of IDs. For example, "1-4, 6, 8-9".
        
    -PortBinding <DistributedPortGroupPortBinding>
        Specifies the port binding setting for the distributed port group that you want to create. This parameter accepts Static, Dynamic, and Ephemeral values.
        Note: Dynamic port binding is deprecated. For better performance, static port binding is recommended.
        
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
        
    -ReferencePortgroup <VDPortgroup>
        Specifies a reference distributed port group. The properties of the new distributed port group will be cloned from the reference distributed port group.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    -BackupPath <String>
        Specifies the full file path to the .zip file containing the backup configuration that you want to import. Only .zip files created with the Export-VDPortgroup cmdlet are supported.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    -KeepIdentifiers
        Indicates that the original vSphere distributed port group identifiers will be preserved.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch -Name "MyVDSwitch" | New-VDPortgroup -Name "MyVDPortGroup" -NumPorts 8 -VLanId 4
    
    Creates a new distributed port group on the specified vSphere distributed switch with the specified number of ports and VLAN ID.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myReferncePortroup = Get-VDPortgroup -Name "MyReferencePortGroup"
    Get-VDSwitch -Name "MyVDSwitch" | New-VDPortgroup -Name "MyVDPortGroup" -ReferencePortgroup $myReferncePortroup
    
    Creates a new distributed port group on the specified vSphere distributed switch by cloning the configuration of the distributed port group named "MyReferencePortGroup".
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VDSwitch -Name "MyVDSwitch" | New-VDPortgroup -Name "MyVDPortGroup" -RunAsync
    
    Creates asynchronously a new distributed port group on the specified vSphere distributed switch.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myBackupFilePath = 'c:\Backup.zip'
    Get-VDSwitch -Name "MyVDSwitch" | New-VDPortgroup -Name "MyVDPortgroup" -BakupPath $myBackupFilePath
    
    Creates a new distributed port group on the specified vSphere distributed switch by importing the specified backup profile.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-VDSwitch -Name "MyVDSwitch" | New-VDPortgroup -Name "MyVDPortGroup" -VlanTrunkRange "1-5, 10-20"
    
    Creates a new distributed port group on the specified vSphere distributed switch with the specified name and VLAN trunk range settings.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VDPortgroup -examples".
    For more information, type: "get-help New-VDPortgroup -detailed".
    For technical information, type: "get-help New-VDPortgroup -full".
    For online help, type: "get-help New-VDPortgroup -online"

New-VDSwitch
-------------------------

NAME
    New-VDSwitch
    
SYNOPSIS
    This cmdlet creates vSphere distributed switches.
    
    
SYNTAX
    New-VDSwitch [-ContactDetails <String>] [-ContactName <String>] [-LinkDiscoveryProtocol <LinkDiscoveryProtocol>] [-LinkDiscoveryProtocolOperation <LinkDiscoveryOperation>] [-MaxPorts 
    <Int32>] [-Mtu <Int32>] [-Notes <String>] [-NumUplinkPorts <Int32>] [-Version <String>] -Name <String> -Location <VIContainer> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    New-VDSwitch -ReferenceVDSwitch <VDSwitch> -Name <String> -Location <VIContainer> [-WithoutPortGroups] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VDSwitch -BackupPath <String> [-KeepIdentifiers] [-Name <String>] -Location <VIContainer> [-WithoutPortGroups] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates vSphere distributed switches. You can create a new vSphere distributed switch with custom properties, specify a reference vSphere distributed switch to clone its 
    configuration, or provide a backup profile to import the switch configuration.
    
    Note: Creating vSphere distributed switches from a reference switch or a backup profile requires vCenter Server 5.1 or later.
    

PARAMETERS
    -ContactDetails <String>
        Specifies the contact details of the vSphere distributed switch administrator.
        
    -ContactName <String>
        Specifies the name of the vSphere distributed switch administrator.
        
    -LinkDiscoveryProtocol <LinkDiscoveryProtocol>
        Specifies the discovery protocol type of the vSphere distributed switch that you want to create. This parameter accepts CDP and LLDP values. If you do not set a value for this 
        parameter, the default server setting is used.
        
    -LinkDiscoveryProtocolOperation <LinkDiscoveryOperation>
        Specifies the link discovery protocol operation for the vSphere distributed switch that you want to create. This parameter accepts Advertise, Listen, Both, and Disabled values. If 
        you do not set a value for this parameter, the default server setting is used.
        
    -MaxPorts <Int32>
        Specifies the maximum number of ports allowed on the vSphere distributed switch that you want to create.
        
    -Mtu <Int32>
        Specifies the maximum MTU size for the vSphere distributed switch that you want to create. Valid values are positive integers only.
        
    -Notes <String>
        Specifies a description for the vSphere distributed switch that you want to create.
        
    -NumUplinkPorts <Int32>
        Specifies the number of uplink ports on the vSphere distributed switch that you want to create.
        
    -Version <String>
        Specifies the version of the vSphere distributed switch that you want to create. This parameter accepts 4.0, 4.1.0, 5.0.0, 5.1.0, 5.5.0, and 6.0.0 values. You cannot specify a 
        version that is incompatible with the version of the vCenter Server system you are connected to.
        
    -Name <String>
        Specifies a name for the new vSphere distributed switch that you want to create. You cannot specify this parameter, when the KeepIdentifiers parameter is specified.
        
    -Location <VIContainer>
        Specifies the location where you want to create the vSphere distributed switch. This parameter accepts Datacenter and Folder objects.
        
        Note: You cannot create distributed port groups with identical names in the same location. If you want to import or clone a vSphere distributed switch with its distributed port 
        groups, you need to specify a location that does not contain identically named distributed port groups.
        
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
        
    -ReferenceVDSwitch <VDSwitch>
        Specifies a reference vSphere distributed switch. The properties of the new vSphere distributed switch will be cloned from the reference vSphere distributed switch.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    -WithoutPortGroups
        Indicates that the new vSphere distributed switch will be created without importing the port groups from the specified backup file or reference vSphere distributed switch.
        
    -BackupPath <String>
        Specifies the full file path to the .zip file containing the backup configuration that you want to import. Only .zip files created with the Export-VDSwitch cmdlet are supported.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    -KeepIdentifiers
        Indicates that the original vSphere distributed switch and port group identifiers will be preserved. You cannot specify this parameter, when the Name parameter is specified.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myDatacenter = Get-Datacenter -Name "MyDatacenter"
    New-VDSwitch -Name "MyVDSwitch" -Location $myDatacenter -LinkDiscoveryProtocol "LLDP" -LinkDiscoveryProtocolOperation "Listen" -MaxPorts 256 -Version "5.0.0"
    
    Creates a new vSphere distributed switch with the specified name, version, maximum number of ports, and link discovery protocol settings in the specified datacenter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myFolder = Get-Folder -Name "MyFolder"
    Get-VDSwitch -Name "MyReferenceSwitch" | New-VDSwitch -Name "MyVDSwitch" -Location $myFolder -WithoutPortGroups
    
    Creates a new vSphere distributed switch by cloning the configuration of the existing vSphere distributed switch named "MyReferenceSwitch". The new vSphere distributed switch is created 
    without cloning the existing port groups and is stored in the specified folder.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myFolder = Get-Folder -Name "MyFolder"
    New-VDSwitch -Name "MyVDSwitch" -Location $myFolder -WithoutPortGroups -BackupPath "c:\MyDistributedSwitchProfile.zip"
    
    Creates a new vSphere distributed switch by importing the specified backup profile.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VDSwitch -examples".
    For more information, type: "get-help New-VDSwitch -detailed".
    For technical information, type: "get-help New-VDSwitch -full".
    For online help, type: "get-help New-VDSwitch -online"

New-VDSwitchPrivateVlan
-------------------------

NAME
    New-VDSwitchPrivateVlan
    
SYNOPSIS
    This cmdlet creates private VLAN configuration entries on a vSphere distributed switch.
    
    
SYNTAX
    New-VDSwitchPrivateVlan [-VDSwitch] <VDSwitch> -PrimaryVlanId <Int32> -SecondaryVlanId <Int32> -PrivateVlanType <PrivateVlanType> [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates private VLAN configuration entries on a vSphere distributed switch.
    

PARAMETERS
    -VDSwitch <VDSwitch>
        Specifies the vSphere distributed switch on which to create a private VLAN configuration.
        
    -PrimaryVlanId <Int32>
        Specifies the primary VLAN ID. The VLAN IDs of 0 and 4095 are reserved and cannot be used.
        
    -SecondaryVlanId <Int32>
        Specifies the secondary VLAN ID. The VLAN IDs of 0 and 4095 are reserved and cannot be used.
        
    -PrivateVlanType <PrivateVlanType>
        Specifies the private VLAN port type: community, isolated, or promiscuous.
        
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
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | New-VDSwitchPrivateVlan -PrimaryVlanId 1 -SecondaryVlanId 1 -PrivateVlanType Promiscuous
    
    Creates a private VLAN inside a specific vSphere distributed switch with a promiscuous VLAN port type.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VDSwitchPrivateVlan -examples".
    For more information, type: "get-help New-VDSwitchPrivateVlan -detailed".
    For technical information, type: "get-help New-VDSwitchPrivateVlan -full".
    For online help, type: "get-help New-VDSwitchPrivateVlan -online"

New-VIPermission
-------------------------

NAME
    New-VIPermission
    
SYNOPSIS
    This cmdlet creates new permissions on the specified inventory objects for the provided users and groups in the role.
    
    
SYNTAX
    New-VIPermission [-Entity] <VIObject[]> [-Principal] <VIAccount[]> [-Role] <Role> [-Propagate <Boolean>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates new permissions on the specified inventory objects for the provided users and groups in the role. By default, new permissions are propagated down the hierarchy to 
    sub-entities. You cannot create new permissions for the following objects:
    - direct child folders of a datacenter
    - root resource pools of clusters and standalone hosts.
    These objects always inherit the permissions of their parent.
    

PARAMETERS
    -Entity <VIObject[]>
        Specifies the inventory objects for which you want to create new permissions.
        
    -Principal <VIAccount[]>
        Specifies users and groups to which you want to apply the new permissions. If you specify principal names by using the "domain\name" syntax, wildcards are not supported.
        
    -Role <Role>
        Specifies the roles for which you want to create new permissions.
        
    -Propagate [<Boolean>]
        Indicates that you want to propagate the new permissions to the child inventory objects.
        
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
    
    C:\PS>New-VIRole -Name Role -Server $server -Privilege (Get-VIPrivilege -PrivilegeGroup)
    
    $permission = New-VIPermission -Role Role -Principal Administrator -Entity (Get-Datacenter)
    
    Creates a permission on the provided server for a role with the specified privileges.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VIPermission -examples".
    For more information, type: "get-help New-VIPermission -detailed".
    For technical information, type: "get-help New-VIPermission -full".
    For online help, type: "get-help New-VIPermission -online"

New-VIProperty
-------------------------

NAME
    New-VIProperty
    
SYNOPSIS
    This cmdlet creates a new extension property on the specified object type.
    
    
SYNTAX
    New-VIProperty [-Name] <String> [-ObjectType] <String[]> [-Value] <ScriptBlock> [-Force] [-BasedOnExtensionProperty <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VIProperty [-Name] <String> [-ObjectType] <String[]> [-Force] [-ValueFromExtensionProperty] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new extension property on the specified object type. Changes take effect upon the next retrieval of the corresponding objects.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new extension property. Names are case-sensitive and can include only letters, numbers, and the underscore symbol. The name of a property must start with a 
        letter or underscore.
        
    -ObjectType <String[]>
        Specifies the object types to which you want to append the new property. All PowerCLI object types are supported.
        
    -Value <ScriptBlock>
        Specifies a script block you want to use to compute the value of the new extended property.
        
    -Force
        Indicates that you want to create the new property even if another property with the same name exists for the specified object type. This parameter is not applicable for core 
        properties of an object type.
        
    -BasedOnExtensionProperty <String[]>
        Specifies a list of strings that maps the properties of the $this.ExtensionData object. Use this parameter to specify which members of ExtensionData are used by the script block 
        provided for the Value parameter.
        This parameter is case-sensitive.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -ValueFromExtensionProperty <String>
        Specifies a string that maps a property of the $this.ExtensionData object. This parameter is case-sensitive.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>New-VIProperty -ObjectType VirtualMachine -Name CommittedSpaceMB -Value { $vm = $args[0]; $sum = 0; $vm.ExtensionData.Storage.PerDatastoreUsage | foreach { $sum += $_.Committed} ; 
    $sum = [int]($sum / 1024 / 1024); return $sum }
    
    Get-VM | select Name, CommittedSpaceMB
    
    Creates a script-based property for the VirtualMachine object type that calculates the committed space of a virtual machine.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>New-VIProperty -ObjectType VirtualMachine -Name CommittedSpaceMB -Value { $vm = $args[0]; $sum = 0; $vm.ExtensionData.Storage.PerDatastoreUsage | foreach { $sum += $_.Committed} ; 
    $sum = [int]($sum / 1024 / 1024); return $sum } -BasedOnExtensionProperty 'Storage.PerDatastoreUsage.Committed' -Force
    
    Get-VM | select Name, CommittedSpaceMB
    
    Creates a property that calculates the committed space of a virtual machine. The cmdlet uses the BasedOnExtensionProperty parameter to specify which   ExtensionData member is used by 
    the script block. This mean that during the creation of each virtual machine, only the specified property of extension data - Storage.PerDatastoreUsage.Committed will be filled up.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>New-VIProperty -ObjectType VirtualMachine -Name CommittedSpace -ValueFromExtensionProperty 'SUM Storage.PerDatastoreUsage.Committed'
    
    Creates a new property that calculates the committed storage based on the property and aggregation function SUM specified by the ValueFromExtensionProperty parameter.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>New-VIProperty -ObjectType InventoryItem -Name OverallStatus -ValueFromExtensionProperty 'OverallStatus'
    
    Get-VM | select Name, OverallStatus
    
    Get-VMHost | select Name, OverallStatus
    
    Creates a new property based on the OverallStatus property for all inventory types.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>New-VIProperty -ObjectType VIObjectCore -Value { if ( $args[0].UId -match "/VIserver=[\w]+@(.*):.*" ) { $matches[1] } else { " } } -Name VIServerName
    
    Get-Inventory | select Name, VIServerName
    
    Creates a script-based property to VIObjectCore that parses the UId property and extracts the name of the server to which a given object belongs.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VIProperty -examples".
    For more information, type: "get-help New-VIProperty -detailed".
    For technical information, type: "get-help New-VIProperty -full".
    For online help, type: "get-help New-VIProperty -online"

New-VIRole
-------------------------

NAME
    New-VIRole
    
SYNOPSIS
    This cmdlet creates a new role on the specified servers and applies the provided privileges.
    
    
SYNTAX
    New-VIRole [-Name] <String> [[-Privilege] <Privilege[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new role on the specified servers and applies the provided privileges.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new role.
        
    -Privilege <Privilege[]>
        Specifies the privileges you want to apply to the new role.
        
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
    
    C:\PS>New-VIRole -Name Role -Privilege (Get-VIPrivilege -PrivilegeGroup)
    
    Creates a new role with the provided group privileges.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VIRole -examples".
    For more information, type: "get-help New-VIRole -detailed".
    For technical information, type: "get-help New-VIRole -full".
    For online help, type: "get-help New-VIRole -online"

New-VirtualPortGroup
-------------------------

NAME
    New-VirtualPortGroup
    
SYNOPSIS
    This cmdlet creates a new port group on the specified host.
    
    
SYNTAX
    New-VirtualPortGroup [-Name] <String> [-VirtualSwitch] <VirtualSwitch> [-VLanId <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new port group on the  host using the provided parameters.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new port group.
        
    -VirtualSwitch <VirtualSwitch>
        Specifies the virtual switch for which you want to create a new port group.
        
    -VLanId <Int32>
        Specifies the VLAN ID for ports using this port group. The following values are valid:
        
        0 - specifies that you do not want to associate the port group with a VLAN.
        1 to 4094 - specifies a VLAN ID for the port group.
        4095 - specifies that the port group should use trunk mode, which allows the guest operating system to manage its own VLAN tags.
        
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
    
    C:\PS>$vswitch =  New-VirtualSwitch -VMHost 10.23.114.234 -Name VSwitch
    
    $vportgroup =  New-VirtualPortGroup -VirtualSwitch $vswitch  -Name VPortGroup
    
    Creates a virtual port group named VPortGroup on the virtual switch VSwitch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VirtualPortGroup -examples".
    For more information, type: "get-help New-VirtualPortGroup -detailed".
    For technical information, type: "get-help New-VirtualPortGroup -full".
    For online help, type: "get-help New-VirtualPortGroup -online"

New-VirtualSwitch
-------------------------

NAME
    New-VirtualSwitch
    
SYNOPSIS
    This cmdlet creates a new virtual switch.
    
    
SYNTAX
    New-VirtualSwitch [-VMHost] <VMHost> [-Name] <String> [[-NumPorts] <Int32>] [[-Nic] <PhysicalNic[]>] [[-Mtu] <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new virtual switch on the host that is specified by the VMHost parameter.
    

PARAMETERS
    -VMHost <VMHost>
        Specifies the host on which you want to create the new virtual switch.
        
    -Name <String>
        Specifies a name for the new virtual switch.
        
    -NumPorts <Int32>
        Specifies the virtual switch port number. The value is rounded to the closest exact power of two that is greater than the given number (for example, if the user specifies 67, this 
        number is rounded to 128). Note that the port number displayed in the vSphere Client might differ from the value that you specified for the NumPorts parameter.
        
        Note: In ESX 5.5 or later, standard virtual switches are always elastic, so the NumPorts parameter is no longer applicable and its value is ignored.
        
    -Nic <PhysicalNic[]>
        Specifies the physical network interface cards you want to add to the Active NICs of the new virtual switch. This parameter accepts both objects and strings.
        
    -Mtu <Int32>
        Specifies the maximum transmission unit (MTU) associated with the specified virtual switch (in bytes). The MTU value is always greater than 0.
        
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
    
    C:\PS>$vswitch =  New-VirtualSwitch -VMHost 10.23.112.234 -Name VSwitch
    
    Creates a new virtual switch named VSwitch on the virtual machine host with IP address 10.23.112.234.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$network = Get-VMHostNetwork -VMHost 10.23.112.234
    
    $phNic = $network.PhysicalNic[0].DeviceName
    
    $vswitch = New-VirtualSwitch -VMHost 10.23.112.234 -Name VSwitch -Nic $phNic
    
    Creates a new virtual switch named VSwitch on the virtual machine host with IP address 10.23.112.234 with a physical network adapter.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost *.128 | New-VirtualSwitch -Name VSwitch -Nic vmnic5,vmnic6
    
    Create a virtual switch named VSwitch with two physical network adapters - 'vmnic5' and 'vmnic6'. Note that the 'vmnic5' and 'vmnic6' adapters must not be assigned to other virtual 
    switches.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VirtualSwitch -examples".
    For more information, type: "get-help New-VirtualSwitch -detailed".
    For technical information, type: "get-help New-VirtualSwitch -full".
    For online help, type: "get-help New-VirtualSwitch -online"

New-VM
-------------------------

NAME
    New-VM
    
SYNOPSIS
    This cmdlet creates a new virtual machine.
    
    
SYNTAX
    New-VM [-AdvancedOption <AdvancedOption[]>] [[-VMHost] <VMHost>] [-Version <VMVersion>] -Name <String> [-ResourcePool <VIContainer>] [-VApp <VApp>] [-Location <Folder>] [-Datastore 
    <StorageResource>] [-DiskMB <Int64[]>] [-DiskGB <Decimal[]>] [-DiskPath <String[]>] [-DiskStorageFormat <VirtualDiskStorageFormat>] [-MemoryMB <Int64>] [-MemoryGB <Decimal>] [-NumCpu 
    <Int32>] [-Floppy] [-CD] [-GuestId <String>] [-AlternateGuestName <String>] [-NetworkName <String[]>] [-Portgroup <VirtualPortGroupBase[]>] [-HARestartPriority <HARestartPriority>] 
    [-HAIsolationResponse <HAIsolationResponse>] [-DrsAutomationLevel <DrsAutomationLevel>] [-VMSwapfilePolicy <VMSwapfilePolicy>] [-Server <VIServer[]>] [-RunAsync] [-Notes <String>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VM [-AdvancedOption <AdvancedOption[]>] [[-VMHost] <VMHost>] [-Name <String>] [-ResourcePool <VIContainer>] [-VApp <VApp>] [-Location <Folder>] [-Datastore <StorageResource>] 
    [-DiskStorageFormat <VirtualDiskStorageFormat>] [-OSCustomizationSpec <OSCustomizationSpec>] [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse <HAIsolationResponse>] 
    [-DrsAutomationLevel <DrsAutomationLevel>] [-LinkedClone] [-ReferenceSnapshot <Snapshot>] [-Server <VIServer[]>] [-RunAsync] [-Notes <String>] -VM <VirtualMachine[]> [-WhatIf] 
    [-Confirm] [<CommonParameters>]
    
    New-VM [-AdvancedOption <AdvancedOption[]>] [[-VMHost] <VMHost>] -Name <String> [-ResourcePool <VIContainer>] [-VApp <VApp>] [-Location <Folder>] [-Datastore <StorageResource>] 
    [-Template] <Template> [-DiskStorageFormat <VirtualDiskStorageFormat>] [-OSCustomizationSpec <OSCustomizationSpec>] [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse 
    <HAIsolationResponse>] [-DrsAutomationLevel <DrsAutomationLevel>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VM [[-VMHost] <VMHost>] [-Name <String>] [-ResourcePool <VIContainer>] [-VApp <VApp>] [-Location <Folder>] [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse 
    <HAIsolationResponse>] [-DrsAutomationLevel <DrsAutomationLevel>] -VMFilePath <String> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    New-VM [[-VMHost] <VMHost>] [-Name <String>] [-ResourcePool <VIContainer>] [-Location <Folder>] [-Datastore <StorageResource>] [-DiskStorageFormat <VirtualDiskStorageFormat>] 
    [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse <HAIsolationResponse>] [-DrsAutomationLevel <DrsAutomationLevel>] [-ContentLibraryItem] <ContentLibraryItem> [-Server 
    <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new virtual machine with the provided parameters. The network adapter and the SCSI adapter of the new virtual machine are created of the recommended type for the 
    OS that is specified by the GuestId parameter. If  the OSCustomizationSpec parameter is used,  the virtual machine is customized according to the spec. You must specify values for at 
    least one of the ResourcePool, VMHost, and VApp parameters.
    

PARAMETERS
    -AdvancedOption <AdvancedOption[]>
        Specifies advanced options for creating virtual machines. Accepts only SdrsVMDiskAntiAffinityRule and SdrsVMAntiAffinityRule objects.
        
        The SdrsVMDiskAntiAffinityRule defines a Storage DRS intra-VM anti-affinity rule (vm disk anti-affinity rule). It is only applicable when creating a virtual machine or hard disk on 
        a datastore cluster. An instance of the object is created by invoking its constructor. There are two constructors - "public SdrsVMDiskAntiAffinityRule(param string[] 
        diskIdentifier)" and "public SdrsVMDiskAntiAffinityRule(param HardDisk[] disk)". For the first constructor, "diskIdentifier" can be either the disk key or the index of the disk in 
        the disk array. The specified disks (and the disk to which the rule is applied) are placed in an anti-affinity rule on a DatastoreCluster. Only one such rule is supported per a 
        virtual machine. You can pass the instance to the AdvancedOption parameter of the New-VM or New-HardDisk cmdlets.
        
        The SdrsVMAntiAffinityRule defines a Storage DRS inter-VM anti-affinity rule. It is only applicable when creating a virtual machine on a DatastoreCluster. An instance of the object 
        is created by invoking its constructor. The constructor has one parameter - an array of virtual machines - "public SdrsVMAntiAffinityRule(param VirtualMachine[] vm)". Then, you can 
        pass the instance to the AdvancedOption parameter of the New-VM cmdlet. This will place the new virtual machine and the virtual machines specified in the constructor in an inter-VM 
        anti-affinity rule on a DatastoreCluster.
        
        The SDRS functionality is experimental.
        
    -VMHost <VMHost>
        Specifies the host on which you want to create the new virtual machine.
        
    -Version <VMVersion>
        Specifies the version of the new virtual machine. The valid values are v4, v7, v8, v9, v10, and v11. By default, the new virtual machine is created with the latest available version.
        
    -Name <String>
        Specifies a name for the new virtual machine. If you are registering or cloning an existing virtual machine, this parameter is not mandatory.
        
    -ResourcePool <VIContainer>
        Specifies where you want to place the new virtual machine. The parameter accepts VMHost, Cluster, ResourcePool, and VApp objects. If no value is specified, the virtual machine is 
        added to the resource pool of its host.
        
    -VApp <VApp>
        This parameter is deprecated. Use the ResourcePool parameter instead.
        Specifies the vApp where you want to create the new virtual machine.
        
    -Location <Folder>
        Specifies the folder where you want to place the new virtual machine.
        
    -Datastore <StorageResource>
        Specifies the datastore where you want to place the new virtual machine. If a DatastoreCluster is passed to the Datastore parameter, the virtual machine is placed in the 
        DatastoreCluster in an automated SDRS mode and with enabled intra-VM affinity rule (unless another rule is specified). You can specify a SDRS rule when creating the virtual machine 
        in a DatastoreCluster by passing either a SdrsVMDiskAntiAffinityRule or SdrsVMAntiAffinityRule objects to the AdvancedOption parameter. These two rules are mutually exclusive.
        
    -DiskMB <Int64[]>
        This parameter is obsolete. Use DiskGB instead.
        Specifies the size in megabytes (MB) of the disks that you want to create and add to the new virtual machine.
        
    -DiskGB <Decimal[]>
        Specifies the size in gigabytes (GB) of the disks that you want to create and add to the new virtual machine.
        
    -DiskPath <String[]>
        Specifies paths to virtual disks you want to add to the new virtual machine.
        
    -DiskStorageFormat <VirtualDiskStorageFormat>
        Specifies the storage format of the disks of the virtual machine. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
    -MemoryMB <Int64>
        This parameter is obsolete. Use MemoryGB instead.
        Specifies the memory size in megabytes (MB) of the new virtual machine.
        
    -MemoryGB <Decimal>
        Specifies the memory size in gigabytes (GB) of the new virtual machine.
        
    -NumCpu <Int32>
        Specifies the number of the virtual CPUs of the new virtual machine.
        
    -Floppy
        Indicates that you want to add a floppy drive to the new virtual machine.
        
    -CD
        Indicates that you want to add a CD drive to the new virtual machine.
        
    -GuestId <String>
        Specifies the guest operating system of the new virtual machine. The valid values for specific ESX versions are listed in the description of the VirtualMachineGuestOsIdentifier 
        enumeration type in the vSphere API Reference available at http://www.vmware.com/support/developer/vc-sdk/. Depending on the hardware configuration of the host, some of the guest 
        operating systems might be inapplicable.
        
    -AlternateGuestName <String>
        Specifies the full OS name of the new virtual machine. Use this parameter if the GuestID parameter is set to otherGuest or otherGuest64.
        
    -NetworkName <String[]>
        Specifies the networks to which you want to connect the new virtual machine. Specifying a distributed port group name is obsolete. Use the Portgroup parameter instead.
        
    -Portgroup <VirtualPortGroupBase[]>
        Specifies standard or distributed port groups to which you want to connect the virtual machine. For each specified port group, a new network adapter is created.
        
    -HARestartPriority <HARestartPriority>
        Specifies the HA restart priority of the new virtual machine. The valid values are Disabled, Low, Medium, High, and ClusterRestartPriority. VMware HA is a feature that detects 
        failed virtual machines and automatically restarts them on alternative ESX hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future 
        release. Specifiesing this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
        
    -HAIsolationResponse <HAIsolationResponse>
        Indicates whether the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The available values are 
        AsSpecifiedByCluster, PowerOff, and DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter 
        is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
        
    -DrsAutomationLevel <DrsAutomationLevel>
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, PartiallyAutomated, AsSpecifiedByCluster, and Disabled. Passing 
        values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a 
        cluster. Otherwise, an error is generated.
        
    -VMSwapfilePolicy <VMSwapfilePolicy>
        Specifies the swapfile placement policy. The following values are valid:
        
        InHostDataStore - Stores the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set 
        or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        
        WithVM - Stores the swapfile in the same directory as the virtual machine.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Notes <String>
        Provides a description of the new virtual machine. The alias of this parameter is Description.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -OSCustomizationSpec <OSCustomizationSpec>
        Specifies a customization specification that is to be applied to the new virtual machine.
        
    -LinkedClone
        Indicates that you want to create a linked clone. When you set the LinkedClone parameter, the ReferenceSnapshot parameter becomes mandatory.
        
    -ReferenceSnapshot <Snapshot>
        Specifies a source snapshot for the linked clone that you want to create. When you set the LinkedClone parameter, the ReferenceSnapshot parameter becomes mandatory.
        
    -VM <VirtualMachine[]>
        Specifies a virtual machine to clone.
        
    -Template <Template>
        Specifies the virtual machine template you want to use for the creation of the new virtual machine. Passing values to this parameter through a pipeline is deprecated and will be 
        disabled in a future release.
        
    -VMFilePath <String>
        Specifies a path to the virtual machine you want to register.
        
    -ContentLibraryItem <ContentLibraryItem>
        Specifies the content library template to deploy the virtual machine from.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myTargetVMHost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM1 -ResourcePool $myTargetVMHost -Datastore MyDatastore1 -NumCPU 2 -MemoryGB 4 -DiskGB 40 -NetworkName "VM Network" -Floppy -CD -DiskStorageFormat Thin -GuestID 
    winNetDatacenterGuest
    
    Creates a virtual machine by specifying a target host, a target datastore, and a network to connect to, and configures the settings for the virtual machine.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myCluster = Get-Cluster -Name MyCluster1
    New-VM -Name MyVM1 -ResourcePool $myCluster
    
    Creates a virtual machine by specifying a cluster. The ResourcePool parameter accepts ResourcePool, Cluster, VApp, and standalone VMHost objects.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myCluster = Get-Cluster -Name MyCluster1
    New-VM -Name MyVM1 -VMHost $vmhost -ResourcePool $myCluster -DiskGB 4 -MemoryGB 1
    
    Creates a virtual machine by specifying a cluster and explicitly selecting the host, instead of allowing auto-selection of a target host.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM1 -ResourePool $vmhost -DiskGB 40,100
    
    Creates a virtual machine with multiple disks.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM1 -ResourcePool $vmhost -DiskPath "[Storage1] WindowsXP/WindowsXP.vmdk"
    
    Creates a virtual machine by specifying an existing disk.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM1 -ResourcePool $vmhost -Version v4
    
    Creates a virtual machine by explicitly specifying the version of the virtual machine hardware through the Version parameter.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>$myDatastore = Get-Datastore -Name MyDatastore1
    $vmhost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM2 -VM MyVM1 -Datastore $myDatastore -VMHost $vmhost
    
    Creates a new virtual machine named MyVM2 by cloning the MyVM1 virtual machine on the specified datastore and host.
    
    
    
    
    --------------  Example 8 --------------
    
    C:\PS>New-VM -VM MyVM1, MyVM2 -Location MyFolder1 -VMHost MyHost1
    
    Copies the MyVM1 and MyVM2 virtual machines to the MyFolder1 folder on the MyHost1 host.
    
    
    
    
    --------------  Example 9 --------------
    
    C:\PS>$myResourcePool = Get-ResourcePool -Name MyResourcePool1
    $mySpecification = Get-OSCustomizationSpec -Name WindowsSpec
    New-VM -VM MyVM1 -Name MyVM2 -OSCustomizationSpec $mySpecification -ResourcePool $myResourcePool
    
    Clones the virtual machine MyVM1 to MyVM2 and applies a customization specification on the cloned virtual machine.
    
    
    
    
    --------------  Example 10 --------------
    
    C:\PS>$myResourcePool = Get-ResourcePool -Name MyResourcePool1
    $myTemplate = Get-Template -Name WindowsTemplate
    $mySpecification = Get-OSCustomizationSpec -Name WindowsSpec
    New-VM -Name MyVM2 -Template $myTemplate -ResourcePool $myResourcePool -OSCustomizationSpec $mySpecification
    
    Creates a virtual machine from the specified template and applies the specified customization specification.
    
    
    
    
    --------------  Example 11 --------------
    
    C:\PS>cd vmstores:\myserver@443\Datacenter\Storage1\MyVM1\
    $vmxFile = Get-Item MyVM1.vmx
    $vmhost = Get-VMHost -Name MyVMHost1
    New-VM -VMHost $vmhost -VMFilePath $vmxFile.DatastoreFullPath
    
    Retrieves the specified configuration file for the MyVM1 virtual machine and registers the MyVM1 virtual machine on the specified host.
    
    
    
    
    --------------  Example 12 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster1
    New-VM -Name MyVM1 -DiskGB 40,40 -Datastore $myDatastoreCluster -ResourcePool $vmhost
    
    Creates a virtual machine on a datastore cluster. By default, the new virtual machine has an intra-VM affinity rule.
    
    
    
    
    --------------  Example 13 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster1
    $myAdvancedOption = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMDiskAntiAffinityRule' 1,2
    New-VM -Name MyVM1 -DiskGB 40,40,40 -Datastore $myDatastoreCluster -AdvancedOption $myAdvancedOption -ResourcePool $vmhost
    
    Creates a virtual machine on a datastore cluster. The machine has three hard disks.  For the first two disks, intra-VM anti-affinity rule is specified and they will be placed on a 
    datastore different from the datastore cluster. Identifying the hard disk in the Intra-VM anti-affinity happens by indexing the disks starting from 1.
    
    
    
    
    --------------  Example 14 --------------
    
    C:\PS>$myVM1 = Get-VM -Name WindowsXP
    $myResourcePool = Get-ResourcePool -Name MyResourcePool1
    $myAdvancedOption = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMAntiAffinityRule' $myVM1
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster1
    New-VM -Name MyVM1 -DiskGB 40,40,40 -Datastore $myDatastoreCluster -AdvancedOption $myAdvancedOption -ResourcePool $myResourcePool
    
    Creates a virtual machine on a datastore cluster and specifies a VM anti-affinity rule between the new virtual machine and an existing virtual machine.
    
    
    
    
    --------------  Example 15 --------------
    
    C:\PS>$mySourceVM = Get-VM -Name MySourceVM1
    $vmhost = Get-VMHost -Name MyVMHost1
    $hardDiskList = Get-HardDisk -VM $vm | select -First 2
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster1
    $myAdvancedOption = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMDiskAntiAffinityRule' $hardDiskList
    New-VM -Name MyVM1 -VM $mySourceVM -Datastore $myDatastoreCluster -AdvancedOption $myAdvancedOption -ResourcePool $vmhost
    
    Clones a virtual machine on a datastore cluster and specifies an intra-VM anti-affinity rule by using references to the hard disks of the source virtual machine. When you apply this 
    rule to the AdvancedOption parameter of New-VM, the first and second disk of the new virtual machine will be placed on different datastores within the specified datastore cluster.
    
    
    
    
    --------------  Example 16 --------------
    
    C:\PS>$mySourceVM = Get-VM -Name MySourceVM1
    $myVM1 = Get-VM -Name WindowsXP
    $myAdvancedOption = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMAntiAffinityRule' $myVM1
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster1
    $vmhost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM2 -VM $mySourceVM -Datastore $myDatastoreCluster -AdvancedOption $myAdvancedOption -ResourcePool $vmhost
    
    Clones a virtual machine on a datastore cluster and specifies a VM anti-afffinity rule between the new virtual machine and an existing virtual machine. When you apply this rule to the 
    AdvancedOption parameter of New-VM, the new virtual machine and the WindowsXP virtual machine will be placed on different datastores within the specified datastore cluster.
    
    
    
    
    --------------  Example 17 --------------
    
    C:\PS>$mySourceTemplate = Get-Template -Name WindowsTemplate
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster
    $myAdvancedOption = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMDiskAntiAffinityRule' $hardDiskList
    $vmhost = Get-VMHost -Name MyVMHost1
    New-VM -Name MyVM1 -Template $mySourceTemplate -Datastore $myDatastoreCluster -AdvancedOption $myAdvancedOption -ResourcePool $vmhost
    
    Creates a virtual machine from a template, specifies a VM anti-affinity rule, and stores the virtual machine on a specified datastore cluster.
    
    
    
    
    --------------  Example 18 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVM = Get-VM -Name WindowsXP
    $mySourceTemplate = Get-Template -Name WindowsTemplate
    $myDatastoreCluster = Get-DatastoreCluster -Name MyStorageCluster1
    $myAdvancedOption = New-Object 'VMware.VimAutomation.ViCore.Types.V1.DatastoreManagement.SdrsVMAntiAffinityRule' $myVM
    New-VM -Name VM -Template $mySourceTemplate -Datastore $myDatastoreCluster -AdvancedOption $myAdvancedOption -ResourcePool $vmhost
    
    Creates a virtual machine from a template, specifies a VM anti-affinity rule, and stores the virtual machine on a specified datastore cluster.
    
    
    
    
    --------------  Example 19 --------------
    
    C:\PS>$mySourceVM = Get-VM -Name MySourceVM1
    $myReferenceSnapshot = Get-Snapshot -VM $mySourceVM -Name "InitialState"
    $vmhost = Get-VMHost -Name MyVMHost1
    $myDatastore = Get-Datastore -Name MyDatastore1
    New-VM -Name MyLinkedCloneVM1 -VM $mySourceVM -LinkedClone -ReferenceSnapshot $myReferenceSnapshot -ResourcePool $vmhost -Datastore $myDatastore
    
    Creates a linked clone from the specified snapshot of the parent virtual machine. The linked clone is stored to the specified VM host and datastore.
    
    
    
    
    --------------  Example 20 --------------
    
    C:\PS>$myCluster = Get-Cluster -Name "MyCluster"
    $myVDPortGroup = Get-VDPortgroup -Name "MyVDPortGroup"
    $mySharedDatastore = Get-Datastore -Name "MySharedDatastore"
    New-VM -Name MyVM -ResourcePool $myCluster -Portgroup $myVDPortGroup -DiskGB 40 -MemoryGB 4 -Datastore $mySharedDatastore
    
    Creates a new virtual machine with the specified configuration and connects it to the specified distributed port group.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VM -examples".
    For more information, type: "get-help New-VM -detailed".
    For technical information, type: "get-help New-VM -full".
    For online help, type: "get-help New-VM -online"

New-VMGuestRoute
-------------------------

NAME
    New-VMGuestRoute
    
SYNOPSIS
    This cmdlet adds a new route to the routing table of the provided virtual machines and guests.
    
    
SYNTAX
    New-VMGuestRoute [-VM <VirtualMachine[]>] [-Destination] <IPAddress> [[-Netmask] <String>] [-Gateway] <IPAddress> [-Interface <Object>] [-VMGuest <VMGuest[]>] [-Server <VIServer[]>] 
    [-ToolsWaitSecs <Int32>] [-GuestPassword <SecureString>] [-GuestUser <String>] [-GuestCredential <PSCredential>] [-HostPassword <SecureString>] [-HostUser <String>] [-HostCredential 
    <PSCredential>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use Invoke-VMGuestScript instead.
    
    This cmdlet adds a new route to the routing table of the provided virtual machines and guests. The cmdlet adds only persistent routes. For a list of supported operating systems, see the 
    PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Execute and VirtualMachine.GuestOperations.Modify privileges.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines to which you want to add the new route.
        
    -Destination <IPAddress>
        Specifies a destination IP address for the new route.
        
    -Netmask <String>
        Specifies a network mask for the new route.
        
    -Gateway <IPAddress>
        Specifies a gateway for the new route.
        
    -Interface <Object>
        Specifies a network interface for the new route. For Linux guest operating systems, this parameter is mandatory.
        
    -VMGuest <VMGuest[]>
        Specifies the guests to which you want to add the new route.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
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
    
    C:\PS>New-VMGuestRoute -GuestUser user -GuestPassword pass2 -VM $vm -Destination '192.168.100.10' -Netmask '255.255.255.255' -Gateway '10.23.112.58'
    
    Creates a new guest route with the specified parameters.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VMGuestRoute -examples".
    For more information, type: "get-help New-VMGuestRoute -detailed".
    For technical information, type: "get-help New-VMGuestRoute -full".
    For online help, type: "get-help New-VMGuestRoute -online"

New-VMHostAccount
-------------------------

NAME
    New-VMHostAccount
    
SYNOPSIS
    This cmdlet creates a new host user or group account.
    
    
SYNTAX
    New-VMHostAccount [-Id] <String> [-Password] <String> [-Description <String>] [-UserAccount] [-AssignGroups <String[]>] [-GrantShellAccess] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    New-VMHostAccount [-Id] <String> [-GroupAccount] [-AssignUsers <String[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new host user or group account using the provided parameters.
    

PARAMETERS
    -Id <String>
        Specifies an ID for the new host account.
        
    -Password <String>
        Specifies a password for the new host account.
        
    -Description <String>
        Provide a description of the new host account. The maximum length of the text is 255 symbols.
        
    -UserAccount
        Indicates that the new host account is a user account.
        
    -AssignGroups <String[]>
        If the UserAccount parameter is set to $true, use AssignGroups to specify the groups to which the newly created user belongs.
        
    -GrantShellAccess
        Indicates that the new account is allowed to access the ESX shell.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer. 
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -GroupAccount
        Indicates that the new host account is a group account. Starting with ESXi 5.1, this parameter is not supported.
        
    -AssignUsers <String[]>
        If the GroupAccount parameter is set to $true, use AssignUsers to specify the users that belong to the newly created group account.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>New-VMHostAccount -ID MyUser1 -Password MyPassword1 -UserAccount
    
    Creates a user account with a specified user ID and password. The user account is created on the default server.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myUser1 = Get-VMHostAccount -ID MyUser1 -User
    New-VMHostAccount -Id MyGroup1 -GroupAccount -AssignUsers $myUser1
    
    Creates a group account with a specified ID and assigns a specified user to the group account. Starting with ESXi 5.1, you cannot create group host accounts.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VMHostAccount -examples".
    For more information, type: "get-help New-VMHostAccount -detailed".
    For technical information, type: "get-help New-VMHostAccount -full".
    For online help, type: "get-help New-VMHostAccount -online"

New-VMHostNetworkAdapter
-------------------------

NAME
    New-VMHostNetworkAdapter
    
SYNOPSIS
    This cmdlet creates a new HostVirtualNIC (Service Console or VMKernel) on the specified host.
    
    
SYNTAX
    New-VMHostNetworkAdapter [[-VMHost] <VMHost>] [[-PortGroup] <String>] [-PortId <String>] [-VirtualSwitch] <VirtualSwitchBase> [[-IP] <String>] [[-SubnetMask] <String>] [[-Mac] <String>] 
    [-Mtu <Int32>] [-ConsoleNic] [-VMotionEnabled <Boolean>] [-FaultToleranceLoggingEnabled <Boolean>] [-IPv6ThroughDhcp] [-AutomaticIPv6] [-IPv6 <String[]>] [-ManagementTrafficEnabled 
    <Boolean>] [-VsanTrafficEnabled <Boolean>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new HostVirtualNIC (Service Console or VMKernel) on the specified host. Creates a port group with a name specified by the PortGroup parameter on the virtual switch 
    passed through the VirtualSwitch parameter. Adds either a Console NIC if ConsoleNIC is set, or a VMKernel NIC otherwise.
    

PARAMETERS
    -VMHost <VMHost>
        Specifies the host to which you want to add the new adapter. This parameter is mandatory when creating a network adapter on a distributed switch.
        
    -PortGroup <String>
        Specifies the port group to which you want to add the new adapter. If a distributed switch is passed to the VirtualSwitch parameter, an existing port group name should be specified. 
        For standard virtual switches, if the port group is non-existent, a new port group with the specified name will be created and the new adapter will be added to the port group.
        
    -PortId <String>
        Specifies the port of the specified distributed switch to which you want to connect the network adapter. Use this parameter only if a distributed switch is passed to the 
        VirtualSwitch parameter.
        
    -VirtualSwitch <VirtualSwitchBase>
        Specifies the virtual switch to which you want to add the new network adapter.
        
    -IP <String>
        Specifies an IP address for the new network adapter. All IP addresses are specified using IPv4 dot notation. If IP is not specified, DHCP mode is enabled. For VMKernel network 
        adapters, the DHCP mode is supported only on vCenter Server 4.1, ESX 4.1, and later.
        
    -SubnetMask <String>
        Specifies a subnet mask for the new network adapter.
        
    -Mac <String>
        Specifies a media access control (MAC) address for the new virtual network adapter.
        
    -Mtu <Int32>
        Specifies the MTU size. This parameter is supported only on ESX/vCenter Server 4.1 and later.
        
    -ConsoleNic
        If the value is $true, indicates that you want to create a service console virtual network adapter. If the value is $false, indicates that you want to create a virtual host/VMkernel 
        network adapter. Not supported on ESXi.
        
    -VMotionEnabled [<Boolean>]
        Indicates that you want to use the new virtual host/VMKernel network adapter for VMotion.
        
    -FaultToleranceLoggingEnabled [<Boolean>]
        Indicates that the network adapter is enabled for Fault Tolerance (FT) logging. This parameter is supported only on ESX/vCenter Server 4.1 and later.
        
    -IPv6ThroughDhcp
        Indicates that the IPv6 address is obtained through DHCP.
        
    -AutomaticIPv6
        Indicates that the IPv6 address is obtained through a router advertisement.
        
    -IPv6 <String[]>
        Specifies multiple static addresses using the following format: <IPv6>/<subnet_prefix_length> or <IPv6>. If you skip <subnet_prefix_length>, the default value of 64 is used.
        
    -ManagementTrafficEnabled [<Boolean>]
        Indicates that you want to enable the network adapter for management traffic. This parameter is supported only on ESX/ESXi/vCenter Server 4.1 and later.
        
    -VsanTrafficEnabled [<Boolean>]
        Indicates that Virtual SAN traffic is enabled on this network adapter.
        
    -Server <VIServer[]>
        The Server parameter is required when the host is specified by name. In this case, the host with the specified name is searched for on the specified Servers and a network adapter is 
        added to it. If a VMHost object is passed to the VMHost parameter, the Server parameter is not used.
        
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
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVirtualSwitch = Get-VirtualSwitch -VMHost $vmhost -Name MyVirtualSwitch1
    New-VMHostNetworkAdapter -VMHost $vmhost -PortGroup MyVMKernelPortGroup1 -VirtualSwitch $myVirtualSwitch -Mtu 4000
    
    Creates a VMKernel port group at the MyVirtualSwitch1 virtual switch. The IP address is obtained via DHCP.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVirtualSwitch = Get-VirtualSwitch -VMHost $vmhost -Name MyVirtualSwitch1
    New-VMHostNetworkAdapter -VMHost $vmhost -PortGroup MyVMKernelPortGroup1 -VirtualSwitch $myVirtualSwitch -IP 192.168.168.110 -SubnetMask 255.255.255.0
    
    Creates a VMKernel port group at the MyVirtualSwitch1 virtual switch and assigns a static IP address.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVirtualSwitch = Get-VirtualSwitch -VMHost $vmhost -Name MyVirtualSwitch1
    New-VMHostNetworkAdapter -VMHost $vmhost -VirtualSwitch $myVirtualSwitch -PortGroup MyVMKernelPortGroup1 -IP 192.168.0.1 -SubnetMask 255.255.255.0 -IPv6 "0200:2342::1/32"
    
    Creates a VMKernel NIC that has an IPv4 address and an IPv6 address.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVirtualSwitch = Get-VirtualSwitch -VMHost $vmhost -Name MyVirtualSwitch1
    New-VMHostNetworkAdapter -VMHost $vmhost -VirtualSwitch $myVirtualSwitch -PortGroup MyVMKernelPortGroup1 -IP 192.168.0.1 -SubnetMask 255.255.255.0 -AutomaticIPv6
    
    Creates a VMKernel NIC that obtains IPv6 automatically (by router advertisement) and takes the desired IPv4 address.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVirtualSwitch = Get-VirtualSwitch -VMHost $vmhost -Name MyVirtualSwitch1
    New-VMHostNetworkAdapter -VMHost $vmhost -VirtualSwitch $myVirtualSwitch -PortGroup MyVMKernelPortGroup1 -IPv6ThroughDhcp
    
    Creates a VMKernel NIC that obtains the IPv4 and IPv6 addresses by DHCP.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$vmhost = Get-VMHost -Name MyVMHost1
    $myVirtualSwitch = Get-VirtualSwitch -VMHost $vmhost -Name MyVirtualSwitch1
    New-VMHostNetworkAdapter -VMHost $vmhost -PortGroup MyConsolePortGroup1 -VirtualSwitch $myVirtualSwitch -ConsoleNic
    
    Creates a Service Console port group at the vSwitch virtual switch. The IP address is obtained via DHCP.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>$myVMHost = Get-VMHost -Name "MyVMHost"
    $myVDSwitch = Get-VDSwitch -Name "MyVDSwitch"
    New-VMHostNetworkAdapter -VMHost $myVMHost -PortGroup "MyVDPortgroup" -VirtualSwitch $myVDSwitch -IP 192.168.0.50 -SubnetMask 255.255.255.0
    
    Creates a new VMKernel network adapter and connects it to the specified port group on the specified distributed switch.
    
    
    
    
    --------------  Example 8 --------------
    
    C:\PS>$myVMHost = Get-VMHost -Name "MyVMHost"
    $myVDSwitch = Get-VDSwitch -Name "MyVDSwitch"
    New-VMHostNetworkAdapter -VMHost $myVMHost -VirtualSwitch $myVDSwitch -PortId 100 -IP 192.168.0.50 -SubnetMask 255.255.255.0
    
    Creates a new VMKernel network adapter and connects it to a specified port on a specified distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VMHostNetworkAdapter -examples".
    For more information, type: "get-help New-VMHostNetworkAdapter -detailed".
    For technical information, type: "get-help New-VMHostNetworkAdapter -full".
    For online help, type: "get-help New-VMHostNetworkAdapter -online"

New-VMHostProfile
-------------------------

NAME
    New-VMHostProfile
    
SYNOPSIS
    This cmdlet creates a new  host profile based on a reference host.
    
    
SYNTAX
    New-VMHostProfile [-Name] <String> [-ReferenceHost] <VMHost> [-Description <String>] [-CompatibilityMode] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new host profile based on a reference host.
    

PARAMETERS
    -Name <String>
        Specifies a name for the new host profile.
        
    -ReferenceHost <VMHost>
        Specifies the reference host, on which the new virtual machine host profile is based.
        
    -Description <String>
        Provides a description for the new host profile.
        
    -CompatibilityMode
        If you are connected to a vCenter Server/ESX 5.0 or later, use this parameter to indicate that you want the new profile to be compatible with hosts running ESX/vCenter Server 
        versions earlier than 5.0.
        
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
    
    C:\PS>$h = Get-VMHost 10.23.134.133
    
    New-VMHostProfile -Name testProfile -Description "This is my first test profile." -ReferenceHost $h
    
    Creates a profile based on the virtual machine host with an IP address 10.23.134.133.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VMHostProfile -examples".
    For more information, type: "get-help New-VMHostProfile -detailed".
    For technical information, type: "get-help New-VMHostProfile -full".
    For online help, type: "get-help New-VMHostProfile -online"

New-VMHostRoute
-------------------------

NAME
    New-VMHostRoute
    
SYNOPSIS
    This cmdlet creates a new route in the routing table of a host.
    
    
SYNTAX
    New-VMHostRoute [-VMHost] <VMHost[]> -Destination <IPAddress> -Gateway <IPAddress> -PrefixLength <Int32> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet creates a new route in the routing table of a host.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the host for which you want to create a new route.
        
    -Destination <IPAddress>
        Specifies a destination IP address for the new route.
        
    -Gateway <IPAddress>
        Specifies a gateway IP address for the new route.
        
    -PrefixLength <Int32>
        Specifies the prefix length of the destination IP address. For IPv4, the valid values are from 0 to 32, and for IPv6 - from 0 to 128.
        
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
    
    C:\PS>New-VMHostRoute -VMHost 10.23.114.195 -Destination 192.168.103.102 -PrefixLength 32 -Gateway 10.23.84.53
    
    Creates a route for the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-VMHostRoute -examples".
    For more information, type: "get-help New-VMHostRoute -detailed".
    For technical information, type: "get-help New-VMHostRoute -full".
    For online help, type: "get-help New-VMHostRoute -online"



