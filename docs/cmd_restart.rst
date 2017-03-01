Restart Commands
=========================

This page contains details on **Restart** commands.

Restart-VM
-------------------------


NAME
    Restart-VM
    
SYNOPSIS
    This cmdlet restarts the specified virtual machines.
    
    
SYNTAX
    Restart-VM [-RunAsync] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet restarts the specified virtual machines.
    

PARAMETERS
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to restart.
        
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
    
    C:\PS>Restart-VM -VM VM -RunAsync -Confirm
    
    Restarts the VM virtual machine after user confirmation. The cmdlet returns without waiting for the task to complete.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Restart-VM -examples".
    For more information, type: "get-help Restart-VM -detailed".
    For technical information, type: "get-help Restart-VM -full".
    For online help, type: "get-help Restart-VM -online"

Restart-VMGuest
-------------------------

NAME
    Restart-VMGuest
    
SYNOPSIS
    This cmdlet restarts the virtual machine guest operating systems.
    
    
SYNTAX
    Restart-VMGuest [[-VM] <VirtualMachine[]>] [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Restart-VMGuest [[-Guest] <VMGuest[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet restarts the virtual machine guest operating systems.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose operating systems you want to restart. The specified virtual machines must have VMware Tools installed.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Guest <VMGuest[]>
        Specifies the virtual machine guest operating systems you want to restart.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM VM | Restart-VMGuest
    
    Restarts the guest OS of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Restart-VMGuest -examples".
    For more information, type: "get-help Restart-VMGuest -detailed".
    For technical information, type: "get-help Restart-VMGuest -full".
    For online help, type: "get-help Restart-VMGuest -online"

Restart-VMHost
-------------------------

NAME
    Restart-VMHost
    
SYNOPSIS
    This cmdlet restarts the specified hosts.
    
    
SYNTAX
    Restart-VMHost [-VMHost] <VMHost[]> [-Force] [-Evacuate] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet restarts the specified hosts.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to restart.
        
    -Force
        Indicates that you want to restart the hosts even if they are not in a maintenance mode.
        
    -Evacuate
        Indicates that vCenter Server automatically reregisters the virtual machines that are compatible for reregistration. If they are not compatible, they remain on the rebooted host. If 
        there are powered-on virtual machines that cannot be reregistered, the operation waits until they are powered off manually. The Evacuate parameter is valid only if the cmdlet is run 
        against a vCenter Server system and the host is in a DRS-enabled cluster.
        
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
    
    C:\PS>Restart-VMHost 10.23.112.235 -RunAsync -Confirm
    
    Restarts the specified host after user confirmation. The cmdlet returns without waiting for the task to complete.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Restart-VMHost -examples".
    For more information, type: "get-help Restart-VMHost -detailed".
    For technical information, type: "get-help Restart-VMHost -full".
    For online help, type: "get-help Restart-VMHost -online"

Restart-VMHostService
-------------------------

NAME
    Restart-VMHostService
    
SYNOPSIS
    This cmdlet restarts the specified host services.
    
    
SYNTAX
    Restart-VMHostService [-HostService] <HostService[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet restarts the specified host services.
    

PARAMETERS
    -HostService <HostService[]>
        Specifies the host service you want to restart.
        
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
    
    C:\PS>Restart-VMHostService -Service $vmHostService -Confirm:$false
    
    Restarts a host service.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Restart-VMHostService -examples".
    For more information, type: "get-help Restart-VMHostService -detailed".
    For technical information, type: "get-help Restart-VMHostService -full".
    For online help, type: "get-help Restart-VMHostService -online"



