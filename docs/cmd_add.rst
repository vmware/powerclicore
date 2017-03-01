Add Commands
=========================

This page contains details on **Add** commands.

Add-PassthroughDevice
-------------------------


NAME
    Add-PassthroughDevice
    
SYNOPSIS
    This cmdlet attaches pass-through devices to the specified virtual machine.
    
    
SYNTAX
    Add-PassthroughDevice [-VM] <VirtualMachine[]> [-PassthroughDevice] <PassThroughDevice[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet attaches pass-through devices to the specified virtual machine. Note that the value of the ControllerKey property of the returned device might not be up to date, if a new 
    SCSI controller creation process  is running in the background.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machine to which you want to attach the passthrough devices.
        
    -PassthroughDevice <PassThroughDevice[]>
        Specifies the passthrough devices you want to add to the virtual machine.
        
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
    
    C:\PS>$scsiDeviceList = Get-PassthroughDevice -VMHost Host -Type Scsi
    
    Add-PassthroughDevice -VM $vm -PassthroughDevice $scsiDeviceList[0]
    
    Adds the first SCSI passthrough device of the Host host to the $vm virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Add-PassthroughDevice -examples".
    For more information, type: "get-help Add-PassthroughDevice -detailed".
    For technical information, type: "get-help Add-PassthroughDevice -full".
    For online help, type: "get-help Add-PassthroughDevice -online"

Add-VDSwitchPhysicalNetworkAdapter
-------------------------

NAME
    Add-VDSwitchPhysicalNetworkAdapter
    
SYNOPSIS
    This cmdlet adds host physical network adapters to a vSphere distributed switch.
    
    
SYNTAX
    Add-VDSwitchPhysicalNetworkAdapter [-VMHostPhysicalNic] <PhysicalNic[]> [-DistributedSwitch] <DistributedSwitch> [-VirtualNicPortgroup <VDPortgroup[]>] [-VMHostVirtualNic 
    <HostVirtualNic[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet adds host physical network adapters to a vSphere distributed switch.
    

PARAMETERS
    -VMHostPhysicalNic <PhysicalNic[]>
        Specifies the host physical network adapters that you want to add or migrate to the vSphere distributed switch.
        
    -DistributedSwitch <DistributedSwitch>
        Specifies the vSphere distributed switch to which you want to add the host physical network adapter.
        
    -VirtualNicPortgroup <VDPortgroup[]>
        Specifies the port groups to which to attach the host virtual network adapters. Accepts either one port group, or the same number of port groups as the number of virtual network 
        adapters specified. If one port group is specified, all adapters are attached to that port group. If the same number of port groups as the number of virtual network adapters are 
        specified, the first adapter is attached to the first port group, the second adapter - to the second port group, and so on.
        
    -VMHostVirtualNic <HostVirtualNic[]>
        Specifies the host virtual network adapters to be migrated along with the physical adapter, so that their connectivity is preserved.
        
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
    
    C:\PS>$vmhostNetworkAdapter = Get-VMHost "MyVMHost" | Get-VMHostNetworkAdapter -Physical -Name vmnic2
    Get-VDSwitch "MyVDSwitch" | Add-VDSwitchPhysicalNetworkAdapter -VMHostPhysicalNic $vmhostNetworkAdapter
    
    Retrieves the specified physical network adapter from the specified host and adds it to the specified vSphere distributed switch.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVMHost = Get-VMHost "MyVMHost"
    $physicalNic = Get-VMHostNetworkAdapter -VMHost $myVMHost -Name "vmnic0"
    $virtualNic = Get-VMHostNetworkAdapter -VMHost $myVMHost -Name "vmk0"
    Get-VDSwitch -Name "MyVDSwitch" | Add-VDSwitchPhysicalNetworkAdapter -VMHostPhysicalNic $physicalNic -VMHostVirtualNic $virtualNic -VirtualNicPortgroup 'MyVDPortGroup'
    
    Migrates a host physical network adapter and a virtual network adapter to a vSphere distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Add-VDSwitchPhysicalNetworkAdapter -examples".
    For more information, type: "get-help Add-VDSwitchPhysicalNetworkAdapter -detailed".
    For technical information, type: "get-help Add-VDSwitchPhysicalNetworkAdapter -full".
    For online help, type: "get-help Add-VDSwitchPhysicalNetworkAdapter -online"

Add-VDSwitchVMHost
-------------------------

NAME
    Add-VDSwitchVMHost
    
SYNOPSIS
    This cmdlet adds hosts to the specified vSphere distributed switch.
    
    
SYNTAX
    Add-VDSwitchVMHost -VDSwitch <VDSwitch> -VMHost <VMHost[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet adds hosts to the specified vSphere distributed switch. The physical network adapters of the hosts are not connected to the vSphere distributed switch.
    

PARAMETERS
    -VDSwitch <VDSwitch>
        Specifies the vSphere distributed switch to which you want to add one or more hosts.
        
    -VMHost <VMHost[]>
        Specifies the hosts that you want to add to the vSphere distributed switch.
        
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
    
    C:\PS>Get-VDSwitch -Name "MyDistributedSwitch" | Add-VDSwitchVMHost -VMHost "VMHost1", "VMHost2"
    
    Adds two hosts to the specified vSphere distributed switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Add-VDSwitchVMHost -examples".
    For more information, type: "get-help Add-VDSwitchVMHost -detailed".
    For technical information, type: "get-help Add-VDSwitchVMHost -full".
    For online help, type: "get-help Add-VDSwitchVMHost -online"

Add-VirtualSwitchPhysicalNetworkAdapter
-------------------------

NAME
    Add-VirtualSwitchPhysicalNetworkAdapter
    
SYNOPSIS
    This cmdlet adds a host physical NIC to a standard virtual switch.
    
    
SYNTAX
    Add-VirtualSwitchPhysicalNetworkAdapter [-VMHostPhysicalNic] <PhysicalNic[]> [-VirtualSwitch] <VirtualSwitch> [-VirtualNicPortgroup <VirtualPortGroup[]>] [-VMHostVirtualNic 
    <HostVirtualNic[]>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet adds a host physical NIC to a standard virtual switch. If VMHost virtual network adapters are specified, the cmdlet migrates them to the virtual switch as well. 
    
    Note: If VMHost virtual network adapters are specified, the cmdlet migrates them to the respective port groups or creates new ones if VirtualNicPortgroup is not specified.
    

PARAMETERS
    -VMHostPhysicalNic <PhysicalNic[]>
        Specifies the host physical network adapters that you want to add or migrate to the standard virtual switch.
        
    -VirtualSwitch <VirtualSwitch>
        Specifies the standard virtual switch to which you want to migrate physical or virtual network adapters.
        
    -VirtualNicPortgroup <VirtualPortGroup[]>
        Specifies the port groups to which to attach the host virtual network adapters. Accepts the same number of port groups as the number of virtual network adapters specified. The first 
        adapter is attached to the first port group, the second adapter - to the second port group, and so on.
        
    -VMHostVirtualNic <HostVirtualNic[]>
        Specifies the host virtual network adapters to be migrated along with the physical adapter, so that their connectivity is preserved.
        
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
    
    C:\PS>$myVMHostNetworkAdapter = Get-VMhost "MyVMHost" | Get-VMHostNetworkAdapter -Physical -Name vmnic2
    Get-VirtualSwitch "MyVirtualSwitch" | Add-VirtualSwitchPhysicalNetworkAdapter -VMHostPhysicalNic $myVMHostNetworkAdapter
    
    Adds a VMHost physical network adapter to the specified distributed switch.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVMHost = Get-VMHost 'MyVMHost'
    $myVDSwitch = Get-VDSwitch 'MyVDSwitch'
    $physicalNic = Get-VMHostNetworkAdapter -VMHost $myVMHost -VirtualSwitch $myVDSwitch -Name 'vmnic0'
    $virtualNic = Get-VMHostNetworkAdapter -VMHost $myVMHost -VirtualSwitch $myVDSwitch -Name 'vmk0'
    $myStandardSwitch = Get-VirtualSwitch -VMHost $myVMHost -Name 'vSwitch0'
    Add-VirtualSwitchPhysicalNetworkAdapter -VirtualSwitch $myStandardSwitch -VMHostPhysicalNic $physicalNic -VMHostVirtualNic $virtualNic
    
    Migrates VMHost physical and virtual network adapters from a distributed virtual switch to a standard virtual switch.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Add-VirtualSwitchPhysicalNetworkAdapter -examples".
    For more information, type: "get-help Add-VirtualSwitchPhysicalNetworkAdapter -detailed".
    For technical information, type: "get-help Add-VirtualSwitchPhysicalNetworkAdapter -full".
    For online help, type: "get-help Add-VirtualSwitchPhysicalNetworkAdapter -online"

Add-VMHost
-------------------------

NAME
    Add-VMHost
    
SYNOPSIS
    This cmdlet adds a host to be managed by a vCenter Server system.
    
    
SYNTAX
    Add-VMHost [-Name] <String> [-Port <Int32>] [-Location] <VIContainer> [-Credential <PSCredential>] [-User <String>] [-Password <String>] [-Force] [-RunAsync] [-Server <VIServer[]>] 
    [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet adds a host to be managed by a vCenter Server system. The host is added to the datacenter or folder specified by the Location parameter. One of the User/Password and 
    Credential parameters must be provided in order to authenticate with the host. If both are specified, the Credential parameter is used and the User and Password parameters are ignored.
    

PARAMETERS
    -Name <String>
        Specifies the name of the host you want to add to a vCenter Server system.
        
    -Port <Int32>
        Specifies the port on the host you want to use for the connection.
        
    -Location <VIContainer>
        Specifies a datacenter or folder where you want to place the host.
        
    -Credential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the virtual machine host.
        
    -User <String>
        Specifies the user name you want to use for authenticating with the host.
        
    -Password <String>
        Specifies the password you want to use for authenticating with the host.
        
    -Force
        Indicates that the cmdlet runs even if the authenticity of the host SSL certificate cannot be verified.
        
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
    
    C:\PS>$myServer = Connect-VIServer -Server 10.23.112.235
    Add-VMHost -Server $myServer -Name MyVMHost1 -Location MyDatacenter1 -User MyUsername1 -Password MyPassword1
    
    Adds a VM host to a specified vCenter Server system and provides a username and password for authentication.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myCredentials = Get-VICredentialStoreItem -File "C:\MyCredentials.xml"
    $myServer = Connect-VIServer -Server 10.23.112.235
    Add-VMHost -Server $myServer -Name MyVMHost1 -Location MyDatacenter1 -Credentials $myCredentials
    
    Adds a VM host to a vCenter Server system and specifies a PSCredential object that contains authentication credentials.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myCredentials = Get-VICredentialStoreItem -File "C:\MyCredentials.xml"
    $myServer = Connect-VIServer -Server 10.23.112.235
    Add-VMHost -Server $server -Name MyVMHost1 -Location MyDatacenter1 -Credentials $myCredentials -Port MyVMHostPortNumber1 -Confirm:$false
    
    Adds a VM host to a vCenter Server system without asking for confirmation and specifies a port on the host for connecting.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myCredentials = Get-VICredentialStoreItem -File "C:\MyCredentials.xml"
    $myServer = Connect-VIServer -Server 10.23.112.235
    Add-VMHost -Server $myServer -Name MyVMHost1 -Location MyDataCenter1 -Credentials $myCredentials -Port MyVMHostPortNumber1 -Force
    
    Adds a VM host to a vCenter Server system even if the authenticity of the host SSL certificate cannot be verified.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Add-VMHost -examples".
    For more information, type: "get-help Add-VMHost -detailed".
    For technical information, type: "get-help Add-VMHost -full".
    For online help, type: "get-help Add-VMHost -online"

Add-VMHostNtpServer
-------------------------

NAME
    Add-VMHostNtpServer
    
SYNOPSIS
    This cmdlet adds the specified NTP servers to the NTP server list of the specified hosts.
    
    
SYNTAX
    Add-VMHostNtpServer [-NtpServer] <String[]> [-VMHost] <VMHost[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet adds the specified NTP servers to the NTP server list of the specified hosts. If a server is already in the list, a non-terminating error is generated and a duplicate is not 
    created.
    

PARAMETERS
    -NtpServer <String[]>
        Specifies the domain name or the IP address of the NTP server you want to add to the host.
        
    -VMHost <VMHost[]>
        Specifies a host to which you want to add the NTP server.
        
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
    
    C:\PS>Add-VmHostNtpServer -NtpServer "ntp-server-name.com" -VMHost $vmhost
    
    Adds the NTP server with a domain name "ntp-server-name.com" to the virtual machine hosts stored in the $vmhost variable.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Add-VmHostNtpServer -NtpServer "192.168.1.5" -VMHost (Get-VMHost)
    
    Adds the NTP server with an IP address "192.168.1.5" to the virtual machine hosts pipelined through the Get-VMHost cmdlet.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Add-VMHostNtpServer -examples".
    For more information, type: "get-help Add-VMHostNtpServer -detailed".
    For technical information, type: "get-help Add-VMHostNtpServer -full".
    For online help, type: "get-help Add-VMHostNtpServer -online"



