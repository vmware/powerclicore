Set Commands
=========================

This page contains details on **Set** commands.

Set-AdvancedSetting
-------------------------


NAME
    Set-AdvancedSetting
    
SYNOPSIS
    This cmdlet modifies the specified advanced setting.
    
    
SYNTAX
    Set-AdvancedSetting [-AdvancedSetting] <AdvancedSetting[]> [-Value] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified advanced setting.
    

PARAMETERS
    -AdvancedSetting <AdvancedSetting[]>
        Specifies the advanced setting you want to modify.
        
    -Value <Object>
        Specifies a new value for the advanced setting.
        
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
    
    C:\PS>Get-AdvancedSetting -Entity (Get-Cluster -Name Cluster) -Name SettingName | Set-AdvancedSetting -Value NewValue
    
    Changes the value of the advanced setting SettingName of the Cluster cluster.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-AdvancedSetting -Entity Server -Name 'mail.smtp.server' | Set-AdvancedSetting -Value 'test.vmware.com'
    
    Changes the value of the advanced setting mail.smtp.server of the specified server to test.vmware.com.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-AdvancedSetting -examples".
    For more information, type: "get-help Set-AdvancedSetting -detailed".
    For technical information, type: "get-help Set-AdvancedSetting -full".
    For online help, type: "get-help Set-AdvancedSetting -online"

Set-AlarmDefinition
-------------------------

NAME
    Set-AlarmDefinition
    
SYNOPSIS
    This cmdlet modifies the specified alarm definitions.
    
    
SYNTAX
    Set-AlarmDefinition [-AlarmDefinition] <AlarmDefinition[]> [-ActionRepeatMinutes <Int32>] [-Description <String>] [-Enabled <Boolean>] [-Name <String>] [-Server <VIServer[]>] [-WhatIf] 
    [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified alarm definitions.
    

PARAMETERS
    -AlarmDefinition <AlarmDefinition[]>
        Specifies the alarm definition you want to modify.
        
    -ActionRepeatMinutes <Int32>
        Specifies a time period in minutes to define how often the alarm action repeats if the alarm is active.
        
    -Description <String>
        Specifies a new description for the alarm definition.
        
    -Enabled [<Boolean>]
        Indicates that the alarm definition is enabled.
        
    -Name <String>
        Specifies a new name for the alarm definition.
        
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
    
    C:\PS>Get-AlarmDefinition -Name 'alarms' | Set-AlarmDefinition -ActionRepeatMinutes ($_.ActionRepeatMinutes + 1)
    
    Increase all selected alarms action repeat minutes.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-AlarmDefinition -Name 'alarm' | foreach {$_ | Set-AlarmDefinition -Name 'alarm new name' -Description 'new description' -Enabled:$true}
    
    Changes the name, description, and the Enabled flag of the selected alarms.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-AlarmDefinition -examples".
    For more information, type: "get-help Set-AlarmDefinition -detailed".
    For technical information, type: "get-help Set-AlarmDefinition -full".
    For online help, type: "get-help Set-AlarmDefinition -online"

Set-Annotation
-------------------------

NAME
    Set-Annotation
    
SYNOPSIS
    This cmdlet modifies the value of a custom attribute.
    
    
SYNTAX
    Set-Annotation [-Entity] <InventoryItem[]> [-CustomAttribute] <CustomAttribute> [-Value] <String> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the value of a custom attribute that applies to one or more inventory items.
    

PARAMETERS
    -Entity <InventoryItem[]>
        Specifies the entities to which the new annotation value applies.
        
    -CustomAttribute <CustomAttribute>
        Specifies the custom attribute whose annotation you want to change.
        
    -Value <String>
        Specifies a new value for the annotation.
        
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
    
    C:\PS>Set-Annotation -Entity $vmhost -CustomAttribute "PhysicalLocation" -Value Office
    
    Modifies the annotation of the PhysicalLocation custom attribute for the host stored in the $vmhost variable.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-Cluster Cluster | Set-Annotation -CustomAttribute "PhysicalLocation" -Value California
    
    Modifies the annotation of the PhysicalLocation custom attribute for the Cluster cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Annotation -examples".
    For more information, type: "get-help Set-Annotation -detailed".
    For technical information, type: "get-help Set-Annotation -full".
    For online help, type: "get-help Set-Annotation -online"

Set-CDDrive
-------------------------

NAME
    Set-CDDrive
    
SYNOPSIS
    This cmdlet modifies the configuration of a virtual CD drive.
    
    
SYNTAX
    Set-CDDrive [-CD] <CDDrive[]> [-IsoPath <String>] [-HostDevice <String>] [-NoMedia] [-StartConnected <Boolean>] [-Connected <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet updates a virtual CD drive. If an ISO location is provided, sets the CD to point to the ISO. Changes the StartConnected and Connected flags if StartConnected and/or 
    Connected is set. If NoMedia parameter is set to $true, removes the CD drive's media backing and disconnects it. Note that the Connected parameter can be specified only if the 
    corresponding virtual machine is powered on.
    

PARAMETERS
    -CD <CDDrive[]>
        Specifies the virtual CD drive you want to configure.
        
    -IsoPath <String>
        Specifies the datastore path to the ISO (CD image) file that backs the virtual CD drive. Do not use this parameter when the HostDevice and NoMedia parameters are specified.
        
    -HostDevice <String>
        Specifies the path to the CD drive on the host which backs this virtual CD drive. Do not use this parameter when the ISOPath and NoMedia parameters are specified.
        
    -NoMedia
        Indicates that you want to detach from the CD drive any type of connected media - ISO from datastore or host device. Do not use this parameter when the ISOPath or HostDevice 
        parameters are specified.
        
    -StartConnected [<Boolean>]
        Indicates that the virtual CD drive starts connected when the virtual machine associated with it powers on.
        
    -Connected [<Boolean>]
        Indicates that the virtual CD drive is connected after its creation. This parameter can be specified only if the corresponding virtual machine is powered on.
        
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
    
    C:\PS>$cd = New-CDDrive -VM VM -ISOPath "[sof-20666-esx:storage1] ISO\testISO.iso"
    
    Set-CDDrive -CD $cd -NoMedia
    
    Creates a CD drive on the VM virtual machine and attaches testISO.iso, previously uploaded.
    Then disconnects the ISO.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-CDDrive -examples".
    For more information, type: "get-help Set-CDDrive -detailed".
    For technical information, type: "get-help Set-CDDrive -full".
    For online help, type: "get-help Set-CDDrive -online"

Set-Cluster
-------------------------

NAME
    Set-Cluster
    
SYNOPSIS
    This cmldlet modifies the configuration of a cluster.
    
    
SYNTAX
    Set-Cluster [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse <HAIsolationResponse>] [-VMSwapfilePolicy <VMSwapfilePolicy>] [-Cluster] <Cluster[]> [[-Name] <String>] 
    [-HAEnabled <Boolean>] [-HAAdmissionControlEnabled <Boolean>] [-HAFailoverLevel <Int32>] [-DrsEnabled <Boolean>] [-DrsMode <DrsMode>] [-DrsAutomationLevel <DrsAutomationLevel>] 
    [-VsanEnabled <Boolean>] [-VsanDiskClaimMode <VsanDiskClaimMode>] [-Profile <VMHostProfile>] [-EVCMode <String>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of a cluster.
    HAEnabled is automatically set to $true if some of the HA settings, HAAdmissionControlEnabled, HAFailoverLevel, HARestartPriority, HAIsolationResponse, are specified.
    DrsEnabled is automatically set to $true if some of the DRS settings, DrsAutomationLevel, DrsMode, are specified.
    

PARAMETERS
    -HARestartPriority <HARestartPriority>
        Specifies the cluster HA restart priority. The valid values are Disabled, Low, Medium, and High. VMware HA is a feature that detects failed virtual machines and automatically 
        restarts them on alternative ESX/ESXi hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -HAIsolationResponse <HAIsolationResponse>
        Specifies whether the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The valid values are PowerOff and 
        DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -VMSwapfilePolicy <VMSwapfilePolicy>
        Specifies the swapfile placement policy. The following values are valid:
        
        InHostDataStore - Store the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set 
        or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        
        
        WithVM - Store the swapfile in the same directory as the virtual machine.
        
    -Cluster <Cluster[]>
        Specifies the name of the cluster you want to configure.
        
    -Name <String>
        Specifies a new name for the cluster.
        
    -HAEnabled [<Boolean>]
        Indicates that VMware High Availability is enabled.
        
    -HAAdmissionControlEnabled [<Boolean>]
        Indicates that the virtual machines in the cluster will not start if they violate availability constraints.
        
    -HAFailoverLevel <Int32>
        Specifies a failover level. This is the number of physical host failures that can be tolerated without impacting the ability to meet minimum thresholds for all running virtual 
        machines. The valid values range from one to four.
        
    -DrsEnabled [<Boolean>]
        Indicates that VMware DRS (Distributed Resource Scheduler) is enabled.
        
    -DrsMode <DrsMode>
        This parameter is deprecated and scheduled for removal. Use the DrsAutomationLevel parameter instead. 
        
        Specifies a DRS (Distributed Resource Scheduler) mode. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
        
    -DrsAutomationLevel <DrsAutomationLevel>
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, and PartiallyAutomated.
        
    -VsanEnabled [<Boolean>]
        Specifies whether the Virtual SAN feature is enabled on this cluster.
        
    -VsanDiskClaimMode <VsanDiskClaimMode>
        Specifies the mode by which disks are claimed by the Virtual SAN.
        
    -Profile <VMHostProfile>
        Specifies a host profile you want to associate with the cluster. If the value of this parameter is $null, the current profile association is removed.
        
    -EVCMode <String>
        Specifies the VMware Enhanced vMotion Compatibility (EVC) mode of the newly created cluster. If not specified or set to $null, EVC is disabled.
        
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
    
    C:\PS>Get-Cluster -Name "MyClusterName" | Set-Cluster -Name "NewClusterName" -HAEnabled:$true -HAAdmissionControlEnabled:$true -HAFailoverLevel 2 -VMSwapfilePolicy "InHostDatastore" 
    -HARestartPriority "Low" -HAIsolationResponse "PowerOff"
    
    Renames the "MyClusterName" cluster to "NewClusterName" and changes its VMware HA (Hgh Availability) settings.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-Cluster -Cluster "MyClusterName" -DRSEnabled:$true -DRSAutomationLevel "Manual"
    
    Changes the VMware DRS (Distributed Resource Scheduler) settings of the "MyClusterName" cluster.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-Cluster -Cluster "MyClusterName" -EVCMode "intel-nehalem"
    
    Changes the VMware EVC (Enhanced vMotion Compatibility) settings of the "MyClusterName" cluster.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Cluster -examples".
    For more information, type: "get-help Set-Cluster -detailed".
    For technical information, type: "get-help Set-Cluster -full".
    For online help, type: "get-help Set-Cluster -online"

Set-CustomAttribute
-------------------------

NAME
    Set-CustomAttribute
    
SYNOPSIS
    This cmdlet renames a custom attribute.
    
    
SYNTAX
    Set-CustomAttribute [-CustomAttribute] <CustomAttribute[]> [-Name] <String> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet renames a custom attribute.
    

PARAMETERS
    -CustomAttribute <CustomAttribute[]>
        Specifies the custom attribute you want to rename.
        
    -Name <String>
        Specifies a new name for the custom attribute.
        
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
    
    C:\PS>Set-CustomAttribute -Name CreationDetails -CustomAttribute CreationDate
    
    Renames a custom attribute from CreationDate to CreationDetails.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-CustomAttribute -Name CreationDate -Server server1, server2 | Set-CustomAttribute -Name CreationDetails
    
    Renames the custom attributes retrieved from the specified vSphere servers from CreationDate to CreationDetails.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-CustomAttribute -examples".
    For more information, type: "get-help Set-CustomAttribute -detailed".
    For technical information, type: "get-help Set-CustomAttribute -full".
    For online help, type: "get-help Set-CustomAttribute -online"

Set-Datacenter
-------------------------

NAME
    Set-Datacenter
    
SYNOPSIS
    This cmdlet modifies the properties of the specified datacenter.
    
    
SYNTAX
    Set-Datacenter [-Datacenter] <Datacenter[]> [-Name] <String> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified datacenter.
    

PARAMETERS
    -Datacenter <Datacenter[]>
        Specifies the datacenter whose properties you want to modify.
        
    -Name <String>
        Specifies a new name for the datacenter.
        
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
    
    C:\PS>Set-Datacenter -Datacenter Datacenter1 -Name Datacenter2
    
    Renames the Datacenter1 to Datacenter2.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Datacenter -examples".
    For more information, type: "get-help Set-Datacenter -detailed".
    For technical information, type: "get-help Set-Datacenter -full".
    For online help, type: "get-help Set-Datacenter -online"

Set-Datastore
-------------------------

NAME
    Set-Datastore
    
SYNOPSIS
    This cmdlet modifies the properties of the specified datastore.
    
    
SYNTAX
    Set-Datastore [-Datastore] <Datastore[]> [[-Name] <String>] [-CongestionThresholdMillisecond <Int32>] [-StorageIOControlEnabled <Boolean>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    Set-Datastore [-Datastore] <Datastore[]> -MaintenanceMode <Boolean> [-EvacuateAutomatically] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified datastore. You can use the following characters in a path, but not in a datastore name: slash (/), backslash (\), and percent (%).
    

PARAMETERS
    -Datastore <Datastore[]>
        Specifies the datastore whose properties you want to change.
        
    -Name <String>
        Specifies a new name for the datastore. Do not use slash (/), backslash (\), and percent (%) characters in datastore names.
        
    -CongestionThresholdMillisecond <Int32>
        Specifies the latency period beyond which the storage array is considered congested. The range of this value is between 10 to 100 milliseconds.
        
    -StorageIOControlEnabled [<Boolean>]
        Indicates whether you want to enable the IO control.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -MaintenanceMode [<Boolean>]
        Specifies whether you want to put the datastore in maintenance mode. The operation completes when no virtual machines are present and no provisioning processes are running on the 
        datastore.
        
    -EvacuateAutomatically
        Specifies whether you want to automatically migrate all virtual machines to another datastore if the value of MaintenanceMode is $true.
        When the Storage DRS automation level is  set to Fully Automated, you do not need to specify the EvacuateAutomatically parameter because Storage DRS will migrate all virtual 
        machines automatically.
        
        If EvacuateAutomatically is specified, the SDRS placement and migration recommendations are automatically applied. If SDRS generates cluster DRS faults, an error report is displayed 
        and the operation is cancelled. The report contains information about each datastore cluster DRS fault. 
        
        If EvacuateAutomatically is not specified, an error report is displayed and the operation is cancelled. The error report contains information about each SDRS recommendation. If SDRS 
        generates cluster DRS faults, an error report is displayed and the operation is cancelled. The error report contains information about each fault.
        
        If EvacuateAutomatically is explicitly set to false, the cmdlet blocks execution without displaying an error message. If SDRS generates datastore cluster DRS faults, the cmdlet 
        stops responding and an error report is displayed. The report contains information about each cluster DRS fault.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-Datastore -Name Datastore1 | Set-Datastore -Name Datastore2
    
    Renames the Datastore1 datastore to Datastore2.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-Datastore $datastore1, $datastore2 -StorageIOControlEnabled $true -CongestionThresholdMillisecond 80
    
    Enables the Storage IO Control and set a congestion threshold of 80 milliseconds for the specified datastores.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-Datastore -Name 'MyDatastore1' | Set-Datastore -MaintenanceMode $true -EvacuateAutomatically
    
    Puts the MyDatastore1 datastore in maintenance mode and specifies that all virtual machines on the datastore will be automatically migrated to another datastore.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Datastore -examples".
    For more information, type: "get-help Set-Datastore -detailed".
    For technical information, type: "get-help Set-Datastore -full".
    For online help, type: "get-help Set-Datastore -online"

Set-DatastoreCluster
-------------------------

NAME
    Set-DatastoreCluster
    
SYNOPSIS
    This cmdlet modifies the configuration of the specified datastore cluster.
    
    
SYNTAX
    Set-DatastoreCluster -DatastoreCluster <DatastoreCluster[]> [-IOLatencyThresholdMillisecond <Int32>] [-IOLoadBalanceEnabled <Boolean>] [-Name <String>] [-SdrsAutomationLevel 
    <DrsAutomationLevel>] [-SpaceUtilizationThresholdPercent <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of the specified datastore cluster.
    

PARAMETERS
    -DatastoreCluster <DatastoreCluster[]>
        Specifies the datastore cluster that you want to configure.
        
    -IOLatencyThresholdMillisecond <Int32>
        Specifies the maximum I/O latency in milliseconds allowed before Storage DRS is triggered for the datastore cluster. The parameter accepts values in the range of 5 to 100. If the 
        value of IOLoadBalancing is $false, the setting for the I/O latency threshold is not applied.
        
    -IOLoadBalanceEnabled [<Boolean>]
        Specifies whether I/O load balancing is enabled for the datastore cluster. If the value is $false, I/O load balancing is disabled and the settings for the I/O latency threshold and 
        utilized space threshold are not applied.
        
    -Name <String>
        Specifies a new name for the datastore cluster.
        
    -SdrsAutomationLevel <DrsAutomationLevel>
        Specifies the Storage DRS automation level for the datastore cluster. This parameter accepts Disabled, Manual, and FullyAutomated values.
        
    -SpaceUtilizationThresholdPercent <Int32>
        Specifies the maximum percentage of consumed space allowed before Storage DRS is triggered for the datastore cluster. The parameter accepts values in the range of 50 to 100. If the 
        value of IOLoadBalancing is $false, the setting for the utilized space threshold is not applied.
        
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
    
    C:\PS>Set-DatastoreCluster -DatastoreCluster MyDatastoreCluster1 -Name 'MyDatastoreCluster2'
    
    Changes the name of the specified datastore cluster.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-DatastoreCluster -DatastoreCluster MyDatastoreCluster -IOLatencyThresholdMillisecond 5
    
    Sets the maximum I/O latency in milliseconds allowed before Storage DRS is triggered for the specified datastore cluster to 5 milliseconds.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-DatastoreCluster -DatastoreCluster MyDatastoreCluster - SdrsAutomationLevel FullyAutomated
    
    Changes the Storage DRS automation level of the specified datastore cluster to Fully Automated.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-DatastoreCluster -examples".
    For more information, type: "get-help Set-DatastoreCluster -detailed".
    For technical information, type: "get-help Set-DatastoreCluster -full".
    For online help, type: "get-help Set-DatastoreCluster -online"

Set-DrsRule
-------------------------

NAME
    Set-DrsRule
    
SYNOPSIS
    This cmdlet modifies an existing DRS rule.
    
    
SYNTAX
    Set-DrsRule [[-Enabled] <Boolean>] [-Rule] <DrsRule[]> [-Name <String>] [-VM <VirtualMachine[]>] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies an existing DRS rule. Each rule defines the virtual machines that can run on the same host (affinity rule) or must run on different hosts (anti-affinity rule).
    

PARAMETERS
    -Enabled [<Boolean>]
        Indicates that the DRS rule is enabled.
        
    -Rule <DrsRule[]>
        Specifies the DRS rule you want to modify.
        
    -Name <String>
        Specifies a new name for the DRS rule.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines that can be referenced by the new DRS rule.
        
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
    
    C:\PS>$vm = Get-VM DrsRuleVM1*
    
    Set-DrsRule -Rule $affinityRule -VM $vm -Enabled $true;
    
    Updates the list of virtual machines that might be referenced by the DRS rule stored in the $affinityRule  variable and enables the rule.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-DrsRule -examples".
    For more information, type: "get-help Set-DrsRule -detailed".
    For technical information, type: "get-help Set-DrsRule -full".
    For online help, type: "get-help Set-DrsRule -online"

Set-FloppyDrive
-------------------------

NAME
    Set-FloppyDrive
    
SYNOPSIS
    This cmdlet modifies the configuration of the specified virtual floppy drive.
    
    
SYNTAX
    Set-FloppyDrive [-Floppy] <FloppyDrive[]> [-FloppyImagePath <String>] [-HostDevice <String>] [-NoMedia] [-StartConnected <Boolean>] [-Connected <Boolean>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of the specified virtual floppy drive. If a floppy image path is provided, the cmdlet sets the floppy drive to point to the image. Also, the 
    cmdlet updates the StartConnected and Connected properties. If the value of the NoMedia parameter is $true, the cmdlet removes the floppy drive's media backing and disconnects it. The 
    FloppyImagePath, HostDevice, and NoMedia parameters cannot be used together.  The Connected parameter can be specified only if the corresponding virtual machine is powered on.
    

PARAMETERS
    -Floppy <FloppyDrive[]>
        Specifies the virtual floppy drive you want to configure.
        
    -FloppyImagePath <String>
        Specifies the datastore path to the floppy image file that backs the virtual floppy drive. Do not use this parameter when the HostDevice and NoMedia parameters are specified.
        
    -HostDevice <String>
        Specifies the path to the floppy drive on the host that backs this virtual floppy drive. Do not use this parameter when the FloppyImagePath and NoMedia parameters are specified.
        
    -NoMedia
        Indicates that the floppy drive is to have no media (similar to removing the floppy from a physical drive). Do not use this parameter when the FloppyImagePath and HostDevice 
        parameters are specified.
        
    -StartConnected [<Boolean>]
        If the value is $true, the virtual floppy drive starts connected when its associated virtual machine powers on. If the value is $false, it starts disconnected.
        
    -Connected [<Boolean>]
        If the value is $true, the virtual floppy drive is connected after its creation. If the value is $false, the floppy drive is disconnected. This parameter can be specified only if 
        the corresponding virtual machine is powered on.
        
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
    
    C:\PS>Set-FloppyDrive -Floppy $floppy -StartConnected:$true
    
    Sets a floppy to start connected.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-FloppyDrive -examples".
    For more information, type: "get-help Set-FloppyDrive -detailed".
    For technical information, type: "get-help Set-FloppyDrive -full".
    For online help, type: "get-help Set-FloppyDrive -online"

Set-Folder
-------------------------

NAME
    Set-Folder
    
SYNOPSIS
    This cmdlet modifies the properties of the specified folder.
    
    
SYNTAX
    Set-Folder -Folder <Folder[]> [-Name] <String> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified folder.
    

PARAMETERS
    -Folder <Folder[]>
        Specifies the folder whose properties you want to change.
        
    -Name <String>
        Specifies a new name for the folder.
        
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
    
    C:\PS>Get-Folder -Name "testFolder" | Set-Folder -Name "NewFolderName"
    
    Renames the "testFolder" folder to "NewFolderName".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Folder -examples".
    For more information, type: "get-help Set-Folder -detailed".
    For technical information, type: "get-help Set-Folder -full".
    For online help, type: "get-help Set-Folder -online"

Set-HardDisk
-------------------------

NAME
    Set-HardDisk
    
SYNOPSIS
    This cmdlet modifies the properties of the specified virtual hard disk.
    
    
SYNTAX
    Set-HardDisk [-HardDisk] <HardDisk[]> [[-CapacityKB] <Int64>] [-CapacityGB <Decimal>] [[-Persistence] <String>] [[-Datastore] <Datastore>] [-StorageFormat <VirtualDiskStorageFormat>] 
    [-Controller <ScsiController>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-HardDisk [-HardDisk] <HardDisk[]> [[-CapacityKB] <Int64>] [-CapacityGB <Decimal>] [[-Persistence] <String>] [[-Datastore] <Datastore>] [-StorageFormat <VirtualDiskStorageFormat>] 
    [-Controller <ScsiController>] [-Server <VIServer[]>] [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword <SecureString>] [-GuestCredential <PSCredential>] [-GuestUser 
    <String>] [-GuestPassword <SecureString>] [-ToolsWaitSecs <Int32>] [-HelperVM <VirtualMachine>] [-Partition <String>] [-ResizeGuestPartition] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-HardDisk [-HardDisk] <HardDisk[]> [-Inflate] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-HardDisk [-HardDisk] <HardDisk[]> [-ZeroOut] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified virtual hard disk. You can change the size and the persistence type, and inflate or expand the specified virtual hard disk. Do not 
    use the Inflate parameter at the same time with the Persistence and CapacityGB parameters. If a helper virtual machine is used, all virtual machines associated with the disk and the 
    helper virtual machine should be powered off before expanding the disk.  When you resize more than one disks using a helper virtual machine, the disks are resized one by one causing the 
    helper machine to power on and off for each virtual machine and this might slow the cmdlet performance. For a list of supported operating systems, see the PowerCLI User's Guide.
    

PARAMETERS
    -HardDisk <HardDisk[]>
        Specifies the virtual hard disk you want to configure.
        
    -CapacityKB <Int64>
        This parameter is obsolete. Use CapacityGB instead.
        Specifies the updated capacity of the virtual disk in kilobytes (KB). If you are connected to a vCenter Server 2.0 or ESX 3.0 server, the size of the disk cannot be changed and the 
        CapacityKB parameter is discarded. If you are connected to a vCenter Server 2.5 or ESX 3.5 server, the size of the disk can only be increased and the CapacityKB parameter is 
        discarded if its value is less than the current disk size.
        
    -CapacityGB <Decimal>
        Specifies the updated capacity of the virtual disk in gigabytes (GB). If you are connected to a vCenter Server 2.0 or ESX 3.0 server, the size of the disk cannot be changed and the 
        CapacityGB parameter is discarded. If you are connected to a vCenter Server 2.5 or ESX 3.5 server, the size of the disk can only be increased and the CapacityGB parameter is 
        discarded if its value is less than the current disk size.
        
    -Persistence <String>
        Specifies the disk persistence mode. The valid values are Persistent, NonPersistent, IndependentPersistent, IndependentNonPersistent, and Undoable. This parameter is supported only 
        when the disk type is rawVirtual or flat. The NonPersistent and Undoable values are deprecated and scheduled for removal. Their usage is not recommended because they do not work 
        with snapshots and are not supported on ESX 3.5 and later.
        
    -Datastore <Datastore>
        Specifies the datastore to which you want to move the specified hard disk. Moving a hard disk attached to a virtual machine to a different datastore is only supported on vCenter 
        Server.
        
    -StorageFormat <VirtualDiskStorageFormat>
        Specifies the storage format of the relocated hard disk. This parameter is applicable only when moving a virtual machine disk to a different datastore, using the Datastore 
        parameter. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
    -Controller <ScsiController>
        Specifies a SCSI controller to which you want to attach the hard disk.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -HostCredential <PSCredential>
        Specifies the PSCredential object that contains the credentials you want to use for authenticating with the host.
        
    -HostUser <String>
        Specifies the username you want to use for authenticating with the host.
        
    -HostPassword <SecureString>
        Specifies the password you want to use for authenticating with the host.
        
    -GuestCredential <PSCredential>
        Specifies the PSCredential object that contains the credentials you want to use for authenticating with the guest operating system.
        
    -GuestUser <String>
        Specifies the username you want to use for authenticating with the guest operating system.
        
    -GuestPassword <SecureString>
        Specifies the password you want to use for authenticating with the guest operating system.
        
    -ToolsWaitSecs <Int32>
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
        
    -HelperVM <VirtualMachine>
        Specifies a helper virtual machine you want to use when expanding a Windows virtual machine system disk.
        LVM (logical volume manager) for Linux is not supported and Linux guest system disks cannot be expanded. When a helper virtual machine is used, all virtual machines associated with 
        the disk and the helper virtual machine must be powered off before expanding the disk. When you resize more than one disks using a helper virtual machine, the disks are resized one 
        by one causing the helper machine to power on and off for each virtual machine, and this might slow down the cmdlet performance.
        
    -Partition <String>
        Specifies the partitions you want to resize. On Windows, you can specify which partition you want to resize by using the Partition parameter. If you do not specify a partition, the 
        last partition of the disk is resized.
        On Linux, only the last partition can be expanded.
        
        Resizing guest partitions is supported only for Windows OS and for ext3 partitions on RHEL 5. It is achieved by scripts, provided with the vSphere PowerCLI installation. You can 
        modify these scripts or add new ones to support operating systems different than Windows and RHEL 5, and more specific disk resizing scenarios. The scripts are located in the 
        "Scripts" folder in the PowerCLI installation directory and their names have the following format:
        
        GuestDiskExpansion_<OS_Identifier>
        
        <OS_Identifier> is the guest family or the guest ID (as returned by Get-VMGuest).
        
        If no partition is specified, the last partition of the hard disk is resized.
        
    -ResizeGuestPartition
        Note: This functionality is deprecated and is not functional on the currently supported guest operating systems. Resizing guest disks works only on Windows XP Service Pack 3 and Red 
        Hat Enterprise Linux 5.
        
        Indicates that you want to resize the guest partition of the disk. To use this feature, VMware Tools must be running on the virtual machine.
        On Windows, you can specify which partition you want to resize by using the Partition parameter. If you don't specify a partition, the last partition of the disk is resized.
        On Linux, only the last partition can be expanded.
        
        Resizing guest partitions is supported only for Windows OS and for ext3 partitions on RHEL 5. It is achieved by scripts, provided with the vSphere PowerCLI installation. You can 
        modify these scripts or add new ones to support operating systems different than Windows and RHEL 5, and more specific disk resizing scenarios. The scripts are located in the 
        "Scripts" folder in the PowerCLI installation directory and their names have the following format:
        
        GuestDiskExpansion_<OS_Identifier>
        
        <OS_Identifier> is the guest family or the guest ID (as returned by Get-VMGuest).
        
    -Inflate
        Indicates that you want to inflate the hard disk.
        
    -ZeroOut
        Specifies that you want to fill the hard disk with zeros. This parameter is supported only if you are directly connected to an ESX/ESXi host. The ZeroOut functionality is 
        experimental.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-HardDisk -VM $vm | Set-HardDisk -Persistence "IndependentNonPersistent"
    
    Changes the persistence of a hard disk to IndependentNonPersistent.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-HardDisk -HardDisk $harddisk -CapacityGB $extendedCapacity -GuestCredential $guestCred
    
    Extends a hard disk with the specified capacity. The command also extends the disk on the guest OS.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-HardDisk -HardDisk $harddisk -Datastore $datastore
    
    Moves the hard disk to the specified datastore.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-HardDisk -examples".
    For more information, type: "get-help Set-HardDisk -detailed".
    For technical information, type: "get-help Set-HardDisk -full".
    For online help, type: "get-help Set-HardDisk -online"

Set-IScsiHbaTarget
-------------------------

NAME
    Set-IScsiHbaTarget
    
SYNOPSIS
    This cmdlet modifies the configuration of an iSCSI HBA target.
    
    
SYNTAX
    Set-IScsiHbaTarget -Target <IScsiHbaTarget[]> [-ChapType <ChapType>] [-ChapName <String>] [-ChapPassword <String>] [-MutualChapEnabled <Boolean>] [-MutualChapName <String>] 
    [-MutualChapPassword <String>] [-InheritChap <Boolean>] [-InheritMutualChap <Boolean>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of an iSCSI HBA target. The cmdlet modifies the CHAP and Digest properties of an iSCSI HBA target.  You must specify at least one of the 
    CHAP-related (or Mutual CHAP) parameters. Otherwise, an error message is displayed.
    

PARAMETERS
    -Target <IScsiHbaTarget[]>
        Specifies the iSCSI HBA target you want to configure. To identify the target, you can provide an IScsiTarget object or use an <Address>:<Port> string.
        
    -ChapType <ChapType>
        Specifies the type of the CHAP authorization. The valid values are Prohibited, Discouraged, Preferred, and Required. If you set ChapType to Discouraged, Preferred, or Required, then 
        you must specify the ChapPassword parameter as well.
        
    -ChapName <String>
        Specifies the CHAP initiator name if CHAP is enabled.
        
    -ChapPassword <String>
        Specifies the CHAP password if CHAP is enabled.
        
    -MutualChapEnabled [<Boolean>]
        Indicates that mutual CHAP is enabled. In this case, you must specify the MutualChapPassword parameter as well.
        
    -MutualChapName <String>
        Specifies the Mutual CHAP initiator name if CHAP is enabled.
        
    -MutualChapPassword <String>
        Specifies the Mutual CHAP password if CHAP is enabled.
        
    -InheritChap [<Boolean>]
        Indicates that the CHAP setting is inherited from the iSCSI HBA device.
        
    -InheritMutualChap [<Boolean>]
        Indicates that the Mutual CHAP setting is inherited from the iSCSI HBA device.
        
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
    
    C:\PS>Get-IScsiHbaTarget -Address "10.23.84.73" -Type Static | Set-IScsiHbaTarget -ChapType Prohibited
    
    Retrieves the targets of type Static on the specified address and sets their CHAP type to Prohibited.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$target = Get-IScsiHbaTarget -Address "10.23.84.73" -Type Send
    
    Set-IScsiHbaTarget -Target $target -ChapType Required -ChapPassword pass1 -MutualChapEnabled -MutualChapPassword pass2
    
    Modifies the CHAP and Mutual CHAP settings of the targets of type Send on the specified address.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-IScsiHbaTarget -examples".
    For more information, type: "get-help Set-IScsiHbaTarget -detailed".
    For technical information, type: "get-help Set-IScsiHbaTarget -full".
    For online help, type: "get-help Set-IScsiHbaTarget -online"

Set-NetworkAdapter
-------------------------

NAME
    Set-NetworkAdapter
    
SYNOPSIS
    This cmdlet modifies the configuration of the virtual network adapter.
    
    
SYNTAX
    Set-NetworkAdapter [-NetworkAdapter] <NetworkAdapter[]> [-MacAddress <String>] [-NetworkName <String>] [-StartConnected <Boolean>] [-Connected <Boolean>] [-WakeOnLan <Boolean>] [-Type 
    <VirtualNetworkAdapterType>] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-NetworkAdapter [-NetworkAdapter] <NetworkAdapter[]> [-MacAddress <String>] [-StartConnected <Boolean>] [-Connected <Boolean>] [-WakeOnLan <Boolean>] [-Type 
    <VirtualNetworkAdapterType>] -PortId <String> -DistributedSwitch <DistributedSwitch> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-NetworkAdapter [-NetworkAdapter] <NetworkAdapter[]> -Portgroup <VirtualPortGroupBase> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of the virtual network adapter. You can change the MAC address and the network name, and to configure the Connected, StartConnected, and WakeOnLan 
    properties of the adapter.
    

PARAMETERS
    -NetworkAdapter <NetworkAdapter[]>
        Specifies the virtual network adapter you want to configure.
        
    -MacAddress <String>
        Specifies an optional MAC address for the virtual network adapter.
        
    -NetworkName <String>
        Specifies the name of the network to which you want to connect the virtual network adapter. Specifying a distributed port group name is obsolete. Use the Portgroup parameter instead.
        
    -StartConnected [<Boolean>]
        If the value is $true, the virtual network adapter starts connected when its associated virtual machine powers on. If the value is $false, it starts disconnected.
        
    -Connected [<Boolean>]
        If the value is $true, the virtual network adapter is connected after its creation. If the value is $false, it is disconnected.
        
    -WakeOnLan [<Boolean>]
        Indicates that wake-on-LAN is enabled on the virtual network adapter.
        
    -Type <VirtualNetworkAdapterType>
        Specifies the type of the network adapter. The valid types are e1000, Flexible, Vmxnet, EnhancedVmxnet, and Vmxnet3, and Unknown.
        
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
        
    -PortId <String>
        Specifies the port of the virtual switch to which you want to connect the network adapter. Use this parameter only if the DistributedSwitch parameter is specified.
        
    -DistributedSwitch <DistributedSwitch>
        Specifies a virtual switch to which you want to connect the network adapter.
        
    -Portgroup <VirtualPortGroupBase>
        Specifies a standard or a distributed port group to which you want to connect the network adapter.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM VM | Get-NetworkAdapter | Set-NetworkAdapter -MacAddress '00:50:56:a1:00:00' -WakeOnLan:$true
    
    Configures the  Mac address and the WakeOnLan setting of a virtual network adapter.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VM VM | Get-NetworkAdapter | Set-NetworkAdapter -Type EnhancedVmxnet
    
    Sets the type of the virtual network adapter.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VM VM | Get-NetworkAdapter | Set-NetworkAdapter -Connected:$true
    
    Sets the connection state of the virtual network adapter.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myNetworkAdapters = Get-VM | Get-NetworkAdapter -Name "Network adapter 1"
    $myVDPortGroup = Get-VDPortgroup -Name MyVDPortGroup
    Set-NetworkAdapter -NetworkAdapter $myNetworkAdapters -Portgroup $myVDPortGroup
    
    Retrieves all network adapters named "Network adapter 1" from all virtual machines and connects them to the specified distributed port group.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$myNetworkAdapter = Get-VM -Name MyVM | Get-NetworkAdapter -Name "Network adapter 1"
    $myVDSwitch = Get-VDSwitch -Name MyVDSwitch
    Set-NetworkAdapter -NetworkAdapter $myNetworkAdapter -DistributedSwitch $MyVDSwitch -PortId 100
    
    Retrieves the network adapter named "Network adapter 1" added to the specified virtual machine and connects it to the specified port on the specified distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-NetworkAdapter -examples".
    For more information, type: "get-help Set-NetworkAdapter -detailed".
    For technical information, type: "get-help Set-NetworkAdapter -full".
    For online help, type: "get-help Set-NetworkAdapter -online"

Set-NicTeamingPolicy
-------------------------

NAME
    Set-NicTeamingPolicy
    
SYNOPSIS
    This cmdlet modifies the specified NIC teaming policy.
    
    
SYNTAX
    Set-NicTeamingPolicy [-VirtualSwitchPolicy] <NicTeamingVirtualSwitchPolicy[]> [-BeaconInterval <Int32>] [-LoadBalancingPolicy <LoadBalancingPolicy>] [-NetworkFailoverDetectionPolicy 
    <NetworkFailoverDetectionPolicy>] [-NotifySwitches <Boolean>] [-FailbackEnabled <Boolean>] [-MakeNicActive <PhysicalNic[]>] [-MakeNicStandby <PhysicalNic[]>] [-MakeNicUnused 
    <PhysicalNic[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-NicTeamingPolicy [-VirtualPortGroupPolicy] <NicTeamingVirtualPortGroupPolicy[]> [-InheritLoadBalancingPolicy <Boolean>] [-InheritNetworkFailoverDetectionPolicy <Boolean>] 
    [-InheritNotifySwitches <Boolean>] [-InheritFailback <Boolean>] [-InheritFailoverOrder <Boolean>] [-LoadBalancingPolicy <LoadBalancingPolicy>] [-NetworkFailoverDetectionPolicy 
    <NetworkFailoverDetectionPolicy>] [-NotifySwitches <Boolean>] [-FailbackEnabled <Boolean>] [-MakeNicActive <PhysicalNic[]>] [-MakeNicStandby <PhysicalNic[]>] [-MakeNicUnused 
    <PhysicalNic[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified NIC teaming policy. You can change the load balancing and failover settings. Default NIC teaming policies are set for the entire virtual switch and 
    can be overridden at port group level.
    

PARAMETERS
    -VirtualSwitchPolicy <NicTeamingVirtualSwitchPolicy[]>
        Specifies the virtual switch policy to configure.
        
    -BeaconInterval <Int32>
        Specifies the interval at which the server sends out beacon probes on all NICs in the team. The value must be a positive integer. This parameter is used when the value of the 
        NetworkFailoverDetectionPolicy parameter is BeaconProbing.
        
    -LoadBalancingPolicy <LoadBalancingPolicy>
        Determines how network traffic is distributed between the network adapters assigned to a switch. The following values are valid:
        
        LoadBalanceIP - Route based on IP hash. Choose an uplink based on a hash of the source and destination IP addresses of each packet. For non-IP packets, whatever is at those offsets 
        is used to compute the hash.
        
        LoadBalanceSrcMac - Route based on source MAC hash. Choose an uplink based on a hash of the source Ethernet.
        
        
        LoadBalanceSrcId - Route based on the originating port ID. Choose an uplink based on the virtual port where the traffic entered the virtual switch.
        
        ExplicitFailover - Always use the highest order uplink from the list of Active adapters that passes failover detection criteria.
        
    -NetworkFailoverDetectionPolicy <NetworkFailoverDetectionPolicy>
        Specifies how to reroute traffic in the event of an adapter failure. The following values are valid:
        
        LinkStatus - Relies solely on the link status that the network adapter provides. This option detects failures, such as cable pulls and physical switch power failures, but not 
        configuration errors, such as a physical switch port being blocked by spanning tree or misconfigured to the wrong VLAN or cable pulls on the other side of a physical switch.
        
        BeaconProbing - Sends out and listens for beacon probes on all NICs in the team and uses this information, in addition to link status, to determine link failure. This option detects 
        many of the failures mentioned above that are not detected by link status alone.
        
    -NotifySwitches [<Boolean>]
        Indicates that whenever a virtual NIC is connected to the virtual switch or whenever that virtual NIC's traffic is routed over a different physical NIC in the team because of a 
        failover event, a notification is sent over the network to update the lookup tables on the physical switches.
        
    -FailbackEnabled [<Boolean>]
        Specifies how a physical adapter is returned to active duty after recovering from a failure. If the value is $true, the adapter is returned to active duty immediately on recovery, 
        displacing the standby adapter that took over its slot, if any. If the value is $false, a failed adapter is left inactive even after recovery until another active adapter fails, 
        requiring its replacement.
        
    -MakeNicActive <PhysicalNic[]>
        Specifies the adapters you want to continue to use when the network adapter connectivity is available and active.
        
    -MakeNicStandby <PhysicalNic[]>
        Specifies the adapters you want to use if one of the active adapter's connectivity is unavailable.
        
    -MakeNicUnused <PhysicalNic[]>
        Specifies the adapters you do not want to use.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -VirtualPortGroupPolicy <NicTeamingVirtualPortGroupPolicy[]>
        Specifies the virtual port group policy to configure.
        
    -InheritLoadBalancingPolicy [<Boolean>]
        Indicates that the value of the LoadBalancingPolicy parameter is inherited from the virtual switch.
        
    -InheritNetworkFailoverDetectionPolicy [<Boolean>]
        Indicates that the value of the NetworkFailoverDetectionPolicy parameter is inherited from the virtual switch.
        
    -InheritNotifySwitches [<Boolean>]
        Indicates that the value of the NotifySwitches parameter is inherited from the virtual switch.
        
    -InheritFailback [<Boolean>]
        Indicates that the value of the FailbackEnabled parameter is inherited from the virtual switch.
        
    -InheritFailoverOrder [<Boolean>]
        Indicates that the value of the MakeNicActive, MakeNicStandBy, and MakeNicUnused parameters are inherited from the virtual switch.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$policy = Get-VirtualSwitch -VMHost (Get-VMHost *.128) -Name vSwitch1 | Get-NicTeamingPolicy
    
    $policy | Set-NicTeamingPolicy -LoadBalancingPolicy LoadBalanceSrcMac
    
    Configures the NicTeaming policy  of the vSwitch1 virtual switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-NicTeamingPolicy -examples".
    For more information, type: "get-help Set-NicTeamingPolicy -detailed".
    For technical information, type: "get-help Set-NicTeamingPolicy -full".
    For online help, type: "get-help Set-NicTeamingPolicy -online"

Set-OSCustomizationNicMapping
-------------------------

NAME
    Set-OSCustomizationNicMapping
    
SYNOPSIS
    This cmdlet modifies the provided OS customization NIC mappings.
    
    
SYNTAX
    Set-OSCustomizationNicMapping -OSCustomizationNicMapping <OSCustomizationNicMapping[]> [-Position <Int32>] [-Server <VIServer[]>] [-IpMode <OSCustomizationIPMode>] 
    [-VCApplicationArgument <String>] [[-IpAddress] <String>] [[-SubnetMask] <String>] [[-DefaultGateway] <String>] [-AlternateGateway <String>] [[-Dns] <String[]>] [-Wins <String[]>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-OSCustomizationNicMapping -OSCustomizationNicMapping <OSCustomizationNicMapping[]> [-NetworkAdapterMac <String>] [-Server <VIServer[]>] [-IpMode <OSCustomizationIPMode>] 
    [-VCApplicationArgument <String>] [[-IpAddress] <String>] [[-SubnetMask] <String>] [[-DefaultGateway] <String>] [-AlternateGateway <String>] [[-Dns] <String[]>] [-Wins <String[]>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the provided OS customization NIC mappings.  If the parent spec of the provided NIC mapping is a server-side spec, it is updated on the server. If the parent spec 
    is client-side, the reference that is kept in the memory is updated, but the variable that is passed to the cmdlet is not modified.
    

PARAMETERS
    -OSCustomizationNicMapping <OSCustomizationNicMapping[]>
        Specifies the OS customization NIC mapping you want to configure.
        
    -Position <Int32>
        Specifies the position of the mapping you want to modify.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -IpMode <OSCustomizationIPMode>
        Specifies the IP configuration mode. The valid values are UseDhcp, PromptUser, UseVCApplication, and UseStaticIP.
        
    -VCApplicationArgument <String>
        Specifies a new argument you want to pass to VCApplication in order to obtain an IP address.
        
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
        
    -NetworkAdapterMac <String>
        Specifies the MAC address of the network adapter to which you want to map the OS customization specification.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-OSCustomizationSpec Spec | Get-OSCustomizationNicMapping | Set-OSCustomizationNicMapping -IpAddress 10.0.0.2
    
    Modifies the IP address of the specified NIC mapping that uses static IP mode.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-OSCustomizationSpec Spec | Get-OSCustomizationNicMapping | Set-OSCustomizationNicMapping -VcApplicationArgument "subnet2"
    
    Modifies the VCApplication argument of the specified NIC mapping.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-OSCustomizationSpec Spec | Get-OSCustomizationNicMapping | Set-OSCustomizationNicMapping -IpMode UseStaticIp -IpAddress 10.10.0.1 -SubnetMask 255.255.255.0 -DefaultGateway 
    10.10.0.1 -AlternateGateway 10.10.0.1 -Dns 10.10.150.1 -PrimaryWins 10.10.150.2
    
    Modifies the attributes of a NIC mapping.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Set-OSCustomizationNicMapping -OSCustomizationNicMapping $nicMapping1, $nicMapping2 -IPMode UseVCApplication -VcApplicationArgument "subnet2"
    
    Modifies the specified NIC mapping using VCApplication.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-OSCustomizationNicMapping -examples".
    For more information, type: "get-help Set-OSCustomizationNicMapping -detailed".
    For technical information, type: "get-help Set-OSCustomizationNicMapping -full".
    For online help, type: "get-help Set-OSCustomizationNicMapping -online"

Set-OSCustomizationSpec
-------------------------

NAME
    Set-OSCustomizationSpec
    
SYNOPSIS
    This cmdlet modifies the specified OS customization specification.
    
    
SYNTAX
    Set-OSCustomizationSpec [-OSCustomizationSpec] <OSCustomizationSpec[]> [-NewSpec <OSCustomizationSpec>] [-Type <OSCustomizationSpecType>] [-Server <VIServer[]>] [-Name <String>] 
    [-DnsServer <String[]>] [-DnsSuffix <String[]>] [-Domain <String>] [-NamingScheme <String>] [-NamingPrefix <String>] [-Description <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-OSCustomizationSpec [-FullName <String>] [-OrgName <String>] [-ChangeSID <Boolean>] [-DeleteAccounts <Boolean>] [-OSCustomizationSpec] <OSCustomizationSpec[]> [-NewSpec 
    <OSCustomizationSpec>] [-Type <OSCustomizationSpecType>] [-Server <VIServer[]>] [-Name <String>] [-DnsServer <String[]>] [-DnsSuffix <String[]>] [-GuiRunOnce <String[]>] [-AdminPassword 
    <String>] [-TimeZone <String>] [-AutoLogonCount <Int32>] [-Domain <String>] [-Workgroup <String>] [-DomainCredentials <PSCredential>] [-DomainUsername <String>] [-DomainPassword 
    <String>] [-ProductKey <String>] [-NamingScheme <String>] [-NamingPrefix <String>] [-Description <String>] [-LicenseMode <LicenseMode>] [-LicenseMaxConnections <Int32>] [-WhatIf] 
    [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified OS customization specification. The specification to be updated is identified by one or both of the Name and Spec parameters. If a Windows 
    specification is to be updated, one of the  Domain and Workgroup parameters must be provided. If a Linux specification is to be updated, the Domain parameter must be provided.
    

PARAMETERS
    -OSCustomizationSpec <OSCustomizationSpec[]>
        Specifies the specification you want to modify.
        
    -NewSpec <OSCustomizationSpec>
        If no other parameters are provided, this parameter specifies a specification from which to retrieve information for the updated specification.
        
    -Type <OSCustomizationSpecType>
        Sets the type of the OS customization specification. The valid values are Persistent and NonPersistent.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -Name <String>
        Specifies a new name for the OS customization specification.
        
    -DnsServer <String[]>
        Specifies the DNS server. This parameter applies only to Linux operating systems.
        
    -DnsSuffix <String[]>
        Specifies the DNS suffix. This parameter applies only to Linux operating systems.
        
    -Domain <String>
        Specifies the domain name.
        
    -NamingScheme <String>
        Specifies the naming scheme for the virtual machine. The valid values are Custom, Fixed, Prefix, and Vm.
        
    -NamingPrefix <String>
        The behavior of this parameter is related to the customization scheme. If a Custom customization scheme is specified, NamingPrefix is an optional argument that is passed to the 
        utility for this IP address. The value of this field is defined by the user in the script. If a Fixed customization scheme is specified, NamingPrefix should indicate the name of the 
        virtual machine. If a Prefix customization scheme is set, NamingPrefix indicates the prefix to which a unique number is appended.
        
    -Description <String>
        Provides a new description for the specification.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -FullName <String>
        Specifies the administrator's full name. This parameter applies only to Windows operating systems.
        
    -OrgName <String>
        Specifies the name of the organization to which the administrator belongs.
        
    -ChangeSID [<Boolean>]
        Indicates that the customization should modify the system security identifier (SID). This parameter applies only to Windows operating systems.
        
    -DeleteAccounts [<Boolean>]
        Indicates that you want to delete all user accounts. This parameter applies only to Windows operating systems.
        
    -GuiRunOnce <String[]>
        Provides a list of commands to run after first user login. This parameter applies only to Windows operating systems.
        
    -AdminPassword <String>
        Specifies the new OS administrator's password. This parameter applies only to Windows operating systems.
        
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
        Specifies the number of times the virtual machine should automatically login as an administrator. The valid values are in the range between 0 and Int32.MaxValue. Specifying 0 
        disables auto log-on. This parameter applies only to Windows operating systems.
        
    -Workgroup <String>
        Specifies the workgroup. This parameter applies only to Windows operating systems.
        
    -DomainCredentials <PSCredential>
        Specifies credentials for authentication with the specified domain. This parameter applies only to Windows operating systems.
        
    -DomainUsername <String>
        Specifies a username for authentication with the specified domain. This parameter applies only to Windows operating systems.
        
    -DomainPassword <String>
        Specifies a password for authentication with the specified domain. This parameter applies only to Windows operating systems.
        
    -ProductKey <String>
        Specifies the MS product key. If the guest OS version is earlier than Vista, this parameter is required in order to make the customization unattended. For Windows Vista and later, 
        the OS customization is unattended no matter if the ProductKey parameter is set.
        
    -LicenseMode <LicenseMode>
        Specifies the license mode of the Windows 2000/2003 guest operating system. The valid values are Perseat, Perserver, and NotSpecified. If Perserver is set, use the 
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
    
    C:\PS>Set-OSCustomizationSpec Spec -Description 'This is a test OS customization specification.'
    
    Updates the description of the Spec OS customization specification.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-OSCustomizationSpec -examples".
    For more information, type: "get-help Set-OSCustomizationSpec -detailed".
    For technical information, type: "get-help Set-OSCustomizationSpec -full".
    For online help, type: "get-help Set-OSCustomizationSpec -online"

Set-PowerCLIConfiguration
-------------------------

NAME
    Set-PowerCLIConfiguration
    
SYNOPSIS
    This cmdlet modifies the vSphere PowerCLI configuration.
    
    
SYNTAX
    Set-PowerCLIConfiguration [-ProxyPolicy <ProxyPolicy>] [-DefaultVIServerMode <DefaultVIServerMode>] [-InvalidCertificateAction <BadCertificateAction>] [-ParticipateInCeip <Boolean>] 
    [-CEIPDataTransferProxyPolicy <ProxyPolicy>] [-DisplayDeprecationWarnings <Boolean>] [-WebOperationTimeoutSeconds <Int32>] [-VMConsoleWindowBrowser <String>] [-Scope 
    <ConfigurationScope>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the vSphere PowerCLI configuration.
    

PARAMETERS
    -ProxyPolicy <ProxyPolicy>
        Specifies whether vSphere PowerCLI uses a system proxy server to connect to the vCenter Server system. The valid values are NoProxy and UseSystemProxy.
        
    -DefaultVIServerMode <DefaultVIServerMode>
        Specifies the server connection mode. The new configuration takes effect immediately after you run the cmdlet. The following values are valid:
        
        - Single - Switching to "single" removes all server connections except the last established one. If no target servers are specified, cmdlets run only on the last connected server.
        
        - Multiple - All servers connected after switching to "multiple" mode are stored together with the current server connection in an array variable. If no target servers are 
        specified, cmdlets run on the servers in the variable.
        
        For more information on default servers, see the description of Connect-VIServer.
        
    -InvalidCertificateAction <BadCertificateAction>
        Define the action to take when an attempted connection to a server fails due to a certificate error. The following values are valid:
        
        Unset - this is the default value and it acts as a “Warn” value for Connect-VIServer and as “Prompt” for “Connect-CloudServer”.
        
        Prompt - if the server certificate is not trusted the cmdlet will prompt you for a course of action before it continues. There are several options:
                    Deny - no connection will be established.
                    Accept for once - accept the connection only for the current PowerCLI session. You will be prompted again if you attempt to connect to the same server from other 
        processes.
                    Accept Permanently - the action will add this certificate as an exception in the “SSL Certificate Exceptions” user list. The Connect-VIServer and Connect-CIServer 
        cmdlets will never prompt again what action to take for this particulate certificate and server.
                    Accept For All Users - same as above, however the exception will be added to all user lists, which is common for all Windows accounts on the current machine.
        
        Fail - the cmdlet will not establish connection if the certificate is not valid.
        
        Ignore - the cmdlet will establish the connection without taking into account that the certificate is invalid.
        
        Warn - the cmdlet will display a warning saying that the certificate is not valid, the reason why it is not considered valid and then will print additional information about the 
        certificate.
        
        For more information about invalid certificates, run 'Get-Help about_invalid_certificates'.
        
    -ParticipateInCeip [<Boolean>]
        Specifies if PowerCLI should send anonymous usage information to VMware. For more information about the Customer Experience Improvement Program (CEIP), see the PowerCLI User's 
        Guide. Setting this option is valid only for the AllUsers and User configuration scopes. Changing this setting requires a restart of PowerCLI before it takes effect.
        
    -CEIPDataTransferProxyPolicy <ProxyPolicy>
        Specifies the proxy policy for the connection through which Customer Experience Improvement Program (CEIP) data is sent to VMware. Setting this option is valid only when 
        ParticipateInCEIP option is set to $true. Changing this setting requires a restart of PowerCLI before it takes effect.
        
    -DisplayDeprecationWarnings [<Boolean>]
        Indicates whether you want to see warnings about deprecated elements.
        
    -WebOperationTimeoutSeconds <Int32>
        Defines the timeout for Web operations. The default value is 300 sec. To specify an infinite operation timeout, pass a negative integer to this parameter. Changing this setting 
        requires a restart of PowerCLI before it takes effect.
        
    -VMConsoleWindowBrowser <String>
        Specifies the Web browser to be used for opening virtual machine console windows (by using the Open-VMConsoleWindow cmdlet). The browser must be 32-bit.
        
    -Scope <ConfigurationScope>
        Specifies the scope of the setting that you want to modify. The parameter accepts Sesstion, User and All Users values.
             *Session - the setting is valid for the current vSphere PowerCLI session only and overrides any User and All Users settings.
             *User - the setting is valid for the current Windows user only, overrides All Users settings, and is applied only if a Session setting cannot be detected.
             *All Users - the setting is valid for all users and is applied only if Session and User settings cannot be detected.
        
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
    
    C:\PS>Set-PowerCLIConfiguration -ProxyPolicy NoProxy -Scope Session
    
    Modifies the proxy policy of vSphere PowerCLI for the Session scope.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-PowerCLIConfiguration -ProxyPolicy NoProxy -DefaultVIServerMode Single
    
    Changes the default server connection mode and the proxy policy of vSphere PowerCLI for the AllUsers scope.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-PowerCLIConfiguration -DefaultVIServerMode 'Single' -Scope ([VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]::User -bor 
    [VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]::AllUsers)
    
    Changes the default server connection mode of vSphere PowerCLI for the User and AllUsers scopes.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-PowerCLIConfiguration -examples".
    For more information, type: "get-help Set-PowerCLIConfiguration -detailed".
    For technical information, type: "get-help Set-PowerCLIConfiguration -full".
    For online help, type: "get-help Set-PowerCLIConfiguration -online"

Set-ResourcePool
-------------------------

NAME
    Set-ResourcePool
    
SYNOPSIS
    This cmdlet modifies the properties of the specified resource pool.
    
    
SYNTAX
    Set-ResourcePool [-ResourcePool] <ResourcePool[]> [-Name <String>] [-CpuExpandableReservation <Boolean>] [-CpuLimitMhz <Int64>] [-CpuReservationMhz <Int64>] [-CpuSharesLevel 
    <SharesLevel>] [-MemExpandableReservation <Boolean>] [-MemLimitMB <Int64>] [-MemLimitGB <Decimal>] [-MemReservationMB <Int64>] [-MemReservationGB <Decimal>] [-MemSharesLevel 
    <SharesLevel>] [-NumCpuShares <Int32>] [-NumMemShares <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified resource pool.
    

PARAMETERS
    -ResourcePool <ResourcePool[]>
        Specifies the resource pool you want to configure.
        
    -Name <String>
        Specifies a new name for the resource pool.
        
    -CpuExpandableReservation [<Boolean>]
        Indicates that the CPU reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
        
    -CpuLimitMhz <Int64>
        Specifies a CPU usage limit in MHz. If this parameter is set, utilization will not exceed this limit even if there are available resources.
        
    -CpuReservationMhz <Int64>
        Specifies the guaranteed available CPU in MHz.
        
    -CpuSharesLevel <SharesLevel>
        Specifies the CPU allocation level for this pool. This property is used in relative allocation between resource consumers. This parameter accepts Custom, High, Low, and Normal 
        values.
        
    -MemExpandableReservation [<Boolean>]
        Indicates that the memory reservation can grow beyond the specified value if the parent resource pool has unreserved resources.
        
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
        Specifies the memory allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter accepts Custom, High, Low, and 
        Normal values.
        
    -NumCpuShares <Int32>
        Specifies the CPU allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless CpuSharesLevel is 
        set to Custom.
        
    -NumMemShares <Int32>
        Specifies the memory allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless MemSharesLevel 
        is set to Custom.
        
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
    
    C:\PS>Set-ResourcePool -Resourcepool Resourcepool -NumCpuShares  512 -MemLimitGB 4
    
    Sets the CPU allocation level and the limit on memory usage in GB for the resource pool named Resourcepool.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-ResourcePool -examples".
    For more information, type: "get-help Set-ResourcePool -detailed".
    For technical information, type: "get-help Set-ResourcePool -full".
    For online help, type: "get-help Set-ResourcePool -online"

Set-ScsiController
-------------------------

NAME
    Set-ScsiController
    
SYNOPSIS
    This cmdlet modifies the specified SCSI controllers.
    
    
SYNTAX
    Set-ScsiController [-ScsiController] <ScsiController[]> [-BusSharingMode <ScsiBusSharingMode>] [-Type <ScsiControllerType>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified SCSI controllers. Set-ScsiController cannot set both the Type and BusSharing parameters at the same time. First run the cmdlet to set the type and 
    then run it again to configure the bus sharing mode.
    

PARAMETERS
    -ScsiController <ScsiController[]>
        Specifies the SCSI controller you want to modify.
        
    -BusSharingMode <ScsiBusSharingMode>
        Specifies the bus sharing mode of the SCSI controller. The valid values are NoSharing, Physical, and Virtual.
        
    -Type <ScsiControllerType>
        Specifies the type of the SCSI controller. The valid values are ParaVirtual, VirtualBusLogic, VirtualLsiLogic, and VirtualLsiLogicSAS.
        
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
    
    C:\PS>Get-ScsiController -VM VM | Set-ScsiController -BusSharingMode Physical
    
    Configures the bus sharing mode of the SCSI controllers of a virtual machine to Physical mode.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$scsiController = Get-HardDisk -VM VM | Select -First 1 | Get-ScsiController
    
    Set-ScsiController -ScsiController $scsiController -Type VirtualLsiLogic
    
    Changes the type of the SCSI controller of the first hard disk of the VM virtual machine to VirtualLsiLogic.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-ScsiController -examples".
    For more information, type: "get-help Set-ScsiController -detailed".
    For technical information, type: "get-help Set-ScsiController -full".
    For online help, type: "get-help Set-ScsiController -online"

Set-ScsiLun
-------------------------

NAME
    Set-ScsiLun
    
SYNOPSIS
    This cmdlet modifies the configuration of a SCSI device.
    
    
SYNTAX
    Set-ScsiLun [[-MultipathPolicy] <ScsiLunMultipathPolicy>] [[-PreferredPath] <ScsiLunPath>] [-ScsiLun] <ScsiLun[]> [-CommandsToSwitchPath <Int32>] [-BlocksToSwitchPath <Int32>] 
    [-NoCommandsSwitch] [-NoBlocksSwitch] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of a SCSI device.
    

PARAMETERS
    -MultipathPolicy <ScsiLunMultipathPolicy>
        Specifies the policy that the logical unit must use when choosing a path. The following values are valid:
        
        Fixed - uses the preferred path whenever possible.
        RoundRobin - load balance.
        MostRecentlyUsed - uses the most recently used path.
        Unknown - supported only when connected to vCenter Server 4.1/ESX 4.1.
        
        Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -PreferredPath <ScsiLunPath>
        Specifies the preferred path to access the SCSI logical unit. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -ScsiLun <ScsiLun[]>
        Specifies the SCSI device you want to configure.
        
    -CommandsToSwitchPath <Int32>
        Specifies the maximum number of I/O requests to be issued on a given path before the system tries to select a different path. Modifying this setting affects all ScsiLun devices that 
        are connected to the same ESX host. The default value is 50. Setting this parameter to zero (0) disables switching based on commands. This parameter is not supported on vCenter 
        Server 4.x.
        
    -BlocksToSwitchPath <Int32>
        Specifies the maximum number of I/O blocks to be issued on a given path before the system tries to select a different path. Modifying this setting affects all ScsiLun devices that 
        are connected to the same ESX/ESXi host. The default value is 2048. Setting this parameter to zero (0) disables switching based on blocks.
        
    -NoCommandsSwitch
        Indicates that switching based on commands is disabled. Not supported on vCenter Server 4.x.
        
    -NoBlocksSwitch
        Indicates that switching based on blocks is disabled. Not supported on vCenter Server 4.x.
        
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
    
    C:\PS>$scsilun = Get-ScsiLun -VMHost 10.23.123.100 -LunType disk
    
    Set-ScsiLun -ScsiLun $scsilun -CommandsToSwitchPath 100
    
    Configures the SCSI Lun device of the virtual machine host, so that the maximum number of I/O requests to be issued before the system tries to select a different path is 100.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-ScsiLun -examples".
    For more information, type: "get-help Set-ScsiLun -detailed".
    For technical information, type: "get-help Set-ScsiLun -full".
    For online help, type: "get-help Set-ScsiLun -online"

Set-ScsiLunPath
-------------------------

NAME
    Set-ScsiLunPath
    
SYNOPSIS
    This cmdlet configures a vmhba path to a SCSI device.
    
    
SYNTAX
    Set-ScsiLunPath [[-Active] <Boolean>] [-ScsiLunPath] <ScsiLunPath[]> [-Preferred] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures a vmhba path to a SCSI device.
    

PARAMETERS
    -Active [<Boolean>]
        Indicates that the specified path is active.
        
    -ScsiLunPath <ScsiLunPath[]>
        Specifies a path to the SCSI logical unit you want to configure.
        
    -Preferred
        Indicates that the specified path is preferred. Only one path can be preferred, so when a path is made preferred, the preference is removed from the previously preferred path.
        
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
    
    C:\PS>$scsilun = Get-ScsiLun -VMHost 10.23.123.100 -LunType disk
    
    $scsipath = Get-ScsiLunPath -ScsiLun $scsilun
    
    Set-ScsiLunPath -ScsiLunPath $scsipath -Preferred $true
    
    Sets the specified SCSI Lun path as preferred.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-ScsiLunPath -examples".
    For more information, type: "get-help Set-ScsiLunPath -detailed".
    For technical information, type: "get-help Set-ScsiLunPath -full".
    For online help, type: "get-help Set-ScsiLunPath -online"

Set-SecurityPolicy
-------------------------

NAME
    Set-SecurityPolicy
    
SYNOPSIS
    This cmdlet modifies the security policy for virtual port groups or the default port security policy for virtual switches.
    
    
SYNTAX
    Set-SecurityPolicy [-VirtualSwitchPolicy] <VirtualSwitchSecurityPolicy[]> [-AllowPromiscuous <Boolean>] [-ForgedTransmits <Boolean>] [-MacChanges <Boolean>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    Set-SecurityPolicy [-VirtualPortGroupPolicy] <VirtualPortgroupSecurityPolicy[]> [-AllowPromiscuousInherited <Boolean>] [-ForgedTransmitsInherited <Boolean>] [-MacChangesInherited 
    <Boolean>] [-AllowPromiscuous <Boolean>] [-ForgedTransmits <Boolean>] [-MacChanges <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the security policy for virtual port groups or the default port security policy for virtual switches. Specifying a parameter automatically changes the parameter's 
    Inherited setting to 'false'.  Specifying the parameter's Inherited setting as 'true' automatically applies the switch level security policy to the parameter.
    

PARAMETERS
    -VirtualSwitchPolicy <VirtualSwitchSecurityPolicy[]>
        Specifies the virtual switch security policy that you want to configure.
        
    -AllowPromiscuous [<Boolean>]
        Specifies whether promiscuous mode is enabled for the corresponding virtual port group or switch.
        
    -ForgedTransmits [<Boolean>]
        Specifies whether forged transmits are enabled for the corresponding virtual port group or switch.
        
    -MacChanges [<Boolean>]
        Specifies whether MAC address changes are enabled for the corresponding virtual port group or switch.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -VirtualPortGroupPolicy <VirtualPortgroupSecurityPolicy[]>
        Specifies the virtual port group security policy that you want to configure.
        
    -AllowPromiscuousInherited [<Boolean>]
        Specifies whether the AllowPromiscuous setting is inherited from the parent virtual switch.
        
    -ForgedTransmitsInherited [<Boolean>]
        Specifies whether the ForgedTransmits setting is inherited from the parent virtual switch.
        
    -MacChangesInherited [<Boolean>]
        Specifies whether the MacChanges setting is inherited from the parent virtual switch.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VirtualSwitch -Name "MyVirtualSwitch" | Get-SecurityPolicy | Set-SecurityPolicy -MacChanges $false
    
    Retrieves a virtual switch named "MyVirtualSwitch" and updates its security policy to forbid MAC address changes.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VirtualPortgroup -Name "MyVirtualPortGroup" | Get-SecurityPolicy | Set-SecurityPolicy -ForgedTransmitsInherited $true
    
    Retrieves a virtual port group named "MyVirtualPortGroup" and updates the security policy to inherit the setting value for controlling outbound frames filtering by MAC address from its 
    parent.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-SecurityPolicy -examples".
    For more information, type: "get-help Set-SecurityPolicy -detailed".
    For technical information, type: "get-help Set-SecurityPolicy -full".
    For online help, type: "get-help Set-SecurityPolicy -online"

Set-Snapshot
-------------------------

NAME
    Set-Snapshot
    
SYNOPSIS
    This cmdlet modifies the specified virtual machine snapshot.
    
    
SYNTAX
    Set-Snapshot [-Snapshot] <Snapshot[]> [-Name <String>] [-Description <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the name and the description of the specified virtual machine snapshot.
    

PARAMETERS
    -Snapshot <Snapshot[]>
        Specifies the snapshot whose properties you want to change.
        
    -Name <String>
        Specifies a new name for the snapshot.
        
    -Description <String>
        Provides a new description for the snapshot.
        
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
    
    C:\PS>Set-Snapshot -Snapshot $snapshot -Name BeforePatch -Description "Before windows update"
    
    Sets the name and the description of the snapshot in the $snapshot variable.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VM | Get-Snapshot -Name "InitialState" | Set-Snapshot -Description "This snapshot is created right after the OS installation."
    
    Updates the description of all snapshots with name InitialState, from all virtual machines.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Snapshot -examples".
    For more information, type: "get-help Set-Snapshot -detailed".
    For technical information, type: "get-help Set-Snapshot -full".
    For online help, type: "get-help Set-Snapshot -online"

Set-StatInterval
-------------------------

NAME
    Set-StatInterval
    
SYNOPSIS
    This cmdlet changes the statistics interval that is specified by the provided parameters.
    
    
SYNTAX
    Set-StatInterval [[-SamplingPeriodSecs] <Int32>] [[-StorageTimeSecs] <Int32>] [-Interval] <StatInterval[]> [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet changes the statistics interval that is specified by the provided parameters.
    

PARAMETERS
    -SamplingPeriodSecs <Int32>
        Specifies a new sampling period in seconds.
        
    -StorageTimeSecs <Int32>
        Specifies a new time period in seconds, for which the statistics information is kept.
        
    -Interval <StatInterval[]>
        Specifies the statistics interval you want to change.
        
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
    
    C:\PS>Set-StatInterval -Interval "past day" -StorageTimeSecs 700000
    
    Changes the storage time of the "past day" statistics interval.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-StatInterval -examples".
    For more information, type: "get-help Set-StatInterval -detailed".
    For technical information, type: "get-help Set-StatInterval -full".
    For online help, type: "get-help Set-StatInterval -online"

Set-Tag
-------------------------

NAME
    Set-Tag
    
SYNOPSIS
    This cmdlet modifies the specified tags.
    
    
SYNTAX
    Set-Tag [-Tag] <Tag[]> [-Name <String>] [-Description <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified tags.
    

PARAMETERS
    -Tag <Tag[]>
        Specifies the tags that you want to configure.
        
    -Name <String>
        Specifies the name to which the specified tags will be renamed.
        
    -Description <String>
        Specifies the new description to set to the specified tags.
        
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
    
    C:\PS>Get-Tag -Name "MyTag" | Set-Tag -Name "MyNewTag" -Description "MyNewDescription"
    
    Retrieves a tag named "MyTag" and updates its name and description.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Tag -examples".
    For more information, type: "get-help Set-Tag -detailed".
    For technical information, type: "get-help Set-Tag -full".
    For online help, type: "get-help Set-Tag -online"

Set-TagCategory
-------------------------

NAME
    Set-TagCategory
    
SYNOPSIS
    This cmdlet modifies the specified tag categories.
    
    
SYNTAX
    Set-TagCategory [-Category] <TagCategory[]> [-Name <String>] [-Description <String>] [-Cardinality <Cardinality>] [-AddEntityType <String[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified tag categories. The cardinality of a tag category can only be changed from "Single" to "Multiple".
    

PARAMETERS
    -Category <TagCategory[]>
        Specifies the tag categories that you want to configure.
        
    -Name <String>
        Specifies the name to which the specified tag categories will be renamed.
        
    -Description <String>
        Specifies the new description to set to the tag categories.
        
    -Cardinality <Cardinality>
        Specifies the cardinality of the tag category. If not specified, the default value is "Single".
        
        "Single" means that only a single tag from this category can be assigned to a specific object at a time. "Multiple" means that more than one tag from this category can be assigned 
        to a specific object at a time.
        
        The only value that is accepted for this parameter is "Multiple".
        
    -AddEntityType <String[]>
        Adds the specified entity types to the list of types that tags in this category are applicable to. If you specify "All" as a value, the tags will be applicable to all entity types.
        
        This parameter accepts both PowerCLI type names and vSphere API type names. The valid PowerCLI type names are: Cluster, Datacenter, Datastore, DatastoreCluster, 
        DistributedPortGroup, DistributedSwitch, Folder, ResourcePool, VApp, VirtualPortGroup, VirtualMachine, VM, VMHost.
        
        For vSphere type names that are not vCenter Server API type names, a namespace prefix is used.
        The format is: <namespace>/<type>
        Example: 'vco/WorkflowItem'
        
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
    
    C:\PS>Get-TagCategory "MyTagCategory" | Set-TagCategory -Name "MyNewCategoryName" -Description "Update MyTagCategory description"
    
    Retrieves a tag category named "MyTagCategory" and updates its name and description.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myTagCategory = Get-TagCategory "MyTagCategory"
    Set-TagCategory -Category $myTagCategory -Cardinality Multiple -AddEntityType "VirtualMachine"
    
    Retrieves a tag category named "MyTagCategory" and updates it by allowing more than one of its tags to be assigned to a specific object at a time, as well as adding "VirtualMachine" to 
    the set of applicable entity types.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-TagCategory -examples".
    For more information, type: "get-help Set-TagCategory -detailed".
    For technical information, type: "get-help Set-TagCategory -full".
    For online help, type: "get-help Set-TagCategory -online"

Set-Template
-------------------------

NAME
    Set-Template
    
SYNOPSIS
    This cmdlet modifies the specified virtual machine template.
    
    
SYNTAX
    Set-Template [-Template] <Template[]> [-Name <String>] [-ToVM] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet changes the name and the description of a virtual machine template according to the provided parameters. The cmdlet can convert the template to a virtual machine if the 
    value of the ToVM parameter is $true.
    

PARAMETERS
    -Template <Template[]>
        Specifies the template whose properties you want to change.
        
    -Name <String>
        Specifies a new name for the template.
        
    -ToVM
        Indicates that the template is to be converted to a virtual machine.
        
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
    
    C:\PS>Set-Template -Template $template -Name Template2
    
    Renames the template saved in the $template variable to Template2.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vm = Set-Template -Template $template -ToVM
    
    Converts a template to a virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Template -examples".
    For more information, type: "get-help Set-Template -detailed".
    For technical information, type: "get-help Set-Template -full".
    For online help, type: "get-help Set-Template -online"

Set-VApp
-------------------------

NAME
    Set-VApp
    
SYNOPSIS
    This cmdlet modifies the specified vApp.
    
    
SYNTAX
    Set-VApp -VApp <VApp[]> [-Name <String>] [-CpuExpandableReservation <Boolean>] [-CpuLimitMhz <Int64>] [-CpuReservationMhz <Int64>] [-CpuSharesLevel <SharesLevel>] 
    [-MemExpandableReservation <Boolean>] [-MemLimitMB <Int64>] [-MemLimitGB <Decimal>] [-MemReservationMB <Int64>] [-MemReservationGB <Decimal>] [-MemSharesLevel <SharesLevel>] 
    [-NumCpuShares <Int32>] [-NumMemShares <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified vApp.
    

PARAMETERS
    -VApp <VApp[]>
        Specifies the vApp that you want to configure.
        
    -Name <String>
        Modifies the name of the vApp.
        
    -CpuExpandableReservation [<Boolean>]
        Indicates that the CPU reservation can grow beyond the specified value if there are available resources.
        
    -CpuLimitMhz <Int64>
        Specifies a CPU usage limit in MHz. If this parameter is set, utilization will not exceed this limit even if there are available resources.
        
    -CpuReservationMhz <Int64>
        Specifies the guaranteed available CPU in MHz.
        
    -CpuSharesLevel <SharesLevel>
        Specifies the CPU allocation level for this vApp. This property is used in relative allocation between resource consumers. This parameter accepts Custom, High, Low, and Normal 
        values.
        
    -MemExpandableReservation [<Boolean>]
        Indicates that the memory reservation can grow beyond the specified value if there are available resources.
        
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
        Specifies the memory allocation level for the vApp. This property is used in relative allocation between resource consumers. This cmdlet accepts Custom, High, Low, and Normal values.
        
    -NumCpuShares <Int32>
        Specifies the CPU allocation level for the vApp. This property is used in relative allocation between resource consumers. This parameter is ignored unless the CpuSharesLevel 
        parameter is set to Custom.
        
    -NumMemShares <Int32>
        Specifies the memory allocation level for the resource pool. This property is used in relative allocation between resource consumers. This parameter is ignored unless the 
        MemSharesLevel parameter is set to Custom.
        
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
    
    C:\PS>Get-VApp -Name MyTestVApp1 | Set-VApp -CpuSharesLevel Low -MemSharesLevel Normal
    
    Modifies the CpuSharesLevel and MemSharesLevel properties of the MyTestVApp1 virtual appliance.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myvApp = Get-VApp -Location MyDatacenter1
    Set-VApp -VApp $myvApp -CpuExpandableReservation:$true -CpuLimitMhz 4000 -MemExpandableReservation:$true -MemLimitGB 2
    
    Modifies the properties of the vApps available on the MyDatacenter1 datacenter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VApp -examples".
    For more information, type: "get-help Set-VApp -detailed".
    For technical information, type: "get-help Set-VApp -full".
    For online help, type: "get-help Set-VApp -online"

Set-VDBlockedPolicy
-------------------------

NAME
    Set-VDBlockedPolicy
    
SYNOPSIS
    This cmdlet modifies the blocking policy for distributed ports.
    
    
SYNTAX
    Set-VDBlockedPolicy [-Policy] <BlockedPolicy[]> [-Blocked <Boolean>] [-BlockedInherited <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the blocking policy for distributed ports at switch, port group, or port level (depending on the input policy).
    

PARAMETERS
    -Policy <BlockedPolicy[]>
        Specifies the blocking policy that you want to configure.
        
    -Blocked [<Boolean>]
        Specifies whether packet forwarding is stopped for the corresponding distributed port, port group, or switch.
        
    -BlockedInherited [<Boolean>]
        Specifies whether the Blocked setting is inherited from a parent object, such as a distributed port group or switch.
        
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
    
    C:\PS>Get-VDPort -VDSwitch "MyVDSwitch" -ActiveOnly | Get-VDBlockedPolicy | Set-VDBlockedPolicy -Blocked
    
    Retrieves all active distributed ports and updates their blocking policy to stop packet forwarding through them.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDportgroup "MyVDPortgroup" | Get-VDPort | Get-VDBlockedPolicy | Set-VDBlockedPolicy -BlockedInherited
    
    Retrieves the specified "MyVDPortgroup" distributed port group and updates the blocking policy of all ports inside the group to inherit the setting for packet forwarding from the one 
    set on the distributed port group level.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDBlockedPolicy -examples".
    For more information, type: "get-help Set-VDBlockedPolicy -detailed".
    For technical information, type: "get-help Set-VDBlockedPolicy -full".
    For online help, type: "get-help Set-VDBlockedPolicy -online"

Set-VDPort
-------------------------

NAME
    Set-VDPort
    
SYNOPSIS
    This cmdlet modifies the configuration of virtual distributed ports.
    
    
SYNTAX
    Set-VDPort [-VDPort] <VDPort[]> [-Name <String>] [-Description <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of virtual distributed ports.
    

PARAMETERS
    -VDPort <VDPort[]>
        Specifies the virtual distributed port that you want to configure.
        
    -Name <String>
        Specifies a new name for the virtual distributed port that you want to configure.
        
    -Description <String>
        Specifies a description for the virtual distributed port that you want to configure.
        
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
    
    C:\PS>$myVDPort = Get-VDPort -Key "Port0" -VDSwtich "MyVDSwitch"
    Set-VDPort -VDPort $myVDPort -Name "MyUpdatedPortName" -Description "MyUpdatedVDPortDescription"
    
    Updates the name and the description of a specified virtual distributed port inside a vSphere distributed switch named "MyVDSwitch".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDPort -examples".
    For more information, type: "get-help Set-VDPort -detailed".
    For technical information, type: "get-help Set-VDPort -full".
    For online help, type: "get-help Set-VDPort -online"

Set-VDPortgroup
-------------------------

NAME
    Set-VDPortgroup
    
SYNOPSIS
    This cmdlet modifies the configuration of distributed port groups.
    
    
SYNTAX
    Set-VDPortgroup [-Name <String>] [-Notes <String>] [-NumPorts <Int32>] [-VlanId <Int32>] [-VlanTrunkRange <VlanRangeList>] [-PrivateVlanId <Int32>] [-PortBinding 
    <DistributedPortGroupPortBinding>] [-DisableVlan] [-VDPortgroup] <VDPortgroup[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VDPortgroup -RollbackConfiguration [-VDPortgroup] <VDPortgroup[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VDPortgroup -BackupPath <String> [-VDPortgroup] <VDPortgroup[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of distributed port groups. You can set the properties of the distributed port group manually, provide a backup profile to import the port group 
    configuration, or rollback to the last valid configuration.
    
    Note: You can import or rollback a configuration only on vSphere 5.1 and later.
    

PARAMETERS
    -Name <String>
        Specifies a new name for the distributed port group that you want to configure.
        
    -Notes <String>
        Specifies a new description for the distributed port group that you want to configure.
        
    -NumPorts <Int32>
        Specifies a new number of ports on the distributed port group that you want to configure.
        
    -VlanId <Int32>
        Specifies a new VLAN ID for the distributed port group that you want to configure. The VLAN IDs of 0 and 4095 are reserved and cannot be used. This parameter is obsolete. Use the 
        corresponding parameter from the Set-VDVlanConfiguration cmdlet instead.
        
    -VlanTrunkRange <VlanRangeList>
        Specifies a new VLAN trunk range for the distributed port group that you want to configure. Valid values are strings representing ranges of IDs. For example, "1-4, 6, 8-9". This 
        parameter is obsolete. Use the corresponding parameter from the Set-VDVlanConfiguration cmdlet instead.
        
    -PrivateVlanId <Int32>
        Specifies the secondary VLAN ID of a vSphere distributed switch's private VLAN configuration entry. This parameter is obsolete. Use the corresponding parameter from the 
        Set-VDVlanConfiguration cmdlet instead.
        
    -PortBinding <DistributedPortGroupPortBinding>
        Specifies a new port binding setting for the distributed port group that you want to configure. This parameter accepts Static, Dynamic, and Ephemeral values.
        
        Note: Dynamic port binding is deprecated. For better performance, static port binding is recommended.
        
    -DisableVlan
        Sets the VLAN type of the distributed port group to None. This parameter is obsolete. Use the corresponding parameter from the Set-VDVlanConfiguration cmdlet instead.
        
    -VDPortgroup <VDPortgroup[]>
        Specifies the distributed port group that you want to configure.
        
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
        
    -RollbackConfiguration
        Indicates that you want to rollback the distributed port group to its last valid configuration.
        
        Note: Rollback is available only on vSphere 5.1 and later.
        
    -BackupPath <String>
        Specifies the full file path to the .zip file containing the backup configuration that you want to import. You can import only .zip files created with the Export-VDPortgroup cmdlet.
        
        Note: This parameter is only supported on vSphere 5.1 and later.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDPortgroup -Name "MyVDPortGroup" | Set-VDPortgroup -Name "MyNewVDPortGroupName" -NumPorts 5 -VlanId 4
    
    Changes the name, number of ports and the VLAN ID of all distributed port groups named "MyVDPortGroup".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup -Name "MyVDPortGroup" | Set-VDPortgroup -VlanTrunkRange "1-5, 8-10"
    
    Changes the VLAN trunk range of all distributed port groups named "MyVDPortGroup".
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVDPortgroup = Get-VDPortgroup -Name "MyVDPortGroup" -VDSwitch "MyVDSwitch"
    Set-VDPortgroup -VDPortgroup $myVDPortgroup -DisableVlan
    
    Sets the VLAN type of the specified distributed port group to None.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VDPortgroup -Name "MyVDPortGroup" | Set-VDPortgroup -RollbackConfiguration
    
    Rollbacks the configuration of all distributed port groups named "MyVDPortGroup".
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-VDPortgroup -Name "MyVDPortGroup" | Set-VDPortgroup -BackupPath 'c:\backup.zip'
    
    Reconfigures all distributed port groups named "MyVDPortGroup" by importing the configuration from the specified backup profile.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDPortgroup -examples".
    For more information, type: "get-help Set-VDPortgroup -detailed".
    For technical information, type: "get-help Set-VDPortgroup -full".
    For online help, type: "get-help Set-VDPortgroup -online"

Set-VDPortgroupOverridePolicy
-------------------------

NAME
    Set-VDPortgroupOverridePolicy
    
SYNOPSIS
    This cmdlet modifies the policy for overriding port group settings at port level.
    
    
SYNTAX
    Set-VDPortgroupOverridePolicy [-Policy] <VDPortgroupOverridePolicy[]> [-BlockOverrideAllowed <Boolean>] [-ResetPortConfigAtDisconnect <Boolean>] [-SecurityOverrideAllowed <Boolean>] 
    [-TrafficShapingOverrideAllowed <Boolean>] [-UplinkTeamingOverrideAllowed <Boolean>] [-VlanOverrideAllowed <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the policy for overriding port group settings at port level. At least one of the Bool parameters must be specified.
    

PARAMETERS
    -Policy <VDPortgroupOverridePolicy[]>
        Specifies the port group overriding policy that you want to configure.
        
    -BlockOverrideAllowed [<Boolean>]
        Specifies whether overriding port blocking settings is allowed.
        
    -ResetPortConfigAtDisconnect [<Boolean>]
        Specifies whether the port configuration is reset when the port is disconnected.
        
    -SecurityOverrideAllowed [<Boolean>]
        Specifies whether overriding security settings is allowed.
        
    -TrafficShapingOverrideAllowed [<Boolean>]
        Specifies whether overriding traffic shaping settings is allowed.
        
    -UplinkTeamingOverrideAllowed [<Boolean>]
        Specifies whether overriding uplink teaming settings is allowed.
        
    -VlanOverrideAllowed [<Boolean>]
        Specifies whether overriding VLAN settings is allowed.
        
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
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDPortgroupOverridePolicy | Set-VDPortgroupOverridePolicy -BlockOverrideAllowed $true
    
    Retrieves a distributed port group named "MyVDPortgroup" and updates its overriding policy to allow the port blocking settings to override the default settings at port group level.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" |
    Get-VDPortgroup | Get-VDPortgroupOverridePolicy |
    Set-VDPortgroupOverridePolicy -ResetPortConfigAtDisconnect $true
    -TrafficShapingOverrideAllowed $true
    
    Retrieves all port groups inside a distributed switch named "MyVDSwitch" and updates their overriding policies with the options to override the traffic shaping setting at port level, 
    and to reset the distributed port network settings back to the port group settings.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDPortgroupOverridePolicy -examples".
    For more information, type: "get-help Set-VDPortgroupOverridePolicy -detailed".
    For technical information, type: "get-help Set-VDPortgroupOverridePolicy -full".
    For online help, type: "get-help Set-VDPortgroupOverridePolicy -online"

Set-VDSecurityPolicy
-------------------------

NAME
    Set-VDSecurityPolicy
    
SYNOPSIS
    This cmdlet modifies the security policy for distributed ports.
    
    
SYNTAX
    Set-VDSecurityPolicy [-Policy] <SecurityPolicy[]> [-AllowPromiscuous <Boolean>] [-AllowPromiscuousInherited <Boolean>] [-ForgedTransmits <Boolean>] [-ForgedTransmitsInherited <Boolean>] 
    [-MacChanges <Boolean>] [-MacChangesInherited <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the security policy for distributed ports or the default port policy at port group or switch level (depending on the input policy).
    

PARAMETERS
    -Policy <SecurityPolicy[]>
        Specifies the security policy that you want to configure.
        
    -AllowPromiscuous [<Boolean>]
        Specifies whether promiscuous mode is enabled for the corresponding distributed port, port group, or switch.
        
    -AllowPromiscuousInherited [<Boolean>]
        Specifies whether the AllowPromiscuous setting is inherited from a parent object, such as a distributed port group or switch.
        
    -ForgedTransmits [<Boolean>]
        Specifies whether forged transmits are enabled for the corresponding distributed port, port group, or switch.
        
    -ForgedTransmitsInherited [<Boolean>]
        Specifies whether the ForgedTransmits setting is inherited from a parent object, such as a distributed port group or switch.
        
    -MacChanges [<Boolean>]
        Specifies whether MAC address changes are enabled for the corresponding distributed port, port group, or switch.
        
    -MacChangesInherited [<Boolean>]
        Specifies whether the MacChanges setting is inherited from a parent object, such as a distributed port group or switch.
        
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
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDSecurityPolicy | Set-VDSecurityPolicy -MacChanges $true
    
    Retrieves a vSphere distributed switch named "MyVDSwitch" and updates its security policy to allow MAC address changes.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDSecurityPolicy | Set-VDSecurityPolicy -ForgedTransmitsInherited $true
    
    Retrieves a distributed port group named "MyVDPortgroup" and updates the security policy to inherit the setting value for controlling outbound frames filtering by MAC address from its 
    parent.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDSecurityPolicy -examples".
    For more information, type: "get-help Set-VDSecurityPolicy -detailed".
    For technical information, type: "get-help Set-VDSecurityPolicy -full".
    For online help, type: "get-help Set-VDSecurityPolicy -online"

Set-VDSwitch
-------------------------

NAME
    Set-VDSwitch
    
SYNOPSIS
    This cmdlet modifies the configuration of vSphere distributed switches.
    
    
SYNTAX
    Set-VDSwitch [-Name <String>] [-ContactDetails <String>] [-ContactName <String>] [-LinkDiscoveryProtocol <LinkDiscoveryProtocol>] [-LinkDiscoveryProtocolOperation 
    <LinkDiscoveryOperation>] [-MaxPorts <Int32>] [-Mtu <Int32>] [-Notes <String>] [-NumUplinkPorts <Int32>] [-Version <String>] [-VDSwitch] <VDSwitch[]> [-RunAsync] [-Server <VIServer[]>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VDSwitch -BackupPath <String> [-WithoutPortGroups] [-VDSwitch] <VDSwitch[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VDSwitch -RollBackConfiguration [-VDSwitch] <VDSwitch[]> [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of vSphere distributed switches. You can set the properties of the vSphere distributed switch manually, rollback the configuration to its previous 
    state, or import it from a backup profile.
    
    Note: Rollback and importing are available only on vSphere 5.1 and later.
    

PARAMETERS
    -Name <String>
        Specifies a new name for the vSphere distributed switch that you want to configure.
        
    -ContactDetails <String>
        Specifies new contact details of the vSphere distributed switch administrator.
        
    -ContactName <String>
        Specifies a new name for the vSphere distributed switch administrator.
        
    -LinkDiscoveryProtocol <LinkDiscoveryProtocol>
        Specifies the link discovery protocol for the vSphere distributed switch that you want to configure. This parameter accepts CDP and LLDP values.
        
    -LinkDiscoveryProtocolOperation <LinkDiscoveryOperation>
        Specifies the link discovery protocol operation for the vSphere distributed switch that you want to configure. This parameter accepts Advertise, Listen, Both, and Disabled values.
        
    -MaxPorts <Int32>
        Specifies the maximum number of ports allowed on the vSphere distributed switch that you want to configure.
        
    -Mtu <Int32>
        Specifies the maximum MTU size for the vSphere distributed switch that you want to configure. Valid values are positive integers only.
        
    -Notes <String>
        Specifies a new description for the vSphere distributed switch that you want to configure.
        
    -NumUplinkPorts <Int32>
        Specifies the number of uplink ports on the vSphere distributed switch that you want to configure.
        
    -Version <String>
        Specifies a new version for the vSphere distributed switch that you want to configure. This parameter accepts 4.0, 4.1.0, 5.0.0, 5.1.0, 5.5.0, and 6.0.0 values. You cannot specify a 
        version that is incompatible with the version of the vCenter Server system you are connected to.
        
    -VDSwitch <VDSwitch[]>
        Specifies the vSphere distributed switch that you want to configure.
        
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
        
    -BackupPath <String>
        Specifies the full file path to the .zip file containing the backup configuration that you want to import. You can import only .zip files created with the Export-VDSwitch cmdlet.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    -WithoutPortGroups
        Indicates that the specified backup configuration is imported without its port groups. 
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    -RollBackConfiguration
        Indicates that you want to rollback the configuration of the vSphere distributed switch to an earlier state.
        
        Note: This parameter is supported only on vSphere 5.1 and later.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch -Name "MyVDSwitch" | Set-VDSwitch -MaxPorts 1000 -NumUplinkPorts 8 -Mtu 2000
    
    Modifies the maximum number of ports, the number of uplink ports, and the maximum MTU size of the specified vSphere distributed switch.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVDSwitches = Get-VDSwitch -Name MyVDSwitch*
    Set-VDSwitch -VDSwitch $myVDSwitches -Version '5.1.0'
    
    Changes the version of all vSphere distributed switches whose names start with "MyVDSwitch".
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVDSwitch = Get-VDSwitch -Name "MyVDSwitch"
    Set-VDSwitch -VDSwitch $myVDSwitch -LinkDiscoveryProtocol LLDP -LinkDiscoveryProtocolOperation Listen
    
    Enables link discovery protocol on the specified vSphere distributed switch, sets it to LLDP and changes the link discovery protocol operation to listen.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VDSwitch -Name "MyVDSwitch" | Set-VDSwitch -BackupPath 'c:\MyVDSwitchBackups\MyVDSwitch_12_12_2012.zip' -WithoutPortGroups
    
    Reconfigures the specified vSphere distributed switch by importing the specified backup profile. The original port groups are not recreated.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-VDSwitch -Name "MyVDSwitch" | Set-VDSwitch -RollbackConfiguration
    
    Rollbacks the configuration of the specified vSphere distributed switch to its previous state.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDSwitch -examples".
    For more information, type: "get-help Set-VDSwitch -detailed".
    For technical information, type: "get-help Set-VDSwitch -full".
    For online help, type: "get-help Set-VDSwitch -online"

Set-VDTrafficShapingPolicy
-------------------------

NAME
    Set-VDTrafficShapingPolicy
    
SYNOPSIS
    This cmdlet modifies the traffic shaping policy for distributed ports.
    
    
SYNTAX
    Set-VDTrafficShapingPolicy [-Policy] <TrafficShapingPolicy[]> [-Enabled <Boolean>] [-EnabledInherited <Boolean>] [-AverageBandwidth <Int64>] [-AverageBandwidthInherited <Boolean>] 
    [-BurstSize <Int64>] [-BurstSizeInherited <Boolean>] [-PeakBandwidth <Int64>] [-PeakBandwidthInherited <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the traffic shaping policy for distributed ports  or the default port policy at port group or switch level (depending on the input policy).
    

PARAMETERS
    -Policy <TrafficShapingPolicy[]>
        Specifies the traffic shaping policy that you want to configure.
        
    -Enabled [<Boolean>]
        Specifies whether traffic shaping is enabled for the corresponding distributed port, port group, or switch.
        
    -EnabledInherited [<Boolean>]
        Specifies whether the Enabled setting is inherited from a parent object, such as a distributed port group or switch.
        
    -AverageBandwidth <Int64>
        Specifies the average bandwidth of the traffic shaping policy for the corresponding distributed port, port group, or switch. The value is in bits per second.
        
    -AverageBandwidthInherited [<Boolean>]
        Specifies whether the AverageBandwidth setting is inherited from a parent object, such as a distributed port group or switch.
        
    -BurstSize <Int64>
        Specifies the burst size of the traffic shaping policy for the corresponding distributed port, port group, or switch. The value is in bits per second.
        
    -BurstSizeInherited [<Boolean>]
        Specifies whether the BurstSize setting is inherited from a parent object, such as a distributed port group or switch.
        
    -PeakBandwidth <Int64>
        Specifies the peak bandwidth of the traffic shaping policy for the corresponding distributed port, port group, or switch. The value is in bits per second.
        
    -PeakBandwidthInherited [<Boolean>]
        Specifies whether the PeakBandwidth setting is inherited from a parent object, such as a distributed port group or switch.
        
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
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDPortgroup "MyVDPortgroup" | Get-VDPort -Key 4| Get-VDTrafficShapingPolicy -Direction In | Set-VDTrafficShapingPolicy -Enabled $true 
    -AverageBandwidth 100000
    
    Enables traffic shaping for a specific port in a distributed port group named "MyVDPortgroup" and updates the average bandwidth settings in their traffic shaping policies.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDTrafficShapingPolicy | Set-VDTrafficShapingPolicy -BurstSizeInherited
    
    Retrieves a distributed port group named "MyVDPortgroup" and updates its traffic shaping policy by inheriting the burst size from its corresponding parent.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDTrafficShapingPolicy -examples".
    For more information, type: "get-help Set-VDTrafficShapingPolicy -detailed".
    For technical information, type: "get-help Set-VDTrafficShapingPolicy -full".
    For online help, type: "get-help Set-VDTrafficShapingPolicy -online"

Set-VDUplinkLacpPolicy
-------------------------

NAME
    Set-VDUplinkLacpPolicy
    
SYNOPSIS
    This cmdlet modifies the Link Aggregation Control Protocol policy for uplink ports.
    
    
SYNTAX
    Set-VDUplinkLacpPolicy [-Policy] <UplinkLacpPolicy[]> [-Enabled <Boolean>] [-EnabledInherited <Boolean>] [-Mode <UplinkLacpMode>] [-ModeInherited <Boolean>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the Link Aggregation Control Protocol policy for uplink ports at switch or uplink  port group level.
    

PARAMETERS
    -Policy <UplinkLacpPolicy[]>
        Specifies the Link Aggregation Control Protocol policy that you want to configure.
        
    -Enabled [<Boolean>]
        Specifies whether the Link Aggregation Control Protocol is enabled for the corresponding uplink port group or vSphere distributed switch.
        
    -EnabledInherited [<Boolean>]
        Specifies whether the Enabled setting is inherited from a parent object, such as a vSphere distributed switch.
        
    -Mode <UplinkLacpMode>
        Specifies the mode of the Link Aggregation Control Protocol policy for the corresponding uplink port group or vSphere distributed switch. The value can be Active or Passive.
        
    -ModeInherited [<Boolean>]
        Specifies whether the Mode setting is inherited from a parent object, such as a vSphere distributed switch.
        
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
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDUplinkLacpPolicy | Set-VDUplinkLacpPolicy -Enabled $true -Mode Active
    
    Retrieves a vSphere distributed switch named "MyVDSwitch" and updates its policy to enable the Link Aggregation Control Protocol, and sets the corresponding policy mode to active.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDUplinkLacpPolicy | Set-VDUplinkLacpPolicy -ModeInherited $true
    
    Retrieves a distributed port group named "MyVDPortgroup" and updates its Link Aggregation Control Protocol mode based on its parent object's setting values.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDUplinkLacpPolicy -examples".
    For more information, type: "get-help Set-VDUplinkLacpPolicy -detailed".
    For technical information, type: "get-help Set-VDUplinkLacpPolicy -full".
    For online help, type: "get-help Set-VDUplinkLacpPolicy -online"

Set-VDUplinkTeamingPolicy
-------------------------

NAME
    Set-VDUplinkTeamingPolicy
    
SYNOPSIS
    This cmdlet modifies the uplink teaming policy for distributed ports.
    
    
SYNTAX
    Set-VDUplinkTeamingPolicy [-ActiveUplinkPort <String[]>] [-ObsoleteParameterDisableFailback <Boolean>] [-EnableFailback <Boolean>] [-FailbackInherited <Boolean>] 
    [-FailoverDetectionPolicy <NetworkFailoverDetectionPolicy>] [-FailoverDetectionPolicyInherited <Boolean>] [-LoadBalancingPolicy <LoadBalancingPolicy>] [-LoadBalancingPolicyInherited 
    <Boolean>] [-NotifySwitches <Boolean>] [-NotifySwitchesInherited <Boolean>] [-Policy] <UplinkTeamingPolicy[]> [-StandbyUplinkPort <String[]>] [-UnusedUplinkPort <String[]>] 
    [-UplinkPortOrderInherited <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the uplink teaming policy for distributed ports at switch, port group, or port level.
    

PARAMETERS
    -ActiveUplinkPort <String[]>
        Specifies the active uplink ports used for load balancing for a corresponding vSphere distributed switch.
        
    -ObsoleteParameterDisableFailback [<Boolean>]
        This parameter and its alias, Failback, are obsolete and should not be used. They exist for compatibility with earlier PowerCLI versions. Use the EnableFailback parameter instead. 
        Note that passing $false to the obsolete Failback parameter is equivalent to passing $true to the new EnableFailback parameter and the reverse.
        
    -EnableFailback [<Boolean>]
        Specifies whether to use failback when restoring links. If, for example, the explicit link order is (vmnic9, vmnic0), and vmnic9 goes down, vmnic0 is activated. However, when vmnic9 
        comes back up, if EnableFailback is set to $true, vmnic9 is restored as specified in the explicit order. If EnableFailback is set to $false, vmnic0 continues to be used and vmnic9 
        remains on standby.
        
        This parameter replaces the obsolete ObsoleteParameterDisableFailback parameter, which is an alias fort the Failback parameter. Note that passing $false to the obsolete Failback 
        parameter is equivalent to passing $true to the new EnableFailback parameter and the reverse.
        
    -FailbackInherited [<Boolean>]
        Specifies whether the Failback setting is inherited from a parent object, such as a distributed port group or switch.
        
    -FailoverDetectionPolicy <NetworkFailoverDetectionPolicy>
        Specifies the method to use for failover detection for the corresponding distributed port, port group, or switch. The value can be LinkStatus or BeaconProbing.
        
    -FailoverDetectionPolicyInherited [<Boolean>]
        Specifies whether the FailoverDetectionPolicy setting is inherited from a parent object, such as a distributed port group or switch.
        
    -LoadBalancingPolicy <LoadBalancingPolicy>
        Specifies the load balancing policy for the corresponding distributed port, port group, or switch. The value can be LoadBalanceIP, LoadBalanceSrcMac, LoadBalanceSrcId, or 
        ExplicitFailover.
        
    -LoadBalancingPolicyInherited [<Boolean>]
        Specifies whether the LoadBalancingPolicy setting is inherited from a parent object, such as a distributed port group or switch.
        
    -NotifySwitches [<Boolean>]
        Specifies whether to notify switches in the case of failover.
        
    -NotifySwitchesInherited [<Boolean>]
        Specifies whether the NotifySwitches setting is inherited from a parent object, such as a distributed port group or switch.
        
    -Policy <UplinkTeamingPolicy[]>
        Specifies the uplink teaming policy that you want to configure.
        
    -StandbyUplinkPort <String[]>
        Specifies the standby uplink ports for the corresponding vSphere distributed switch.
        
    -UnusedUplinkPort <String[]>
        Specifies the unused uplink ports for the corresponding vSphere distributed switch.
        
    -UplinkPortOrderInherited [<Boolean>]
        Specifies whether the UplinkPortOrder setting is inherited from a parent object, such as a distributed port group or switch.
        
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
    
    C:\PS>$activePortsList = "Port0"
    $standbyPortsList = "Port1", "Port2"
    Get-VDSwitch "MyVDSwitch" | Get-VDPortgroup | Get-VDUplinkTeamingPolicy | Set-VDUplinkTeamingPolicy -ActiveUplinkPort $activePortsList -StandbyUplinkPort $standbyPortsList
    
    Retrieves all distributed port groups from a vSphere distributed switch named "MyVDSwitch" and updates their teaming policies with information about the active and standby uplinks that 
    will be used when the adapter connectivity is up or down.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPortgroup" | Get-VDUplinkTeamingPolicy | Set-VDUplinkTeamingPolicy -NotifySwitches $true -FailoverDetectionPolicy LinkStatus
    
    Updates the teaming policy of a distributed port group named "MyVDPortgroup" with a link status method for failover detection and with the ability to notify the corresponding 
    distributed switch when any adapter failover occurs.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDPort "Port2" | Get-VDUplinkTeamingPolicy | Set-VDUplinkTeamingPolicy -LoadBalancingPolicy LoadBalanceSrcId -FailBack $true
    
    Updates the uplink teaming policy of a distributed port named "Port2" inside the "MyVDSwitch" vSphere distributed switch to enable failback and to choose an uplink based on the current 
    loads of physical NICs.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDUplinkTeamingPolicy -examples".
    For more information, type: "get-help Set-VDUplinkTeamingPolicy -detailed".
    For technical information, type: "get-help Set-VDUplinkTeamingPolicy -full".
    For online help, type: "get-help Set-VDUplinkTeamingPolicy -online"

Set-VDVlanConfiguration
-------------------------

NAME
    Set-VDVlanConfiguration
    
SYNOPSIS
    This cmdlet modifies the virtual distributed port's VLAN configuration.
    
    
SYNTAX
    Set-VDVlanConfiguration -VDPortgroup <VDPortgroup[]> [-DisableVlan] [-VlanId <Int32>] [-VlanTrunkRange <VlanRangeList>] [-PrivateVlanId <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VDVlanConfiguration -VDSwitch <VDSwitch[]> [-DisableVlan] [-VlanId <Int32>] [-VlanTrunkRange <VlanRangeList>] [-PrivateVlanId <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VDVlanConfiguration -VDPort <VDPort[]> [-DisableVlan] [-VlanId <Int32>] [-VlanTrunkRange <VlanRangeList>] [-PrivateVlanId <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the virtual distributed port's VLAN configuration. For vSphere distributed switch and port group parameter sets, the cmdlet modifies the respective default port 
    configuration.
    

PARAMETERS
    -VDPortgroup <VDPortgroup[]>
        Specifies the port group whose default VLAN port configuration you want to modify.
        
    -DisableVlan
        Sets the VLAN type to None.
        
    -VlanId <Int32>
        Specifies a new VLAN ID. The VLAN IDs of 0 and 4095 are reserved and cannot be used.
        
    -VlanTrunkRange <VlanRangeList>
        Specifies a new VLAN trunk range. Valid values are strings representing ranges of IDs. For example, "1-4, 6, 8-9".
        
    -PrivateVlanId <Int32>
        Specifies the secondary VLAN ID of a vSphere distributed switch's private VLAN configuration entry. The VLAN IDs of 0 and 4095 are reserved and cannot be used.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -VDSwitch <VDSwitch[]>
        Specifies the vSphere distributed switch whose default VLAN port configuration you want to modify.
        
    -VDPort <VDPort[]>
        Specifies the port whose VLAN configuration you want to modify.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch "MyVDSwitch" | Get-VDPort -ActiveOnly | Set-VDVlanConfiguration -PrivateVlanId 4
    
    Assigns all active ports of a specific vSphere distributed switch named "MyVDSwitch" to a private VLAN with ID "4".
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDPortgroup "MyVDPorgroup" | Get-VDPort | Set-VDVlanConfiguration -VlanId 3
    
    Assigns all ports of a specific distributed port group named "MyVDPorgroup" to a VLAN with ID "3".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VDVlanConfiguration -examples".
    For more information, type: "get-help Set-VDVlanConfiguration -detailed".
    For technical information, type: "get-help Set-VDVlanConfiguration -full".
    For online help, type: "get-help Set-VDVlanConfiguration -online"

Set-VIPermission
-------------------------

NAME
    Set-VIPermission
    
SYNOPSIS
    This cmdlet modifies the properties of the specified permissions.
    
    
SYNTAX
    Set-VIPermission [-Permission] <Permission[]> [-Role <Role>] [-Propagate <Boolean>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified permissions. The cmdlet can change the role and define whether the permission propagates down the hierarchy to child inventory 
    objects.
    

PARAMETERS
    -Permission <Permission[]>
        Specifies the permissions you want to modify.
        
    -Role <Role>
        Specifies a new role for the permissions.
        
    -Propagate [<Boolean>]
        Indicates that you want to propagate the new permissions to the child inventory objects.
        
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
    
    C:\PS>Set-VIPermission -Permission $permission -Role Role -Propagate:$false
    
    Changes the Propagate property of the $permission permission to $false.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VIPermission -examples".
    For more information, type: "get-help Set-VIPermission -detailed".
    For technical information, type: "get-help Set-VIPermission -full".
    For online help, type: "get-help Set-VIPermission -online"

Set-VIRole
-------------------------

NAME
    Set-VIRole
    
SYNOPSIS
    This cmdlet modifies the privileges of the provided roles.
    
    
SYNTAX
    Set-VIRole [-Role] <Role[]> [-Name <String>] [-AddPrivilege <Privilege[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VIRole [-Role] <Role[]> [-Name <String>] [-RemovePrivilege <Privilege[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the privileges of the provided roles.
    

PARAMETERS
    -Role <Role[]>
        Specifies the roles you want to modify.
        
    -Name <String>
        Provides a new name for the provided role.
        
    -AddPrivilege <Privilege[]>
        Specifies privileges and privilege groups you want to add to the provided roles.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -RemovePrivilege <Privilege[]>
        Specifies privileges or privilege groups you want to remove from the provided roles.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Set-VIRole -Role Role -AddPrivilege (Get-VIPrivilege -Name 'Create Datacenter')
    
    Adds the "Create Datacenter" privilege to the Role role.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VIRole -examples".
    For more information, type: "get-help Set-VIRole -detailed".
    For technical information, type: "get-help Set-VIRole -full".
    For online help, type: "get-help Set-VIRole -online"

Set-VirtualPortGroup
-------------------------

NAME
    Set-VirtualPortGroup
    
SYNOPSIS
    This cmdlet modifies the properties of the specified virtual port group.
    
    
SYNTAX
    Set-VirtualPortGroup [-Name <String>] [-VLanId <Int32>] [-VirtualPortGroup] <VirtualPortGroup[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified virtual port group.
    

PARAMETERS
    -Name <String>
        Specifies a new name for the virtual port group.
        
    -VLanId <Int32>
        Specifies the VLAN ID for ports using this port group. The following values are valid:
        
        0 - specifies that you do not want to associate the port group with a VLAN.
        
        1 to 4094 - specifies a VLAN ID for the port group.
        
        4095 - specifies that the port group should use trunk mode, which allows the guest operating system to manage its own VLAN tags.
        
    -VirtualPortGroup <VirtualPortGroup[]>
        Specifies the virtual port group whose properties you want to change.
        
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
    
    C:\PS>$vswitch =  New-VirtualSwitch -VMHost 10.23.112.36 -Name VSwitch
    
    $vportgroup1 =  New-VirtualPortGroup -VirtualSwitch $vswitch -Name VPortGroup1
    
    $vportgroup2 = Set-VirtualPortGroup -VirtualPortGroup $vportgroup1 -VLanId 1
    
    Creates a new virtual switch named VSwitch on the virtual machine host with IP address 10.23.112.36. Creates a new virtual port group for the new switch named VPortGroup1. Sets the VLAN 
    ID for the ports using the VPortGroup1 group.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VirtualPortGroup -examples".
    For more information, type: "get-help Set-VirtualPortGroup -detailed".
    For technical information, type: "get-help Set-VirtualPortGroup -full".
    For online help, type: "get-help Set-VirtualPortGroup -online"

Set-VirtualSwitch
-------------------------

NAME
    Set-VirtualSwitch
    
SYNOPSIS
    This cmdlet modifies the properties of the specified virtual switch.
    
    
SYNTAX
    Set-VirtualSwitch [-VirtualSwitch] <VirtualSwitch[]> [[-NumPorts] <Int32>] [[-Nic] <String[]>] [[-Mtu] <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the properties of the specified virtual switch. The server rounds the value of the NumPorts parameter up to the closest exact power of two, greater than the 
    provided number. When updating NumPorts, the user needs to restart the ESX/ESXi host for the change to take effect.
    

PARAMETERS
    -VirtualSwitch <VirtualSwitch[]>
        Specifies the virtual switch you want to configure.
        
    -NumPorts <Int32>
        Specifies the VirtualSwitch port number. The value is rounded to the closest exact power of two, greater than the provided number (for example, if the user specifies 67, this number 
        is rounded to 128). The ESX host to which the virtual switch belongs, must be restarted for the change to take effect. Note that the port number displayed in the vSphere Client 
        might differ from the value that you specified for the NumPorts parameter.
        
        Note: In ESX 5.5 or later, standard virtual switches are always elastic, so the NumPorts parameter is no longer applicable and its value is ignored.
        
    -Nic <String[]>
        Specifies new network interface cards for the virtual switch. The old NICs are replaced by the specified ones.
        
    -Mtu <Int32>
        Specifies the maximum transmission unit (MTU) associated with the specified virtual switch (in bytes). The MTU value must be greater than 0.
        
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
    
    C:\PS>$vswitch = New-VirtualSwitch -Host 10.23.115.67 -Name VSwitch
    
    Set-VirtualSwitch -VirtualSwitch $vswitch -MTU 500
    
    Creates a new virtual switch named VSwitch on the virtual machine host on IP address 10.23.115.67. Then sets the virtual switch MTU to 500.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vswitch = New-VirtualSwitch -VMHost 10.23.115.67
    
    $networkAdapters = Get-VMHostNetworkAdapter -VMHost 10.23.115.67 -Physical
    
    $phNic = $networkAdapters[0]
    
    $vSwitch | Set-VirtualSwitch -Nic $phNic
    
    Creates a new virtual switch named VSwitch on the virtual machine host on IP address 10.23.115.67. Then assigns to it a network adapter.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost *.128 | Get-VirtualSwitch | Select-Object -First 1 | Set-VirtualSwitch -Nic vmnic5
    
    Add a physical network adapter named 'vmnic5' to the first switch of the host. Note that the 'vmnic5' adapter must not be assigned to other virtual switches.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VirtualSwitch -examples".
    For more information, type: "get-help Set-VirtualSwitch -detailed".
    For technical information, type: "get-help Set-VirtualSwitch -full".
    For online help, type: "get-help Set-VirtualSwitch -online"

Set-VM
-------------------------

NAME
    Set-VM
    
SYNOPSIS
    This cmdlet modifies the configuration of the virtual machine.
    
    
SYNTAX
    Set-VM [-VM] <VirtualMachine[]> [-Name <String>] [-Version <VMVersion>] [-MemoryMB <Int64>] [-MemoryGB <Decimal>] [-NumCpu <Int32>] [-GuestId <String>] [-AlternateGuestName <String>] 
    [-OSCustomizationSpec <OSCustomizationSpec>] [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse <HAIsolationResponse>] [-DrsAutomationLevel <DrsAutomationLevel>] [-Server 
    <VIServer[]>] [-RunAsync] [-VMSwapFilePolicy <VMSwapfilePolicy>] [-Notes <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VM [-VM] <VirtualMachine[]> [-Name <String>] [-Snapshot <Snapshot>] [-OSCustomizationSpec <OSCustomizationSpec>] [-HARestartPriority <HARestartPriority>] [-HAIsolationResponse 
    <HAIsolationResponse>] [-DrsAutomationLevel <DrsAutomationLevel>] [-Server <VIServer[]>] [-RunAsync] [-VMSwapFilePolicy <VMSwapfilePolicy>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VM [-VM] <VirtualMachine[]> [-Name <String>] [-Server <VIServer[]>] [-RunAsync] [-ToTemplate] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of the virtual machine. If the OSCustomizationSpec parameter is used, the cmdlet customizes the virtual machine according to the specification. In 
    addition, the cmdlet allows you to revert a virtual machine to a snapshot and convert a virtual machine to a template.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machine you want to configure.
        
    -Name <String>
        Specifies a new name for the virtual machine.
        
    -Version <VMVersion>
        Specifies the version to which you want to upgrade the virtual machine. The valid values are v4, v7, v8, v9, v10, and v11. You cannot downgrade to an earlier version.
        
    -MemoryMB <Int64>
        This parameter is obsolete. Use MemoryGB instead.
        Specifies the memory size in megabytes (MB).
        
    -MemoryGB <Decimal>
        Specifies the memory size in gigabytes (GB).
        
    -NumCpu <Int32>
        Specifies the number of virtual CPUs.
        
    -GuestId <String>
        Specifies the guest operating system of the virtual machine. The valid values for specific ESX versions are listed in the description of the VirtualMachineGuestOsIdentifier 
        enumeration type in the vSphere API Reference available at http://www.vmware.com/support/developer/vc-sdk/. Depending on the hardware configuration of the host, some of the guest 
        operating systems might be inapplicable.
        
    -AlternateGuestName <String>
        Specifies the full name of the guest OS for the virtual machine if the value of the GuestID parameter is set to otherGuest or otherGuest64.
        
    -OSCustomizationSpec <OSCustomizationSpec>
        Specifies a customization specification you want to apply to the virtual machine. This works only in 32-bit mode.
        
    -HARestartPriority <HARestartPriority>
        Specifies the virtual machine HA restart priority. The valid values are Disabled, Low, Medium, High, and ClusterRestartPriority. VMware HA is a feature that detects failed virtual 
        machines and automatically restarts them on alternative ESX hosts. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. 
        Specifying this parameter is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
        
    -HAIsolationResponse <HAIsolationResponse>
        Indicates whether the virtual machine should be powered off if a host determines that it is isolated from the rest of the compute resource. The valid values are 
        AsSpecifiedByCluster, PowerOff, and DoNothing. Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter 
        is only supported when the virtual machine is inside a cluster. Otherwise, an error is generated.
        
    -DrsAutomationLevel <DrsAutomationLevel>
        Specifies a DRS (Distributed Resource Scheduler) automation level. The valid values are FullyAutomated, Manual, PartiallyAutomated, AsSpecifiedByCluster, and Disabled. Passing 
        values to this parameter through a pipeline is deprecated and will be disabled in a future release. Specifying this parameter is only supported when the virtual machine is inside a 
        cluster. Otherwise, an error is generated.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VMSwapFilePolicy <VMSwapfilePolicy>
        Specifies the swapfile placement policy. The following values are valid:
        
        InHostDataStore - Stores the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set 
        or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        
        WithVM - Stores the swapfile in the same directory as the virtual machine.
        
    -Notes <String>
        Provide a description for the virtual machine. The alias of this parameter is Description.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Snapshot <Snapshot>
        Specifies a snapshot whose state you want to apply to the virtual machine.
        
    -ToTemplate
        Indicates that you want to convert the virtual machine to a template.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$template = Get-VM VM | Set-VM -ToTemplate -Name VMTemplate
    
    Converts the VM virtual machine to a template and stores the template in the $template variable.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VM -Location ResourcePool01 | Set-VM -MemoryGB 2 -NumCPU 2
    
    Upgrades the memory and CPU count of the virtual machines in ResourcePool01.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-VM -VM VM -Version v7
    
    Upgrades the virtual hardware version  of the VM machine.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$snapshot = Get-Snapshot -VM $vm -Name "Initial state"
    
    Set-VM -VM $vm -Snapshot $snapshot
    
    Revert the VM virtual machine to the "Initial state" snapshot.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$spec = Get-OSCustomizationSpec -Name FinanceDepartmentSpec;
    
    Set-VM -VM $vm -OSCustomizationSpec $spec
    
    Apply a customization specification on the specified virtual machines.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>Set-VM $vm -Name "Web Server" -GuestID winNetStandardGuest -Description "Company's web server"
    
    Changes the name, description, and guest ID of the specified virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VM -examples".
    For more information, type: "get-help Set-VM -detailed".
    For technical information, type: "get-help Set-VM -full".
    For online help, type: "get-help Set-VM -online"

Set-VMGuestNetworkInterface
-------------------------

NAME
    Set-VMGuestNetworkInterface
    
SYNOPSIS
    This cmdlet configures the network settings of a virtual machine using VMware Tools.
    
    
SYNTAX
    Set-VMGuestNetworkInterface -VmGuestNetworkInterface <VMGuestNetworkInterface[]> [-WinsPolicy <DhcpPolicy>] [-Wins <String[]>] [-DnsPolicy <DhcpPolicy>] [-Dns <String[]>] [-IPPolicy 
    <DhcpPolicy>] [[-Gateway] <Object>] [[-Netmask] <String>] [[-Ip] <IPAddress>] [-ToolsWaitSecs <Int32>] [-GuestPassword <SecureString>] [-GuestUser <String>] [-GuestCredential 
    <PSCredential>] [-HostPassword <SecureString>] [-HostUser <String>] [-HostCredential <PSCredential>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use Invoke-VMScript instead.
    
    This cmdlet configures the network settings of a virtual machine using VMware Tools. The cmdlet allows IP and routing configuration. You can modify Wins settings only for Windows 
    virtual machines. The cmdlet sends a remote script which executes inside the virtual machine in the context of the specified user account. For a list of supported operating systems, see 
    the PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Execute and VirtualMachine.GuestOperations.Modify privileges.
    

PARAMETERS
    -VmGuestNetworkInterface <VMGuestNetworkInterface[]>
        Specifies the guest network interface you want to configure.
        
    -WinsPolicy <DhcpPolicy>
        Specifies the Wins policy. The valid values are Static and Dhcp.
        
    -Wins <String[]>
        Specifies WINS servers. Use this parameter only if the WinsPolicy parameter is set to Static.
        
    -DnsPolicy <DhcpPolicy>
        Specifies the DNS policy. The valid values are Static and Dhcp.
        
    -Dns <String[]>
        Specifies DNS addresses. Use this parameter only if The DnsPolicy parameter is set to Static.
        
    -IPPolicy <DhcpPolicy>
        Specifies the IP policy. The valid values are Static and Dhcp.
        
    -Gateway <Object>
        Specifies a gateway.
        
    -Netmask <String>
        Specifies a network mask.
        
    -Ip <IPAddress>
        Specifies an IP address. Use this parameter only if The IpPolicy parameter is set to Static.
        
    -ToolsWaitSecs <Int32>
        Specifies the time in seconds to wait for a response from VMware Tools. If a non-positive value is provided, the system waits indefinitely.
        
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
    
    C:\PS>Set-VMGuestNetworkInterface -VMGuestNetworkInterface $vmGuestNetworkInterface -GuestUser User -GuestPassword Pass02 -Netmask 255.255.255.255 -Gateway 10.23.112.58
    
    Changes the net mask and the gateway of the specified guest network interface.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMGuestNetworkInterface -examples".
    For more information, type: "get-help Set-VMGuestNetworkInterface -detailed".
    For technical information, type: "get-help Set-VMGuestNetworkInterface -full".
    For online help, type: "get-help Set-VMGuestNetworkInterface -online"

Set-VMHost
-------------------------

NAME
    Set-VMHost
    
SYNOPSIS
    This cmdlet modifies the configuration of the host.
    
    
SYNTAX
    Set-VMHost [-VMHost] <VMHost[]> [[-State] <VMHostState>] [-VMSwapfilePolicy <VMSwapfilePolicy>] [-VMSwapfileDatastore <Datastore>] [-Profile <VMHostProfile>] [-Evacuate] [-TimeZone 
    <VMHostTimeZone>] [-LicenseKey <String>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the configuration of the host.
    
    The State parameter is set to Connected.
    - If the host is currently connected and is not in a maintenance mode, it does nothing.
    - If the host is in a maintenance mode, it exits the maintenance mode.
    - If the host is not connected or is not responding, it tries to reconnect.
    
    The State parameter is set to Disconnected.
    - If the host is currently connected, it attempts to disconnect.
    - If the host is not connected or not responding, it does nothing.
    
    The State parameter is set to Maintenance.
    - If the host is currently connected and not in a maintenance mode, it enters a maintenance mode.
    - If the host is currently connected and in a maintenance mode, it does nothing.
    - If the host is not connected or not responding, it attempts to reconnect and enter maintenance mode.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the host you want to configure.
        
    -State <VMHostState>
        Specifies the state of the host. The valid values are Connected, Disconnected, and Maintenance. If there are powered on virtual machines on the host, you can set the host into a 
        maintenance mode, only if it is  part of a DRS-enabled cluster. Before entering maintenance mode, if the host is fully automated, the cmdlet first relocates all powered on virtual 
        machines. If the host is not automated or partially automated, you must first generate a DRS recommendation and wait until all powered on virtual machines are relocated or powered 
        off. In this case, you must specify the RunAsync parameter, otherwise an error is thrown.
        
    -VMSwapfilePolicy <VMSwapfilePolicy>
        Specifies the swapfile placement policy. The following values are valid:
        
        InHostDataStore - Stores the swapfile in the datastore specified by the VMSwapfileDatastoreID property of the virtual machine host. If the VMSwapfileDatastoreID property is not set 
        or indicates a datastore with insufficient free space, the swapfile is stored in the same directory as the virtual machine. This setting might degrade the VMotion performance.
        
        WithVM - Stores the swapfile in the same directory as the virtual machine.
        
    -VMSwapfileDatastore <Datastore>
        Specifies a datastore that is visible to the host and can be used for storing swapfiles for the virtual machines that run on this host. Using a host-specific swap location might 
        degrade the VMotion performance.
        
    -Profile <VMHostProfile>
        Specifies a host profile you want to associate with the host. If the value of this parameter is $null, the current profile association is removed.
        
    -Evacuate
        If the value is $true, vCenter automatically reregisters the virtual machines that are compatible for reregistration. If they are not compatible, they remain on the host. If there 
        are powered-on virtual machines that cannot be reregistered the operation waits until they are powered off manually. The Evacuate parameter is valid only when connected to a vCenter 
        Server system and the State parameter is set to Maintenance. Also, the virtual machine host must be in a DRS-enabled cluster.
        
    -TimeZone <VMHostTimeZone>
        Specifies the time zone for the host by using its name or by providing the corresponding time zone object. Time zone names support wildcards. If the wildcards match more than one 
        time zones, an error is reported. Time zone objects can only be applied to the hosts they originate from.
        
    -LicenseKey <String>
        Specifies the license key to be used by the host. You can set the host to evaluation mode by passing the 00000-00000-00000-00000-00000 evaluation key.
        
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
    
    C:\PS>Set-VMHost -VMHost Host -State "Disconnected"
    
    Resets the state of the Host virtual host to disconnected.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$cluster = Get-Cluster -VMHost Host
    
    $task = Set-VMHost -VMHost Host -State "Maintenance" -RunAsync
    
    Get-DrsRecommendation -Cluster $cluster | where {$_.Reason -eq "Host is entering maintenance mode"} | Apply-DrsRecommendation
    
    $vmhost = Wait-Task $task
    
    Activate a maintenance mode for a not automated host that is part of a DRS-enabled cluster and has powered on virtual machines on it.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHost -examples".
    For more information, type: "get-help Set-VMHost -detailed".
    For technical information, type: "get-help Set-VMHost -full".
    For online help, type: "get-help Set-VMHost -online"

Set-VMHostAccount
-------------------------

NAME
    Set-VMHostAccount
    
SYNOPSIS
    This cmdlet configures a host account.
    
    
SYNTAX
    Set-VMHostAccount [-GroupAccount] <HostGroupAccount[]> [-AssignUsers <String[]>] [-UnassignUsers <String[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostAccount [-UserAccount] <HostUserAccount[]> [-Password <String>] [-Description <String>] [-AssignGroups <String[]>] [-UnassignGroups <String[]>] [-GrantShellAccess <Boolean>] 
    [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures a host account. When configuring a host user account, you can include or exclude the user from the specified groups.
    When configuring a host group account, you can include or exclude the specified users from this group.
    

PARAMETERS
    -GroupAccount <HostGroupAccount[]>
        Specifies the host group account you want to configure. Starting with ESXi 5.1, you cannot configure group host accounts.
        
    -AssignUsers <String[]>
        If a group host account is configured, specify the users you want to add to the account. Starting with ESXi 5.1, you cannot configure group host accounts.
        
    -UnassignUsers <String[]>
        If a group host account is to be configured, specifies the users you want to remove from the account.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -UserAccount <HostUserAccount[]>
        Specifies the host user account you want to configure.
        
    -Password <String>
        Specifies a new password for the account.
        
    -Description <String>
        Provides a description of the specified account. The maximum length of the text is 255 symbols.
        
    -AssignGroups <String[]>
        If a user host account is to be configured, specifies the group to which you want to add the account. Starting with ESXi 5.1, you cannot configure group host accounts.
        
    -UnassignGroups <String[]>
        If a user host account is to be configured, specifies a group from which you want to remove the account. Starting with ESXi 5.1, you cannot configure group host accounts.
        
    -GrantShellAccess [<Boolean>]
        Indicates that the account is allowed to access the ESX shell.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$myUserAccount = New-VMHostAccount -ID MyUser1 -Password MyPassword1 -UserAccount
    $myGroupAccount = New-VMHostAccount -ID MyGroup1 -GroupAccount -AssignUsers $myUserAccount
    Set-VMHostAccount -UserAccount $myUserAccount -UnassignGroups $myGroupAccount
    
    Creates a user account with an ID MyUser1. Then creates a group account with an ID MyGroup1 and assigns the user account MyUser1 to the group account MyGroup1. Finally, excludes the 
    MyUser1 account from the MyGroup1 account.
    Starting with ESXi 5.1, you cannot configure group host accounts.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostAccount -examples".
    For more information, type: "get-help Set-VMHostAccount -detailed".
    For technical information, type: "get-help Set-VMHostAccount -full".
    For online help, type: "get-help Set-VMHostAccount -online"

Set-VMHostAdvancedConfiguration
-------------------------

NAME
    Set-VMHostAdvancedConfiguration
    
SYNOPSIS
    This cmdlet modifies the advanced configuration settings of a host.
    
    
SYNTAX
    Set-VMHostAdvancedConfiguration [[-Name] <String>] [[-Value] <Object>] [-VMHost] <VMHost[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostAdvancedConfiguration [[-NameValue] <Hashtable>] [-VMHost] <VMHost[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet is deprecated. Use New-AdvancedSetting, Set-AdvancedSetting, or Remove-AdvancedSetting instead.
    
    This cmdlet modifies the advanced configuration settings of a host.
    

PARAMETERS
    -Name <String>
        Specifies the name of the host configuration setting you want to change.
        
    -Value <Object>
        Specifies a new value of the host configuration setting that you want to modify.
        
    -VMHost <VMHost[]>
        Specifies the host whose advanced configuration settings you want to change.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -NameValue <Hashtable>
        Provides a hash table that maps values to settings.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VMHost 10.23.123.144 | Set-VmHostAdvancedConfiguration -Name Migrate.NetTimeout -Value ( [system.int32] 10 )
    
    Change the migration timeout for the virtual machine host with an IP address 10.23.123.144.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$migrationSettings = Get-VMHost 10.23.123.144| Get-VmHostAdvancedConfiguration -Name Migrate.*
    
    Set-VmHostAdvancedConfiguration -VMHost 10.23.123.122  -NameValue $migrationSettings
    
    Gets the advanced settings concerning migration from the host with an IP address 10.23.123.144 and applies them to the virtual machine host with an IP address 10.23.123.122.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-VMHostAdvancedConfiguration -VMHost 10.23.112.120 -Name Migrate.Enabled -Value 1
    
    Enable VMotion on a host using Set-VMHostAdvancedConfiguration.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostAdvancedConfiguration -examples".
    For more information, type: "get-help Set-VMHostAdvancedConfiguration -detailed".
    For technical information, type: "get-help Set-VMHostAdvancedConfiguration -full".
    For online help, type: "get-help Set-VMHostAdvancedConfiguration -online"

Set-VMHostAuthentication
-------------------------

NAME
    Set-VMHostAuthentication
    
SYNOPSIS
    This cmdlet modifies the host authentication information.
    
    
SYNTAX
    Set-VMHostAuthentication [-Domain] <String> [[-Username] <String>] [[-Password] <SecureString>] [-Credential <PSCredential>] -JoinDomain -VMHostAuthentication <VMHostAuthentication[]> 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostAuthentication [-Force] -LeaveDomain -VMHostAuthentication <VMHostAuthentication[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the host authentication information.
    

PARAMETERS
    -Domain <String>
        Specifies a domain you want to join.
        
    -Username <String>
        Specifies a user name for authentication.
        
    -Password <SecureString>
        Specifies a password for authentication.
        
    -Credential <PSCredential>
        Specifies a credential object for authentication.
        
    -JoinDomain
        Indicates whether you want to join the specified domain.
        
    -VMHostAuthentication <VMHostAuthentication[]>
        Specifies the VMHostAuthentication object you want to modify.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Force
        If the value is $true, any existing permissions on the managed objects for Active Directory users are deleted and the cmdlet completes. If the value is $false, the cmdlet cannot run 
        if there are any existing permissions on managed objects for Active Directory users.
        
    -LeaveDomain
        Indicates whether you want to leave the currently joined domain.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vmhost | Get-VMHostAuthentication | Set-VMHostAuthentication -JoinDomain -Domain "DomainName.com" -User "Username1" -Password "Password1"
    
    Include an ESX host in a domain.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhost | Get-VMHostAuthentication | Set-VMHostAuthentication -LeaveDomain
    
    Exclude an ESX host  from a domain.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vmhost | Get-VMHostAuthentication | Set-VMHostAuthentication -LeaveDomain -Force
    
    Exclude an ESX host from a domain.  If AD account permissions are defined on the host, they will be removed.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostAuthentication -examples".
    For more information, type: "get-help Set-VMHostAuthentication -detailed".
    For technical information, type: "get-help Set-VMHostAuthentication -full".
    For online help, type: "get-help Set-VMHostAuthentication -online"

Set-VMHostDiagnosticPartition
-------------------------

NAME
    Set-VMHostDiagnosticPartition
    
SYNOPSIS
    This cmdlet activates or deactivates the diagnostic partitions of  hosts.
    
    
SYNTAX
    Set-VMHostDiagnosticPartition [-Active] <Boolean> [-VMHostDiagnosticPartition] <VMHostDiagnosticPartition[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet activates or deactivates the diagnostic partitions of hosts.
    

PARAMETERS
    -Active [<Boolean>]
        If the value of this parameter is $true, the partition state is changed to active. If the value is $false, the partition state is set to inactive.
        
    -VMHostDiagnosticPartition <VMHostDiagnosticPartition[]>
        Specifies the host diagnostic partition you want to set.
        
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
    
    C:\PS>$diagPartition = Get-VMHostDiagnosticPartition -VMHost $vmhost
    
    $diagPartition | Set-VMHostDiagnosticPartition -Active $false -Confirm
    
    Deactivates the active diagnostic partition of the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostDiagnosticPartition -examples".
    For more information, type: "get-help Set-VMHostDiagnosticPartition -detailed".
    For technical information, type: "get-help Set-VMHostDiagnosticPartition -full".
    For online help, type: "get-help Set-VMHostDiagnosticPartition -online"

Set-VMHostFirewallDefaultPolicy
-------------------------

NAME
    Set-VMHostFirewallDefaultPolicy
    
SYNOPSIS
    This cmdlet sets the default policy for the specified host firewall.
    
    
SYNTAX
    Set-VMHostFirewallDefaultPolicy [[-AllowIncoming] <Boolean>] [[-AllowOutgoing] <Boolean>] [-Policy] <VMHostFirewallDefaultPolicy[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet sets the default policy for the specified host firewall. This policy specifies whether outgoing or incoming connections are allowed. At least one of the AllowIncoming and 
    AllowOutgoing parameters must be set. When you configure the default firewall policy of an ESX/ESXi host version 5.0, you must provide the same value for the AllowIncoming and 
    AllowOutgoing parameters.
    

PARAMETERS
    -AllowIncoming [<Boolean>]
        If the value of this parameter is $true, all incoming connections are allowed. If the value is $false, all incoming connections are disallowed.
        
    -AllowOutgoing [<Boolean>]
        If the value of this parameter is $true, all outcoming connections are allowed. If the value is $false, all outcoming connections are disallowed.
        
    -Policy <VMHostFirewallDefaultPolicy[]>
        Specifies the host firewall default policy you want to apply.
        
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
    
    C:\PS>$firewallpolicy = Get-VMHostFirewallDefaultPolicy -VMHost 10.23.123.100
    
    Set-VMHostFirewallDefaultPolicy -Policy $firewallpolicy -AllowOutGoing $true | fl
    
    Changes the default firewall policy of the virtual machine host with IP address 10.23.123.100, so that the outgoing connections are allowed.
    
    
    
    VMHostId        : HostSystem-host-8
    IncomingEnabled : False
    OutgoingEnabled : True
    Client          : VMware.VimAutomation.Client20.VimClient
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostFirewallDefaultPolicy -examples".
    For more information, type: "get-help Set-VMHostFirewallDefaultPolicy -detailed".
    For technical information, type: "get-help Set-VMHostFirewallDefaultPolicy -full".
    For online help, type: "get-help Set-VMHostFirewallDefaultPolicy -online"

Set-VMHostFirewallException
-------------------------

NAME
    Set-VMHostFirewallException
    
SYNOPSIS
    This cmdlet enables or disables host firewall exceptions.
    
    
SYNTAX
    Set-VMHostFirewallException [-Enabled] <Boolean> [-Exception] <VMHostFirewallException[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet enables or disables host firewall exceptions.
    

PARAMETERS
    -Enabled [<Boolean>]
        If the value is $true, the specified firewall exceptions are enabled. If the value is $false, the firewall exceptions are disabled.
        
    -Exception <VMHostFirewallException[]>
        Specifies the firewall exceptions you want to enable or disable.
        
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
    
    C:\PS>$ftpFirewallExceptions = Get-VMHostFirewallException -VMHost $vmhost | where {$_.Name.StartsWith('FTP')}
    
    $ftpFirewallExceptions | Set-VMHostFirewallException -Enabled $true
    
    Enables the firewall exceptions for the FTP services on the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostFirewallException -examples".
    For more information, type: "get-help Set-VMHostFirewallException -detailed".
    For technical information, type: "get-help Set-VMHostFirewallException -full".
    For online help, type: "get-help Set-VMHostFirewallException -online"

Set-VMHostFirmware
-------------------------

NAME
    Set-VMHostFirmware
    
SYNOPSIS
    This cmdlet configures hosts firmware settings.
    
    
SYNTAX
    Set-VMHostFirmware [-VMHost] <VMHost[]> [-BackupConfiguration] -DestinationPath <String> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostFirmware [-VMHost] <VMHost[]> [-ResetToDefaults] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostFirmware [-VMHost] <VMHost[]> [-Restore] [-SourcePath <String>] [-Force] [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword <SecureString>] [-Server 
    <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures hosts firmware settings.
    If the BackupConfiguration parameter is set, backups the host configuration and downloads the bundle to the specified DestinationPath. In order to use the Restore and ResetToDefaults 
    parameters, the host needs to be in maintenance mode. The Backup functionality of Set-VMHostFirmware is deprecated and scheduled for removal. For making backups, use the 
    Get-VMHostFirmware cmdlet instead.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the host whose firmware you want to configure (it must be an ESX visor).
        
    -BackupConfiguration
        The Backup functionality of Set-VMHostFirmware is deprecated and scheduled for removal. For making backups, use the Get-VMHostFirmware cmdlet instead. 
        
        Indicates that you want to backup the host firmware configuration and download the bundle to the path specified by the DestinationPath parameter.
        
    -DestinationPath <String>
        Specifies a destination path where to download the host configuration backup bundle if the BackupConfiguration parameter is set.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -ResetToDefaults
        Indicates that you want to reset all configuration settings, including the "admin" password, to the factory defaults. The host is rebooted immediately. The host needs to be in a 
        maintenance in order to perform this operation.
        
    -Restore
        Indicates that you want to restore the configuration of the host to the one that is specified in the provided bundle. The bundle is uploaded to the URL retrieved via 
        Get-VMHostFirmware. This method resets all configuration options, including the "admin" password, to the values in the bundle. The host is rebooted immediately. The host needs to be 
        in maintenance mode in order to perform this operation.
        
    -SourcePath <String>
        Specifies the path to the host configuration backup bundle you want to restore. The bundle is uploaded to an URL address which you can retrieve by using the Get-VMHostFirmware 
        cmdlet.
        
    -Force
        Indicates that you want to apply the configuration even if the bundle is mismatched. Use this parameter in combination with the Restore parameter.
        
    -HostCredential <PSCredential>
        Specifies the credential object you want to use for authenticating with the host when uploading a firmware configuration bundle. Do not use this parameter if the HostUser and 
        HostPassword parameters are specified.
        
    -HostUser <String>
        Specifies a username for authenticating with the host when uploading a firmware configuration bundle.
        
    -HostPassword <SecureString>
        Specifies a password for the authenticating with the host when uploading a firmware configuration bundle.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Set-VMHost -VMHost Host -State 'Maintenance'
    
    Set-VMHostFirmware -VMHost Host -Restore
    
    Restore the host firmware by using the default path for the firmware bundle. You can store the bundle to the default path through HTTP by using the upload URL specified in the firmware 
    bundle object:
    
    $bundle = Get-VMHostFirmware
    
    $uploadUrl = $bundle.UploadUrl
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-VMHost -VMHost Host -State 'Maintenance'
    
    Set-VMHostFirmware -VMHost Host -Restore -SourcePath c:\bundleToRestore.tgz -HostUser user -HostPassword pass
    
    Restore the host firmware by specifying a firmware bundle as a source path.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Set-VMHost -VMHost Host -State 'Maintenance'
    
    Set-VMHostFirmware -VMHost Host -ResetToDefaults
    
    Reset the host configuration to the factory default settings.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VMHostFirmware -VMHost Host1, Host2 -BackupConfiguration -DestinationPath c:\StoredBundles
    
    Set-VMHost -VMHost Host1, Host2 -State 'Maintenance'
    
    Get-VMHost -Name Host1, Host2 | Set-VMHostFirmware -Restore -SourcePath c:\StoredBundles -HostUser user -HostPassword pass
    
    Restore multiple hosts firmware by specifying the firmware bundle as a source path directory. The command determines which bundle is needed for each host by the bundle name.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostFirmware -examples".
    For more information, type: "get-help Set-VMHostFirmware -detailed".
    For technical information, type: "get-help Set-VMHostFirmware -full".
    For online help, type: "get-help Set-VMHostFirmware -online"

Set-VMHostHba
-------------------------

NAME
    Set-VMHostHba
    
SYNOPSIS
    This cmdlet configures the CHAP properties of the specified iSCSI HBAs.
    
    
SYNTAX
    Set-VMHostHba -IScsiHba <IScsiHba[]> [-IScsiName <String>] [-ChapType <ChapType>] [-ChapName <String>] [-ChapPassword <String>] [-MutualChapEnabled <Boolean>] [-MutualChapName <String>] 
    [-MutualChapPassword <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures the CHAP properties of the specified iSCSI HBAs.
    If (Mutual)ChapType is set to a value different than “Prohibited”, (Mutual)ChapPassword must be set.
    ChapType, MutualChapType, MutualChapName, MutualChapPassword - these are only available on 4.1 or later.
    Note: Run Set-VmHostHba directly against ESX.  When Set-VmHostHba is run against vCenter Server, changing the iScsiName property of an iSCSI adapter modifies its 
    AuthenticationCapabilities property.
    

PARAMETERS
    -IScsiHba <IScsiHba[]>
        Specifies the iSCSI HBA device you want to configure.
        
    -IScsiName <String>
        Specifies a new name for the host HBA device.
        
    -ChapType <ChapType>
        Specifies the type of the CHAP authorization. The valid values are Prohibited, Discouraged, Preferred, and Required.
        
    -ChapName <String>
        Specifies the CHAP initiator name if CHAP is enabled.
        
    -ChapPassword <String>
        Specifies the CHAP password if CHAP is enabled.
        
    -MutualChapEnabled [<Boolean>]
        Indicates that Mutual CHAP authorization is enabled.
        
    -MutualChapName <String>
        Specifies the Mutual CHAP initiator name if Mutual CHAP is enabled.
        
    -MutualChapPassword <String>
        Specifies the Mutual CHAP password if Mutual CHAP is enabled.
        
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
    
    C:\PS>Get-VMHostHba -Type iScsi | Set-VMHostHba -ChapType Required -ChapName Admin -ChapPassword pass
    
    Changes the CHAP type of the available iScsi to Required.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-VMHostHba -IScsiHba $iscsi -MutualChapEnabled $true -ChapType Required -ChapName Admin -ChapPassword pass -MutualChapName Administrator -MutualChapPassword Pass
    
    Enables Mutual CHAP for the iScsi devices stored in the $iscsi variable and changes the CHAP type to Required.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostHba -examples".
    For more information, type: "get-help Set-VMHostHba -detailed".
    For technical information, type: "get-help Set-VMHostHba -full".
    For online help, type: "get-help Set-VMHostHba -online"

Set-VMHostModule
-------------------------

NAME
    Set-VMHostModule
    
SYNOPSIS
    This cmdlet overrides the host module options with the given ones.
    
    
SYNTAX
    Set-VMHostModule [-HostModule] <VmHostModule[]> [-Options] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet overrides the host module options with the given ones.
    

PARAMETERS
    -HostModule <VmHostModule[]>
        Specifies the host module you want to configure.
        
    -Options <String>
        Specifies the new options of the host module.
        
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
    
    C:\PS>$module = Get-VMHostModule -Name Shaper
    
    Set-VMHostModule -HostModule $module -Options "New options text"
    
    Overrides the options of the Shaper host module with the provided ones.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostModule Shaper | Set-VMHostModule -Options "New options text" -Confirm
    
    Overrides the options of the Shaper host module with the provided ones.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostModule -examples".
    For more information, type: "get-help Set-VMHostModule -detailed".
    For technical information, type: "get-help Set-VMHostModule -full".
    For online help, type: "get-help Set-VMHostModule -online"

Set-VMHostNetwork
-------------------------

NAME
    Set-VMHostNetwork
    
SYNOPSIS
    This cmdlet updates the specified virtual network.
    
    
SYNTAX
    Set-VMHostNetwork [-Network] <VMHostNetworkInfo[]> [-ConsoleGateway <String>] [-VMKernelGateway <String>] [-VMKernelGatewayDevice <String>] [-ConsoleGatewayDevice <String>] [-DomainName 
    <String>] [-HostName <String>] [-DnsFromDhcp <Boolean>] [-DnsDhcpDevice <Object>] [-DnsAddress <String[]>] [-SearchDomain <String[]>] [-IPv6Enabled <Boolean>] [-ConsoleV6Gateway 
    <String>] [-ConsoleV6GatewayDevice <String>] [-VMKernelV6Gateway <String>] [-VMKernelV6GatewayDevice <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet updates the specified virtual network. The service console and the VMkernel are often not connected to the same network, and therefore each needs its own gateway 
    information. A gateway is needed for connectivity to machines not on the same IP subnet as the service console or VMkernel.
    

PARAMETERS
    -Network <VMHostNetworkInfo[]>
        Specifies the host network you want to configure.
        
    -ConsoleGateway <String>
        Specifies a new console gateway.
        
    -VMKernelGateway <String>
        Specifies a new kernel gateway.
        
    -VMKernelGatewayDevice <String>
        Specifies a new kernel gateway device.
        
    -ConsoleGatewayDevice <String>
        Specifies a new console gateway device.
        
    -DomainName <String>
        Specifies a new domain name.
        
    -HostName <String>
        Specifies a new host name.
        
    -DnsFromDhcp [<Boolean>]
        Indicates that you want to obtain the network settings from a Dhcp server.
        
    -DnsDhcpDevice <Object>
        This parameter is mandatory if the value of the DnsFromDhcp parameter is 'true'. Otherwise, it is disregarded. If the DnsDhcpDevice parameter is set, the Dhcp DNS of the service 
        console or VMKernel network adapter will override the system DNS. The parameter takes a ServiceConsoleNIC object, a VMKernelNIC object in case of an ESX visor, or the NIC name as a 
        string.
        
    -DnsAddress <String[]>
        Specifies a new DNS address.
        
    -SearchDomain <String[]>
        Specifies a new search domain.
        
    -IPv6Enabled [<Boolean>]
        Indicates that IPv6 configuration is enabled. Setting this parameter to $false disables the ConsoleV6Gateway, ConsoleV6GatewayDevice, and VMKernelV6Gateway parameters. IPv6 is 
        supported only on vCenter 4.1 and ESX 4.1 or later. To use IPv6 on ESX, you must restart the host after enabling IPv6.
        
    -ConsoleV6Gateway <String>
        Specifies a console V6 gateway address.  Not supported on ESXi.
        
    -ConsoleV6GatewayDevice <String>
        Specifies a console V6 gateway device. Not supported on ESXi.
        
    -VMKernelV6Gateway <String>
        Specifies a VMKernel V6 gateway address. This parameter is supported only on ESX hosts.
        
    -VMKernelV6GatewayDevice <String>
        Specifies a VMKernel V6 gateway device. This parameter is supported only on ESX hosts.
        
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
    
    C:\PS>$vmHostNetworkInfo = Get-VmHostNetwork -Host Host
    
    Set-VmHostNetwork -Network $vmHostNetworkInfo -VMKernelGateway 10.23.11.11 -DomainName eng.vmware.com -HostName Host1 -DnsFromDhcp $false
    
    Gets the network configuration of the virtual machine host named Host. Sets the virtual machine kernel gateway, the domain name, the host name, and the Dhcp of the network.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHost Host | Get-VMHostNetwork | Set-VMHostNetwork -IPv6Enabled $true
    
    Get-VMHost Host | Restart-VMHost -Force -Confirm:$false
    
    Enables IPv6 support on the Host host and restarts the host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost Host | Get-VMHostNetwork | Set-VMHostNetwork -ConsoleV6Gateway $ipv6GatewayAddress -ConsoleV6GatewayDevice "vswif0"
    
    Configures the IPv6 console default gateway on the Host host.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VMHost Host | Get-VMHostNetwork | Set-VMHostNetwork -VMKernelV6Gateway $ipv6GatewayAddress
    
    Configures the IPv6 VMKernel default gateway on the Host host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostNetwork -examples".
    For more information, type: "get-help Set-VMHostNetwork -detailed".
    For technical information, type: "get-help Set-VMHostNetwork -full".
    For online help, type: "get-help Set-VMHostNetwork -online"

Set-VMHostNetworkAdapter
-------------------------

NAME
    Set-VMHostNetworkAdapter
    
SYNOPSIS
    This cmdlet configures the specified host network adapter.
    
    
SYNTAX
    Set-VMHostNetworkAdapter -PhysicalNic <PhysicalNic[]> [-Duplex <String>] [-BitRatePerSecMb <Int32>] [-AutoNegotiate] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostNetworkAdapter -VirtualNic <HostVirtualNic[]> [-Dhcp] [-IP <String>] [-SubnetMask <String>] [-Mac <String>] [-Mtu <Int32>] [-VMotionEnabled <Boolean>] 
    [-FaultToleranceLoggingEnabled <Boolean>] [-ManagementTrafficEnabled <Boolean>] [-VsanTrafficEnabled <Boolean>] [-IPv6ThroughDhcp <Boolean>] [-AutomaticIPv6 <Boolean>] [-IPv6 
    <String[]>] [-IPv6Enabled <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostNetworkAdapter -VirtualNic <HostVirtualNic[]> -PortGroup <DistributedPortGroup> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures the specified host network adapter. For a physical NIC, you can change the duplex and the bit rate settings (10, 100, 1000, 10000). For a regular virtual NIC, you 
    can change the IP address and the subnet mask. For a console virtual NIC, you can modify the IP and the subnet mask, or choose DHCP mode.
    

PARAMETERS
    -PhysicalNic <PhysicalNic[]>
        Specifies the PhysicalNIC objects you want to update.
        
    -Duplex <String>
        Indicates whether the link is capable of full-duplex. The valid values are Full and Half. You can set this parameter only when updating a PhysicalNIC. Use this parameter only if the 
        AutoNegotiate parameter is not set.
        
    -BitRatePerSecMb <Int32>
        Specifies the bit rate of the link. Only valid when configuring a physical NIC. Use this parameter only if the AutoNegotiate parameter is not set. Note that updating the speed 
        (BitRatePerSec) of a physical NIC might take some time due to the hardware configuration being performed, and the returned object might still contain the current configuration 
        instead of the updated one.
        
    -AutoNegotiate
        Indicates that the host network adapter speed/duplex settings are configured automatically. Use this parameter only if the Duplex and BitRatePerSecMb parameters are not set.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -VirtualNic <HostVirtualNic[]>
        Provide a list of the host network adapters you want to configure.
        
    -Dhcp
        Indicates whether the host network adapter uses a Dhcp server. This parameter works only on ESXi hosts. For VMKernel adapters, Dhcp is supported only on ESX 4.1 and later.
        
    -IP <String>
        Specifies an IP address for the network adapter using an IPv4 dot notation. If the NIC has no subnet mask previously defined, you must also set the SubnetMask parameter. If the IP 
        parameter is not specified, DHCP mode is enabled. Only valid when configuring a virtual NIC.
        
    -SubnetMask <String>
        Specifies a subnet mask for the NIC. If the NIC has a subnet mask previously defined, specifying the SubnetMask parameter when configuring the IP address is not mandatory unless you 
        want to modify the mask. Only valid when configuring a virtual NIC.
        
    -Mac <String>
        Specifies the media access control (MAC) address of the virtual network adapter. Only valid when configuring a virtual NIC.
        
    -Mtu <Int32>
        Specifies the MTU size.
        
    -VMotionEnabled [<Boolean>]
        Indicates that you want to use the virtual host/VMKernel network adapter for VMotion.
        
    -FaultToleranceLoggingEnabled [<Boolean>]
        Indicates that the network adapter is enabled for Fault Tolerance (FT) logging. This parameter is supported only on ESX/vCenter Server 4.1 and later.
        
    -ManagementTrafficEnabled [<Boolean>]
        Indicates that you want to enable the network adapter for management traffic. This parameter is supported only on ESX/ESXi/vCenter Server 4.1 and later.
        
    -VsanTrafficEnabled [<Boolean>]
        Specifies whether Virtual SAN traffic is enabled on this network adapter.
        
    -IPv6ThroughDhcp [<Boolean>]
        Indicates that the IPv6 address is obtained through DHCP.
        
    -AutomaticIPv6 [<Boolean>]
        Indicates that the IPv6 address is obtained through a router advertisement.
        
    -IPv6 <String[]>
        Specifies static addresses using the following format: <IPv6>/<subnet_prefix_length> or <IPv6>. If you skip <subnet_prefix_length>, the default value of 64 is used. Specifying a 
        value for IPv6 parameter overrides the current configuration. To clear all configured static IP addresses, pass an empty array to the IPv6 parameter.
        
    -IPv6Enabled [<Boolean>]
        Indicates that IPv6 configuration is enabled. Setting this parameter to $false disables all IPv6-related parameters. If the value is $true", you need to provide values for at least 
        one of the IPv6ThroughDhcp, AutomaticIPv6, and IPv6 parameters.
        
    -PortGroup <DistributedPortGroup>
        Specifies a distributed port group to which you want to connect the host network adapter. You can use this parameter only to migrate a virtual network adapter from a standard port 
        group to a distributed port group.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vswitch =  New-VirtualSwitch -VMHost 10.23.112.234  -Name VSwitch
    
    $nic =  New-VMHostNetworkAdapter -VMHost 10.23.112.234 -PortGroup PortGroup -VirtualSwitch $vswitch -IP 10.23.123.234 -SubnetMask 255.255.254.0
    
    Set-VMHostNetworkAdapter -VirtualNIC $nic -IP 10.23.112.245 -SubnetMask 255.255.255.0 -Mtu 4000
    
    Updates the network adapter IP address, Subnet mask, and MTU size.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHost Host | Get-VMHostNetworkAdapter -VMKernel | Set-VMHostNetworkAdapter -VMotionEnabled $true
    
    Enable VMotion on all VMKernel network adapters on the specified host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHostNetworkAdapter | where { $_.PortGroupName -eq "Service Console 1" } | Set-VMHostNetworkAdapter -IPv6Enabled $false
    
    Disables the IPv6 support on a network adapter.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VMHostNetworkAdapter | where { $_.PortGroupName -eq "Service Console 1" } | Set-VMHostNetworkAdapter -IPv6ThroughDhcp $true
    
    Configures a network adapter to obtain IPv6 through DHCP.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-VMHostNetworkAdapter | where { $_.PortGroupName -eq "Service Console 1" } | Set-VMHostNetworkAdapter -AutomaticIPv6 $true
    
    Configures a network adapter to obtain IPv6 by a router advertisement.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>Get-VMHostNetworkAdapter | where { $_.PortGroupName -eq "Service Console 1" } | Set-VMHostNetworkAdapter -IPv6 $ipv6Address
    
    Changes the IPv6 address of a network adapter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostNetworkAdapter -examples".
    For more information, type: "get-help Set-VMHostNetworkAdapter -detailed".
    For technical information, type: "get-help Set-VMHostNetworkAdapter -full".
    For online help, type: "get-help Set-VMHostNetworkAdapter -online"

Set-VMHostProfile
-------------------------

NAME
    Set-VMHostProfile
    
SYNOPSIS
    This cmdlet modifies the specified host profile.
    
    
SYNTAX
    Set-VMHostProfile [[-Name] <String>] [[-ReferenceHost] <VMHost>] [-Profile] <VMHostProfile[]> [-Description <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the specified host profile.
    

PARAMETERS
    -Name <String>
        Specifies a new name for the host profile.
        
    -ReferenceHost <VMHost>
        Specifies a reference host for the host profile.
        
    -Profile <VMHostProfile[]>
        Specifies the host profile you want to modify.
        
    -Description <String>
        Specifies a new description for the host profile.
        
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
    
    C:\PS>$profile = ( Get-VMHostProfile -Name Profile )[0]
    
    Set-VMHostProfile -Profile $profile -Description "New description."
    
    Changes the description of the Profile host profile.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostProfile -examples".
    For more information, type: "get-help Set-VMHostProfile -detailed".
    For technical information, type: "get-help Set-VMHostProfile -full".
    For online help, type: "get-help Set-VMHostProfile -online"

Set-VMHostRoute
-------------------------

NAME
    Set-VMHostRoute
    
SYNOPSIS
    This cmdlet modifies a route in the host routing table.
    
    
SYNTAX
    Set-VMHostRoute [-VMHostRoute] <VMHostRoute[]> [-Destination <IPAddress>] [-Gateway <IPAddress>] [-PrefixLength <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies a route in the host routing table.
    

PARAMETERS
    -VMHostRoute <VMHostRoute[]>
        Specifies the route you want to modify.
        
    -Destination <IPAddress>
        Changes the destination IP address of the route.
        
    -Gateway <IPAddress>
        Changes the gateway IP address of the route.
        
    -PrefixLength <Int32>
        Modifies the prefix length of the destination IP address. For IPv4, the valid values are from 0 to 32, and for IPv6 - from 0 to 128.
        
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
    
    C:\PS>$vmhostroute = New-VMHostRoute -VMHost 10.23.114.189 -Destination 192.168.104.101 -Gateway 10.23.84.69 -PrefixLength 32
    
    $vmhostroute | Set-VMHostRoute -Gateway 10.23.84.70
    
    Creates a new host route and modifies its gateway.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhostroute1 = New-VMHostRoute -VMHost 10.23.114.189 -Destination 192.168.104.101 -Gateway 10.23.84.69 -PrefixLength 32
    
    $vmhostroute2 = New-VMHostRoute -VMHost 10.23.114.190 -Destination 192.168.104.101 -Gateway 10.23.84.70 -PrefixLength 32
    
    Set-VMHostRoute -VMHostRoute ($vmhostroute1, $vmhostroute2) -Destination 192.168.104.0 -PrefixLength 24
    
    Modifies the destination and the prefix length of two host routes.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostRoute -examples".
    For more information, type: "get-help Set-VMHostRoute -detailed".
    For technical information, type: "get-help Set-VMHostRoute -full".
    For online help, type: "get-help Set-VMHostRoute -online"

Set-VMHostService
-------------------------

NAME
    Set-VMHostService
    
SYNOPSIS
    This cmdlet modifies a host service.
    
    
SYNTAX
    Set-VMHostService [-HostService] <HostService[]> [-Policy] <HostServicePolicy> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies a host service.
    

PARAMETERS
    -HostService <HostService[]>
        Specifies the host service you want to update.
        
    -Policy <HostServicePolicy>
        Specifies an activation policy for the host service.
        
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
    
    C:\PS>Get-VMHostService -VMHost Host | Set-VMHostService -Policy "Automatic"
    
    Sets the policy of all services the Host virtual machine host to "Automatic".
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostService -examples".
    For more information, type: "get-help Set-VMHostService -detailed".
    For technical information, type: "get-help Set-VMHostService -full".
    For online help, type: "get-help Set-VMHostService -online"

Set-VMHostSnmp
-------------------------

NAME
    Set-VMHostSnmp
    
SYNOPSIS
    This cmdlet modifies the host SNMP configuration.
    
    
SYNTAX
    Set-VMHostSnmp [-HostSnmp] <VmHostSnmp[]> [-Enabled <Boolean>] [-Port <Int32>] [-ReadOnlyCommunity <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostSnmp [-HostSnmp] <VmHostSnmp[]> [-Enabled <Boolean>] [-Port <Int32>] [-ReadOnlyCommunity <String[]>] -TargetCommunity <String> [-TargetPort <Int32>] -TargetHost <String> 
    -AddTarget [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostSnmp [-HostSnmp] <VmHostSnmp[]> [-Enabled <Boolean>] [-Port <Int32>] [-ReadOnlyCommunity <String[]>] [-TargetCommunity <String>] [-TargetPort <Int32>] [-TargetHost <String>] 
    -RemoveTarget [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMHostSnmp [-HostSnmp] <VmHostSnmp[]> [-Enabled <Boolean>] [-Port <Int32>] [-ReadOnlyCommunity <String[]>] [-RemoveTarget] -TrapTargetToRemove <TrapTarget> [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the host SNMP configuration. If specified, adds or removes a trap target (removing can be specified by either TrapTargetToRemove parameter or by any of the 
    following parameters (or combination of them): TargetCommunity, TargetHost, TargetPort). If the user passes $null, an empty array or string to the ReadOnlyCommunities parameter,  the 
    old values of this property are erased. This results in a NULL value of this property of the output object.
    

PARAMETERS
    -HostSnmp <VmHostSnmp[]>
        Specifies the host Snmp object you want to modify.
        
    -Enabled [<Boolean>]
        Indicates that the SNMP feature is enabled on the specified host.
        
    -Port <Int32>
        Specifies the port on which the host listens to SNMP messages.
        
    -ReadOnlyCommunity <String[]>
        Provide a list of communities, identifying who is able to send SNMP requests to that host. If $null, an empty array or string are passed to this parameter, its old values are erased 
        and the output object for the ReadOnlyCommunity property is an empty array. In PowerShell an empty array is defined by @().
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -TargetCommunity <String>
        Specifies the community identifier of the trap target.
        
    -TargetPort <Int32>
        Specifies the port on which the target host listens to SNMP messages.
        
    -TargetHost <String>
        Specifies the identifier of the target host - a host name or an IP address.
        
    -AddTarget
        Indicates that you want to add a new trap target to the host SNMP configuration. A trap target consists of three elements - Community (mandatory), HostName (mandatory), Port 
        (optional - defaults to 162), specified by the TargetCommunity, TargetHost, and TargetPort parameters.
        
    -RemoveTarget
        Indicates that you want to remove a trap target from the host SNMP configuration. There are two ways to specify a trap target:
        * Pass the trap target to the TrapTargetToRemove parameter.
        * Use a combination of the TargetCommunity, TargetHost, and TargetPort parameters to specify a criteria (for example, remove all trap targets that are using port 162).
        
    -TrapTargetToRemove <TrapTarget>
        Specifies the trap target you want to remove. The trap target can be obtained from the “TrapTargets” property of the HostSNMP object (an array of TrapTarget objects).
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vmhostSNMP = Get-VMHostSNMP
    
    Set-VMHostSNMP $vmhostSNMP -Enabled:$true -ReadOnlyCommunity 'example-community'
    
    Enables SNMP on a virtual machine host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHostSnmp | Set-VMHostSnmp -ReadonlyCommunity @()
    
    Sets the virtual machine host SNMP by erasing the old value of the ReadOnlyCommunity parameter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostSnmp -examples".
    For more information, type: "get-help Set-VMHostSnmp -detailed".
    For technical information, type: "get-help Set-VMHostSnmp -full".
    For online help, type: "get-help Set-VMHostSnmp -online"

Set-VMHostStartPolicy
-------------------------

NAME
    Set-VMHostStartPolicy
    
SYNOPSIS
    This cmdlet modifies the host default start policy.
    
    
SYNTAX
    Set-VMHostStartPolicy [-VMHostStartPolicy] <VMHostStartPolicy[]> [-Enabled <Boolean>] [-StartDelay <Int32>] [-StopAction <VmStopAction>] [-StopDelay <Int32>] [-WaitForHeartBeat 
    <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the host default start policy. Start policy defines what happens to virtual machines when the server starts up or stops.
    

PARAMETERS
    -VMHostStartPolicy <VMHostStartPolicy[]>
        Specifies the host start policy you want to modify.
        
    -Enabled [<Boolean>]
        Indicates that the service that controls the host start policies is enabled. If it is enabled, the default start policies and the start policies of the specified hosts are applied. 
        If disabled, no start policy is applied.
        
    -StartDelay <Int32>
        Specifies a default start delay of the virtual machines in seconds.
        
    -StopAction <VmStopAction>
        Specifies the default action that is applied to the virtual machines when the server stops. The valid values are None, Suspend, PowerOff, or GuestShutDown.
        
    -StopDelay <Int32>
        Specifies a default stop delay of the virtual machines in seconds.
        
    -WaitForHeartBeat [<Boolean>]
        Specifies whether the virtual machines should start after receiving a heartbeat from the host, ignore heartbeats, and start after the StartDelay has elapsed ($true), or follow the 
        system default before powering on ($false). When a virtual machine is next in the start order, the system either waits a specified period of time for a host to power on or it waits 
        until it receives a successful heartbeat from a powered-on host.
        
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
    
    C:\PS>Get-VMHost Host | Get-VMHostStartPolicy | Set-VMHostStartPolicy -Enabled:$true -StartOrder 2 -StartDelay 300 -StopAction GuestShutDown -StopDelay 300
    
    Retrieves the start policy of the Host host and modifies its configuration settings.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMHost Host | Get-VMHostStartPolicy | Set-VMHostStartPolicy -WaitForHeartbeat
    
    Retrieves the start policy of the Host host and modifies its configuration settings, so that virtual machines on the specified host wait for the host heartbeat.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostStartPolicy -examples".
    For more information, type: "get-help Set-VMHostStartPolicy -detailed".
    For technical information, type: "get-help Set-VMHostStartPolicy -full".
    For online help, type: "get-help Set-VMHostStartPolicy -online"

Set-VMHostStorage
-------------------------

NAME
    Set-VMHostStorage
    
SYNOPSIS
    This cmdlet configures a host storage.
    
    
SYNTAX
    Set-VMHostStorage -VMHostStorage <VMHostStorageInfo[]> -SoftwareIScsiEnabled <Boolean> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures a host storage. The cmdlet enables or disables the software iSCSI support for the specified VMHostStorage objects.
    

PARAMETERS
    -VMHostStorage <VMHostStorageInfo[]>
        Specifies the host storage you want to configure.
        
    -SoftwareIScsiEnabled [<Boolean>]
        Indicates that on this storage, software iSCSI is enabled.
        
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
    
    C:\PS>Get-VMHostStorage 10.23.112.234 | Set-VMHostStorage -SoftwareIScsiEnabled $true
    
    Enables the iSCSI on the specified storage.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostStorage -examples".
    For more information, type: "get-help Set-VMHostStorage -detailed".
    For technical information, type: "get-help Set-VMHostStorage -full".
    For online help, type: "get-help Set-VMHostStorage -online"

Set-VMHostSysLogServer
-------------------------

NAME
    Set-VMHostSysLogServer
    
SYNOPSIS
    This cmdlet configures the remote syslog server of the specified hosts.
    
    
SYNTAX
    Set-VMHostSysLogServer [[-SysLogServer] <NamedIPEndPoint[]>] [-VMHost] <VMHost[]> [-SysLogServerPort <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures the remote syslog server of the specified hosts.
    

PARAMETERS
    -SysLogServer <NamedIPEndPoint[]>
        Specifies the sys log servers you want to configure. The parameter accepts objects of the NamedIPEndPoint, IPEndPoint, IPAddress, and String types.
        The accepted formats, if string is used, are DNS names and the standard IPv6/IPv4 format: FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:192.168.0.1:80, where the FFFF:FFFF:FFFF:FFFF:FFFF:FFFF can 
        be replaced by any hex value with the same structure (both upper or lower case). It is only meaningful in case of IPv6 address and is omitted for IPv4. The 192.168.0.1 part is 
        mandatory and can be any address in the IPv4 format. The :80 part is optional. If omitted, the port must be specified through the SysLogServerPort parameter. If Syslog is set to 
        $null, the configured syslog server, if any, is removed.
        
    -VMHost <VMHost[]>
        Specifies the host whose syslog servers you want to configure.
        
    -SysLogServerPort <Int32>
        Specifies the sys log server port. Must be specified if the string that is passed to the SysLogServer parameter does not contain the port value, or the argument of the SysLogServer 
        is an IP address.
        
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
    
    C:\PS>Set-VMHostSysLogServer -SysLogServer '192.168.0.1:133' -VMHost Host
    
    Sets a SysLog server on the Host virtual machine host.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-VMHostSysLogServer -SysLogServer $null -VMHost Host
    
    Removes the SysLog server from the Host virtual machine host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMHostSysLogServer -examples".
    For more information, type: "get-help Set-VMHostSysLogServer -detailed".
    For technical information, type: "get-help Set-VMHostSysLogServer -full".
    For online help, type: "get-help Set-VMHostSysLogServer -online"

Set-VMQuestion
-------------------------

NAME
    Set-VMQuestion
    
SYNOPSIS
    This cmdlet answers the specified virtual machine question.
    
    
SYNTAX
    Set-VMQuestion -VMQuestion <VMQuestion[]> [-Option] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Set-VMQuestion -VMQuestion <VMQuestion[]> -DefaultOption [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet answers the specified virtual machine question using the value of the Option parameter.  If the DefaultOption parameter is set to $true, the cmdlet answers the question with 
    a default option, if any.
    

PARAMETERS
    -VMQuestion <VMQuestion[]>
        Specifies the virtual machine question you want to answer.
        
    -Option <Object>
        Specifies an object or string to provide an option to the virtual machine question. Wildcards are supported for string values. The string can be used to specify an option ID or 
        label. If the string does not match a valid option ID or label, or if there are multiple matches, an error is generated.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -DefaultOption
        Indicates that you want to answer the virtual machine question using a default option. If no default option exists for the question, an error is generated.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Set-VMQuestion -VMQuestion $question -DefaultOption
    
    Answers the question stored in the $question with a default option.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Set-VMQuestion -VMQuestion $question -Option "Cancel"
    
    Answers the question stored in the $question variable with "cancel".
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VM VM | Get-VMQuestion | Set-VMQuestion -DefaultOption
    
    Answers the question of VM virtual machine with a default option.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMQuestion -examples".
    For more information, type: "get-help Set-VMQuestion -detailed".
    For technical information, type: "get-help Set-VMQuestion -full".
    For online help, type: "get-help Set-VMQuestion -online"

Set-VMResourceConfiguration
-------------------------

NAME
    Set-VMResourceConfiguration
    
SYNOPSIS
    This cmdlet configures resource allocation between the virtual machines.
    
    
SYNTAX
    Set-VMResourceConfiguration [-Configuration] <VMResourceConfiguration[]> [-HtCoreSharing <HTCoreSharing>] [-CpuAffinity <CpuAffinity>] [-CpuAffinityList <Int32[]>] [-CpuReservationMhz 
    <Int64>] [-CpuLimitMhz <Int64>] [-CpuSharesLevel <SharesLevel>] [-NumCpuShares <Int32>] [-MemReservationMB <Int64>] [-MemReservationGB <Decimal>] [-MemLimitMB <Int64>] [-MemLimitGB 
    <Decimal>] [-MemSharesLevel <SharesLevel>] [-NumMemShares <Int32>] [-Disk <HardDisk[]>] [-NumDiskShares <Int32>] [-DiskSharesLevel <SharesLevel>] [-DiskLimitIOPerSecond <Int64>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet configures resource allocation between the virtual machines. To retain the current value of a setting, omit the corresponding parameter. To disable a setting (only 
    applicable to the nullable limit settings), pass $null.
    

PARAMETERS
    -Configuration <VMResourceConfiguration[]>
        Specifies the configuration object you want to modify.
        
    -HtCoreSharing <HTCoreSharing>
        Specifies whether a virtual machine is scheduled to share a physical processor core (assuming hyperthreading is enabled on the host at all). The following values are valid:
        
        Any - (default) the virtual CPUs of this virtual machine can freely share cores with other virtual CPUs of this or other virtual machines.
        
        None - the virtual CPUs of this virtual machine have exclusive use of a processor core whenever they are scheduled to it. The other hyperthread of the core is "halted" while this 
        virtual machine is using the core.
        
        Internal - on a virtual machine with exactly two virtual processors, the two virtual processors are allowed to share one physical core (at the discretion of the ESX scheduler), but 
        this virtual machine never shares a core with any other virtual machine. If this virtual machine has any other number of processors than two, this setting is the same as the None 
        setting.
        
    -CpuAffinity <CpuAffinity>
        The use of this parameter is deprecated. Use CpuAffinityList instead.
        
        Specifies the distribution of virtual machine CPUs across the physical cores or hyperthreads of the host. You must pass exactly as many arguments as the number of CPUs of the 
        virtual machine. Each argument specifies the physical core or hyperthread that the virtual machine will use. Valid arguments are NoAffinity, Cpu1, …, Cpu63.
        
        When the virtual machine resides in a DRS cluster, you cannot use CpuAffinity.
        
    -CpuAffinityList <Int32[]>
        Specifies the distribution of virtual machine CPUs across the physical cores or hyperthreads of the host. You must pass exactly as many arguments as the number of CPUs of the 
        virtual machine. Each argument specifies the physical core or hyperthread that the virtual machine will use. Valid arguments are positive integers. To clear formerly specified 
        arguments, pass an empty array.
        
        When the virtual machine resides in a DRS cluster, you cannot use CpuAffinityList.
        
    -CpuReservationMhz <Int64>
        Specifies the number of CPU MHz that are guaranteed to be available.
        
    -CpuLimitMhz <Int64>
        Specifies the limit on CPU usage in MHz. Utilization will not exceed this limit even if there are available resources.
        
    -CpuSharesLevel <SharesLevel>
        Specifies the CPU allocation level. Used in relative allocation between virtual machines. The valid values are Custom, High, Low, and Normal.
        
    -NumCpuShares <Int32>
        Specifies the CPU allocation level for this pool. Used in relative allocation between resource consumers. This parameter is ignored unless CpuSharesLevel is set to Custom.
        
    -MemReservationMB <Int64>
        This parameter is obsolete. Use MemReservationGB instead.
        Specifies the guaranteed available memory in megabytes (MB).
        
    -MemReservationGB <Decimal>
        Specifies the guaranteed available memory in gigabytes (GB).
        
    -MemLimitMB <Int64>
        This parameter is obsolete. Use MemLimitGB instead.
        Specifies a memory usage limit in megabytes (MB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
        
    -MemLimitGB <Decimal>
        Specifies a memory usage limit in gigabytes (GB). If this parameter is set, utilization will not exceed the specified limit even if there are available resources.
        
    -MemSharesLevel <SharesLevel>
        Specifies the memory allocation level for this pool. Used in relative allocation between resource consumers. The valid values are Custom, High, Low, and Normal.
        
    -NumMemShares <Int32>
        Specifies the number of memory shares allocated. Used to determine resource allocation in case of resource contention.
        
    -Disk <HardDisk[]>
        Specifies the virtual hard disk you want to configure.
        
    -NumDiskShares <Int32>
        Specifies the number of shares allocated. Used to determine resource allocation in case of resource contention.
        
    -DiskSharesLevel <SharesLevel>
        Specifies the allocation level. The level is a simplified view of shares. Levels map to a pre-determined set of numeric values for shares. If the shares value does not map to a 
        predefined size, then the level is set as custom.
        
    -DiskLimitIOPerSecond <Int64>
        Specifies the disk limit IO per second. The valid values are in the range between 16 and 2147483647. -1 means unlimited.
        
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
    
    C:\PS>Set-VMResourceConfiguration -Configuration $conf -CpuAffinity ([CpuAffinity]::Cpu1 -bor [CpuAffinity]::Cpu2)
    
    Specifies two affinities for the virtual machine resource configuration in the $conf variable. Bit Or is used.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMResourceConfiguration -examples".
    For more information, type: "get-help Set-VMResourceConfiguration -detailed".
    For technical information, type: "get-help Set-VMResourceConfiguration -full".
    For online help, type: "get-help Set-VMResourceConfiguration -online"

Set-VMStartPolicy
-------------------------

NAME
    Set-VMStartPolicy
    
SYNOPSIS
    This cmdlet modifies the virtual machine start policy.
    
    
SYNTAX
    Set-VMStartPolicy [-StartPolicy] <VMStartPolicy[]> [-StartAction <VmStartAction>] [-StartOrder <Int32>] [-InheritStopActionFromHost] [-InheritStopDelayFromHost] 
    [-InheritWaitForHeartbeatFromHost] [-InheritStartDelayFromHost] [-UnspecifiedStartOrder] [-StartDelay <Int32>] [-StopAction <VmStopAction>] [-StopDelay <Int32>] [-WaitForHeartBeat 
    <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet modifies the virtual machine start policy. Start policy defines what happens to virtual machines when the server starts up or stops.
    

PARAMETERS
    -StartPolicy <VMStartPolicy[]>
        Specifies the virtual machine start policy you want to modify.
        
    -StartAction <VmStartAction>
        Specifies a start action for virtual machines. It can be None or PowerOn.
        
    -StartOrder <Int32>
        Specifies a number to define the virtual machines start order.
        
    -InheritStopActionFromHost
        Indicates that the virtual machine uses the value of the StopAction parameter of the host.
        
    -InheritStopDelayFromHost
        Indicates that the virtual machine uses the value of the StopDelay parameter of the host.
        
    -InheritWaitForHeartbeatFromHost
        Indicates that the virtual machine uses the value of the WaitforHeartbeat parameter of the host.
        
    -InheritStartDelayFromHost
        Indicates that the virtual machine uses the value of the StartDelay parameter of the host.
        
    -UnspecifiedStartOrder
        Indicates that no order is defined for starting the virtual machines.
        
    -StartDelay <Int32>
        Specifies a default start delay in seconds.
        
    -StopAction <VmStopAction>
        Specifies the default action of the virtual machine when the server stops. The valid values are None, Suspend, PowerOff, and GuestShutDown.
        
    -StopDelay <Int32>
        Specifies the default stop delay in seconds.
        
    -WaitForHeartBeat [<Boolean>]
        Indicates whether the virtual machine should start after receiving a heartbeat, ignore heartbeats and start after the StartDelay has elapsed ($true), or follow the system default 
        before powering on ($false). When a virtual machine is next in the start order, the system either waits a specified period of time for a virtual machine to power on or it waits 
        until it receives a successful heartbeat from a powered on virtual machine.
        
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
    
    C:\PS>$vmstartpolicy = Get-VMStartPolicy -VM VM
    
    Set-VMStartPolicy -StartPolicy $vmstartpolicy -StartAction PowerOn
    
    Retrieves the start policy of the VM virtual machine and defines that when the server starts, the virtual machine is powered on.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VM VM | Get-VMStartPolicy | Set-VMStartpolicy -InheritStopActionFromHost -InheritStopDelayFromHost
    
    Reconfigures the start policy of the VM virtual machine to inherit the values of the StopAction and StopDelay from the host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VM VM | Get-VMStartPolicy | Set-VMStartpolicy -StartAction PowerOn -StartOrder 2 -StartDelay 300 -StopAction GuestShutDown -StopDelay 300
    
    Retrieve the start policy of the specified virtual machine and modify its configuration settings.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-VMStartPolicy -examples".
    For more information, type: "get-help Set-VMStartPolicy -detailed".
    For technical information, type: "get-help Set-VMStartPolicy -full".
    For online help, type: "get-help Set-VMStartPolicy -online"



