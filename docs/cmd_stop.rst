Stop Commands
=========================

This page contains details on **Stop** commands.

Stop-Task
-------------------------


NAME
    Stop-Task
    
SYNOPSIS
    This cmdlet stops the specified tasks.
    
    
SYNTAX
    Stop-Task [-Task] <Task[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet stops the tasks specified by the Task parameter.
    

PARAMETERS
    -Task <Task[]>
        Specifies the tasks you want to stop.
        
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
    
    C:\PS>$vm = Get-VM -Name "VM1"
    
    $datacenter = Get-Datacenter -Name "Datacenter1"
    
    $task = New-Template -Name "Template1" -Location $datacenter -VM $vm -RunAsync
    
    Stop-Task -Task $task
    
    Stops the process of creating a new template from a virtual machine.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Stop-Task -examples".
    For more information, type: "get-help Stop-Task -detailed".
    For technical information, type: "get-help Stop-Task -full".
    For online help, type: "get-help Stop-Task -online"

Stop-VApp
-------------------------

NAME
    Stop-VApp
    
SYNOPSIS
    This cmdlet stops vApps.
    
    
SYNTAX
    Stop-VApp [-Force] [-VApp] <VApp[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet stops vApps.
    

PARAMETERS
    -Force
        Indicates that the virtual machines are powered off regardless of the auto-start configuration of the vApps.
        
    -VApp <VApp[]>
        Specifies the vApp that you want to stop.
        
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
    
    C:\PS>Get-VMHost MyVMHost1 | Get-VApp | Stop-VApp
    
    Stops all virtual appliances on the specified host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Stop-VApp -examples".
    For more information, type: "get-help Stop-VApp -detailed".
    For technical information, type: "get-help Stop-VApp -full".
    For online help, type: "get-help Stop-VApp -online"

Stop-VM
-------------------------

NAME
    Stop-VM
    
SYNOPSIS
    This cmdlet powers off  virtual machines.
    
    
SYNTAX
    Stop-VM [-Kill] [-RunAsync] [-VM] <VirtualMachine[]> [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet stops the virtual machines specified by the VM parameter.
    

PARAMETERS
    -Kill
        Indicates that you want to stop the specified virtual machines by terminating their processes running on the ESX. You can use this parameter to stop a virtual machine that is not 
        responding and cannot be stopped or restarted in other ways. To use the Kill parameter, you need to have a direct connection to ESX 4.1 or later.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines you want to power off.
        
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
    
    C:\PS>Stop-VM -VM VM -Confirm
    
    Stops the virtual machine named VM after confirmation by the user.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Stop-VM -VM VM -Kill -Confirm:$false
    
    Stops the virtual machine VM by terminating its process running on the ESX.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Stop-VM -examples".
    For more information, type: "get-help Stop-VM -detailed".
    For technical information, type: "get-help Stop-VM -full".
    For online help, type: "get-help Stop-VM -online"

Stop-VMGuest
-------------------------

NAME
    Stop-VMGuest
    
SYNOPSIS
    This cmdlet shuts down the specified virtual machine guest OS.
    
    
SYNTAX
    Stop-VMGuest [[-VM] <VirtualMachine[]>] [[-Server] <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Stop-VMGuest [[-Guest] <VMGuest[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet issues a command to the guest operating system asking it to prepare for a shutdown operation. Returns immediately and does not wait for the guest operating system to 
    complete the operation.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines whose operating systems you want to shut down. The virtual machines must have VMware Tools installed.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -Guest <VMGuest[]>
        Specifies the virtual machine guests you want to shut down.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VM VM | Stop-VMGuest
    
    Shuts down the guest OS of the virtual machine named VM.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Stop-VMGuest -examples".
    For more information, type: "get-help Stop-VMGuest -detailed".
    For technical information, type: "get-help Stop-VMGuest -full".
    For online help, type: "get-help Stop-VMGuest -online"

Stop-VMHost
-------------------------

NAME
    Stop-VMHost
    
SYNOPSIS
    This cmdlet powers off the specified hosts.
    
    
SYNTAX
    Stop-VMHost [-VMHost] <VMHost[]> [-Force] [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet powers off the specified hosts. When the cmdlet runs asynchronously (with the RunAsync parameter) and you are connected directly to the host, the returned task object 
    contains no indicator of success.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to power off.
        
    -Force
        Indicates that you want to stop the hosts even if they are not in a maintenance mode.
        
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
    
    C:\PS>Stop-VMHost 10.23.112.235 -Confirm
    
    Shutdowns the specified host after user confirmation.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Stop-VMHost -examples".
    For more information, type: "get-help Stop-VMHost -detailed".
    For technical information, type: "get-help Stop-VMHost -full".
    For online help, type: "get-help Stop-VMHost -online"

Stop-VMHostService
-------------------------

NAME
    Stop-VMHostService
    
SYNOPSIS
    This cmdlet stops the specified host services.
    
    
SYNTAX
    Stop-VMHostService [-HostService] <HostService[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet stops the host service specified by the Service parameter.
    

PARAMETERS
    -HostService <HostService[]>
        Specifies the host services you want to stop.
        
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
    
    Stops a host service.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Stop-VMHostService -examples".
    For more information, type: "get-help Stop-VMHostService -detailed".
    For technical information, type: "get-help Stop-VMHostService -full".
    For online help, type: "get-help Stop-VMHostService -online"



