Import Commands
=========================

This page contains details on **Import** commands.

Import-VApp
-------------------------


NAME
    Import-VApp
    
SYNOPSIS
    This cmdlet imports OVF (Open Virtualization Format) and OVA packages. The package can contain a virtual appliance or a virtual machine.
    
    
SYNTAX
    Import-VApp [-Source] <String> [-OvfConfiguration <Hashtable>] [[-Name] <String>] [-Location <VIContainer>] [-VMHost] <VMHost> [-Datastore <StorageResource>] [-Force] 
    [-DiskStorageFormat <VirtualDiskStorageFormat>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet imports OVF (Open Virtualization Format) and OVA packages. The package can contain a vApp or a virtual machine. The cmdlet returns a VApp object when the OVF contains a vApp 
    and a VirtualMachine object when the OVF contains a single virtual machine.
    

PARAMETERS
    -Source <String>
        Specifies the path to the OVF or OVA package that you want to import.
        
    -OvfConfiguration <Hashtable>
        Specifies values for a set of user-configurable OVF properties.
        
    -Name <String>
        Specifies a name for the imported vApp or virtual machine.
        
    -Location <VIContainer>
        Specifies a vSphere inventory container where you want to import the vApp or virtual machine. It must be a vApp, a resource pool, or a cluster.
        
    -VMHost <VMHost>
        Specifies a host where you want to run the vApp or virtual machine.
        
    -Datastore <StorageResource>
        Specifies a datastore or a datastore cluster where you want to store the vApp or virtual machine.
        
    -Force
        Indicates that you want to import an OVF or OVA package even if the package signature cannot be verified.
        
    -DiskStorageFormat <VirtualDiskStorageFormat>
        Specifies the storage format for the disks of the imported VMs. By default, the storage format is thick. When you set this parameter, you set the storage format for all virtual 
        machine disks in the OVF package. This parameter accepts Thin, Thick, and EagerZeroedThick values.
        
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
    
    C:\PS>$vmHost = Get-VMHost -Name "MyVMHost1"
    Import-vApp -Source "c:\vApps\WebServer\WebServer.ovf" -VMHost $vmHost
    
    Imports an OVF package by specifying the target host and name.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myCluster = Get-Cluster -Name "MyCluster1"
    $vmHost = Get-VMHost -Name "MyVMHost1"
    Import-vApp -Source "c:\vApps\WebServer\WebServer.ovf" -VMHost $vmHost -Location $myCluster -Name "MyWebServerProduction1"
    
    Imports an OVF package within a cluster.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$vmHost = Get-VMHost -Name "MyVMHost1"
    $myDatastore = Get-Datastore -Name "MyDatastore1"
    $vmHost | Import-vApp -Source "c:\vApps\WebServer\WebServer.ovf" -Datastore $myDatastore
    
    Imports an OVF package by specifying a datastore where to store the virtual machines.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myDatastore = Get-Datastore -Name "MyDatastore1"
    $vmHost = Get-VMHost -Name "MyVMHost1"
    $vmHost | Import-vApp -Source "c:\vApps\WebServer\WebServer.ova" -Datastore $myDatastore -Force
    
    Imports an OVA package even if the package signature cannot be verified.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>$ovfConfig = Get-OvfConfiguration "myOvfTemplate.ovf"
    $ovfConfig.NetworkMapping.Network.Value = "Network 2"
    $ovfConfig.vami.VM_1.ip0.Value = "10.23.101.2"
    $ovfConfig.vami.VM_2.ip0.Value = "10.23.101.3"
    Import-VApp $ovfPath -OvfConfiguration $ovfConfig -VMHost $vmHost
    
    Imports an OVF package with specified network mapping and two standard OVF properties.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$ovfConfig = Get-OvfConfiguration "myOvfTemplate.ovf"
    $portGroup = Get-VirtualPortGroup -Name "Network 2" -Standard
    $ovfConfig.NetworkMapping.Network.Value = $portGroup
    Import-VApp $ovfPath -OvfConfiguration $ovfConfig -VMHost $vmHost
    
    Imports an OVF package by specifying network mapping with a standard port group object.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>$ovfConfig = Get-OvfConfiguration "myOvfTemplate.ovf"
    $vdPortGroup = Get-VDPortgroup "myDistributedPortGroup"
    $ovfConfig.NetworkMapping.Network.Value = $vdPortGroup
    Import-VApp $ovfPath -OvfConfiguration $ovfConfig -VMHost $vmHost
    
    Imports an OVF package by specifying network mapping with a distributed port group object.
    
    
    
    
    --------------  Example 8 --------------
    
    C:\PS>$ovfConfig.ToHashTable()
    $ovfConfig = @{
       "NetworkMapping.VM Test Network"="Network 2";
       "vami.ip0.VM_1"="10.23.101.2";
       "vami.ip0.VM_2"="10.23.101.3"
    }
    Import-VApp $ovfPath -OvfConfiguration $ovfConfig -VMHost $vmHost
    
    Imports an OVF package by specifying a hash table with populated OVF properties to the OvfConfiguration parameter.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Import-VApp -examples".
    For more information, type: "get-help Import-VApp -detailed".
    For technical information, type: "get-help Import-VApp -full".
    For online help, type: "get-help Import-VApp -online"

Import-VMHostProfile
-------------------------

NAME
    Import-VMHostProfile
    
SYNOPSIS
    This cmdlet imports a host profile from a file. The file path must be accessible from the vSphere PowerCLI client side.
    
    
SYNTAX
    Import-VMHostProfile [-FilePath] <String> [-Name] <String> [[-ReferenceHost] <VMHost>] [-Description <String>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet imports a host profile from a file. The file path must be accessible from the vSphere PowerCLI client side.
    

PARAMETERS
    -FilePath <String>
        Specifies the path to the file, from which you want to import a host profile.
        
    -Name <String>
        Specifies a name of the imported host profile.
        
    -ReferenceHost <VMHost>
        Specifies a reference host for the imported host profile.
        
    -Description <String>
        Specifies a description for the imported host profile.
        
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
    
    C:\PS>Import-VMHostProfile -FilePath export.prf -Name Profile
    
    Imports a virtual machine host profile from the export.prf file and names it Profile.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Import-VMHostProfile -examples".
    For more information, type: "get-help Import-VMHostProfile -detailed".
    For technical information, type: "get-help Import-VMHostProfile -full".
    For online help, type: "get-help Import-VMHostProfile -online"



