Update Commands
=========================

This page contains details on **Update** commands.

Update-Tools
-------------------------


NAME
    Update-Tools
    
SYNOPSIS
    This cmdlet upgrades VMware Tools on the specified virtual machine guest OS.
    
    
SYNTAX
    Update-Tools [-NoReboot] [-RunAsync] [[-Guest] <VMGuest[]>] [<CommonParameters>]
    
    Update-Tools [-NoReboot] [-RunAsync] [[-VM] <VirtualMachine[]>] [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet upgrades the VMware Tools on the specified virtual machine guest OS. VMware Tools must be installed prior to updating it. After VMware Tools is updated, the virtual machine 
    is restarted unless the NoReboot parameter is specified.
    

PARAMETERS
    -NoReboot
        Indicates that you do not want to reboot the system after updating VMware Tools. This parameter is supported only for Windows operating systems. NoReboot passes the following set of 
        options to the VMware Tools installer on the guest OS:
        
        /s /v"/qn REBOOT=ReallySuppress”
        
        However, the virtual machine might still reboot after updating VMware Tools, depending on the currently installed VMware Tools version, the VMware Tools version to which you want to 
        upgrade, and the vCenter Center/ESX versions.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Guest <VMGuest[]>
        Specifies the guest operating systems on which you want to update VMware Tools.
        
    -VM <VirtualMachine[]>
        Specifies a list of the virtual machines whose VMware Tools you want to upgrade.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Update-Tools VM
    
    Updates the VMware Tools on the specified virtual machine. The virtual machine must be powered on.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMGuest VM | Update-Tools
    
    Updates the VMware Tools on the virtual machine specified by its guest operating system. The virtual machine must be powered on.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Update-Tools -examples".
    For more information, type: "get-help Update-Tools -detailed".
    For technical information, type: "get-help Update-Tools -full".
    For online help, type: "get-help Update-Tools -online"



