Start Commands
=========================

This page contains details on **Start** commands.

Start-VApp
-------------------------


NAME
    Start-VApp
    
SYNOPSIS
    This cmdlet starts vApps.
    
    
SYNTAX
    Start-VApp [-VApp] <VApp[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet starts vApps.
    

PARAMETERS
    -VApp <VApp[]>
        Specifies the vApp that you want to start.
        
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
    
    C:\PS>Get-VMHost MyVMHost1 | Get-VApp | Start-VApp
    
    Starts all vApps on the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Start-VApp -examples".
    For more information, type: "get-help Start-VApp -detailed".
    For technical information, type: "get-help Start-VApp -full".
    For online help, type: "get-help Start-VApp -online"

Start-VM
-------------------------

NAME
    Start-VM
    
SYNOPSIS
    This cmdlet powers on virtual machines.
    
    
SYNTAX
    Start-VM [-RunAsync] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet powers on the virtual machines specified by the VM parameter.
    

PARAMETERS
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to power on.
        
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
    
    C:\PS>Start-VM -VM VM -Confirm -RunAsync
    
    Asynchronously starts the virtual machine named VM. Before initializing the task, asks for confirmation.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Start-VM -examples".
    For more information, type: "get-help Start-VM -detailed".
    For technical information, type: "get-help Start-VM -full".
    For online help, type: "get-help Start-VM -online"

Start-VMHost
-------------------------

NAME
    Start-VMHost
    
SYNOPSIS
    This cmdlet starts the specified hosts.
    
    
SYNTAX
    Start-VMHost [-VMHost] <VMHost[]> [-TimeoutSeconds <Int32>] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet starts the specified hosts. The task completes when the host successfully exits standby state and sends a heartbeat signal. If nothing is received from the host for the time 
    defined by the TimeoutSeconds parameter, the host is declared timed out, and the task is assumed failed.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to start.
        
    -TimeoutSeconds <Int32>
        Specifies a time period in seconds to wait for a heartbeat signal from the host. If nothing is received from the host for the specified time, the host is declared timed out, and the 
        task is assumed failed. The default value is 300.
        
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
    
    C:\PS>Start-VMHost 10.23.112.235 -RunAsync
    
    Starts the specified host. The command returns without waiting for the task to complete.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Start-VMHost -examples".
    For more information, type: "get-help Start-VMHost -detailed".
    For technical information, type: "get-help Start-VMHost -full".
    For online help, type: "get-help Start-VMHost -online"

Start-VMHostService
-------------------------

NAME
    Start-VMHostService
    
SYNOPSIS
    This cmdlet starts the specified host services.
    
    
SYNTAX
    Start-VMHostService [-HostService] <HostService[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet starts the specified host services.
    

PARAMETERS
    -HostService <HostService[]>
        Specifies the host services you want to start.
        
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
    
    C:\PS>Start-VMHostService -Service $vmHostService
    
    Starts a host service.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Start-VMHostService -examples".
    For more information, type: "get-help Start-VMHostService -detailed".
    For technical information, type: "get-help Start-VMHostService -full".
    For online help, type: "get-help Start-VMHostService -online"



