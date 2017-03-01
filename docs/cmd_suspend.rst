Suspend Commands
=========================

This page contains details on **Suspend** commands.

Suspend-VM
-------------------------


NAME
    Suspend-VM
    
SYNOPSIS
    This cmdlet suspends virtual machines.
    
    
SYNTAX
    Suspend-VM [-RunAsync] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet suspends the virtual machines specified by the VM parameter. You can use the suspend feature to make resources available on a short-term basis or for other situations in 
    which you want to put a virtual machine on hold without powering it down. Using wildcards is supported with virtual machine names.
    

PARAMETERS
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to suspend.
        
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
    
    C:\PS>Get-VM VM | Suspend-VM
    
    Suspends the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Suspend-VM -examples".
    For more information, type: "get-help Suspend-VM -detailed".
    For technical information, type: "get-help Suspend-VM -full".
    For online help, type: "get-help Suspend-VM -online"

Suspend-VMGuest
-------------------------

NAME
    Suspend-VMGuest
    
SYNOPSIS
    This cmdlet suspends the specified guest operating systems.
    
    
SYNTAX
    Suspend-VMGuest [[-VM] <VirtualMachine[]>] [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Suspend-VMGuest [[-Guest] <VMGuest[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet issues a command to the specified guest operating system asking it to prepare for a suspend operation.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose operating systems you want to suspend. The virtual machines must have VMware Tools installed.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Guest <VMGuest[]>
        Specifies the guest operating systems you want to suspend.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM VM| Suspend-VMGuest
    
    Suspends the guest OS of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Suspend-VMGuest -examples".
    For more information, type: "get-help Suspend-VMGuest -detailed".
    For technical information, type: "get-help Suspend-VMGuest -full".
    For online help, type: "get-help Suspend-VMGuest -online"

Suspend-VMHost
-------------------------

NAME
    Suspend-VMHost
    
SYNOPSIS
    This cmdlet suspends hosts.
    
    
SYNTAX
    Suspend-VMHost [-VMHost] <VMHost[]> [-TimeoutSeconds <Int32>] [-Evacuate] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet puts the specified host machines in standby mode. You can use the suspend feature to make resources available on a short-term basis or for other situations in which you want 
    to put a host on hold without powering it off.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to suspend.
        
    -TimeoutSeconds <Int32>
        Specifies a time period in seconds to wait for the host to enter standby mode. If the host is not suspended for the specified time, the host is declared timed out, and the task is 
        assumed failed. The default value is 300.
        
    -Evacuate
        If the value is $true, vCenter Server automatically reregisters the virtual machines that are compatible for reregistration. If they are not compatible, they remain on the suspended 
        host. If there are powered-on virtual machines that cannot be reregistered, the operation waits until they are powered off manually. The Evacuate parameter is valid only when 
        connected to a vCenter Server system and the virtual machine host is part of a DRS-enabled cluster.
        
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
    
    C:\PS>Suspend-VMHost 10.23.112.54 -TimeOutSeconds 60 -Confirm
    
    Suspends the specified host after user confirmation. If the host is not suspended within 60 seconds, the task is reported failed.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Suspend-VMHost -examples".
    For more information, type: "get-help Suspend-VMHost -detailed".
    For technical information, type: "get-help Suspend-VMHost -full".
    For online help, type: "get-help Suspend-VMHost -online"



