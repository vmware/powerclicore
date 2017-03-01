Wait Commands
=========================

This page contains details on **Wait** commands.

Wait-Task
-------------------------


NAME
    Wait-Task
    
SYNOPSIS
    This cmdlet waits for the completion of the specified tasks.
    
    
SYNTAX
    Wait-Task [-Task] <Task[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet waits for the specified tasks to complete or fail before allowing the next command input. The task progress is observed in real time on the console screen.
    

PARAMETERS
    -Task <Task[]>
        Specifies the tasks you want to wait to complete.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$task = Remove-VM -VM VM -Confirm -RunAsync
    
    Wait-Task -Task $task
    
    Waits for the virtual machine to be removed before allowing the next command input.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Wait-Task -examples".
    For more information, type: "get-help Wait-Task -detailed".
    For technical information, type: "get-help Wait-Task -full".
    For online help, type: "get-help Wait-Task -online"

Wait-Tools
-------------------------

NAME
    Wait-Tools
    
SYNOPSIS
    This cmdlet waits for VMware Tools on the specified virtual machines to load.
    
    
SYNTAX
    Wait-Tools [-VM] <VirtualMachine[]> [[-TimeoutSeconds] <Int32>] [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword <SecureString>] [-Server <VIServer[]>] 
    [<CommonParameters>]
    
    Wait-Tools [[-TimeoutSeconds] <Int32>] [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword <SecureString>] [-Guest] <VMGuest[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet waits for VMware Tools of the specified virtual machines to load. The cmdlet returns the virtual machines or guests on which VMware Tools have loaded successfully within the 
    specified time limits. You can cancel the operation before completion using Ctrl+C.
    The successful completion of Wait-Tools means that VMware Tools  have loaded, but it does not guarantee for the start of other services.
    Updating the returned VMGuest objects requires additional communication with VMware Tools and some of their properties (OSFullName, IPAddress, HostName, and other) might be still empty 
    right after the completion of Wait-Tools.
    

PARAMETERS
    -VM <VirtualMachine[]>
        Specifies the virtual machines for which you want to wait VMware Tools to load.
        
    -TimeoutSeconds <Int32>
        Specifies the time period in seconds to wait for VMware Tools to start before cancelling the operation.
        
    -HostCredential <PSCredential>
        Specifies credentials for authenticating with the ESX/ESXi host of the specified virtual machine. This parameter is needed only if you have authenticated with vCenter Server via 
        SSPI. If SSPI is not used, the credentials for authentication with vCenter Server are used.
        
    -HostUser <String>
        Specifies a username for authenticating with the ESX/ESXi host of the specified virtual machine. This parameter is needed only if you have authenticated with vCenter Server via 
        SSPI. If SSPI is not used, the username for authentication with vCenter Server is used.
        
    -HostPassword <SecureString>
        Specifies a password for authenticating with the ESX host of the specified virtual machine. This parameter is needed only if you have authenticated with the vCenter Server via SSPI. 
        If no SSPI is used, the password for authentication with vCenter Server is used.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -Guest <VMGuest[]>
        Specifies the guest operating systems for which you want to wait VMware Tools to load.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$vm = Start-VM VM* | Wait-Tools
    
    Starts the virtual machines with names starting with VM and Waits for their VMware Tools to load.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Wait-Tools -VM $vm -TimeoutSeconds 180
    
    Waits for the VMware Tools of the virtual machines in the $vm variable to start. If VMware Tools do not load after 180 seconds, the operation is aborted.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Wait-Tools -VM VM* -TimeoutSeconds 120 -HostCredential $vmhostCredential
    
    Waits for the VMware Tools of the virtual machines in the $vm variable to start. If VMware Tools do not load after 120 seconds, the operation is aborted. Host credentials are required 
    when you run the cmdlet on environments older than vSphere 4.0.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Restart-VMGuest WindowsXP | Wait-Tools
    
    Restart the guest operating system WindowsXP and waits for the VMware Tools to load.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Wait-Tools -examples".
    For more information, type: "get-help Wait-Tools -detailed".
    For technical information, type: "get-help Wait-Tools -full".
    For online help, type: "get-help Wait-Tools -online"



