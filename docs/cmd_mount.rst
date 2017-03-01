Mount Commands
=========================

This page contains details on **Mount** commands.

Mount-Tools
-------------------------


NAME
    Mount-Tools
    
SYNOPSIS
    This cmdlet mounts the VMware Tools CD installer as a CD-ROM on the guest operating system.
    
    
SYNTAX
    Mount-Tools [[-Guest] <VMGuest[]>] [<CommonParameters>]
    
    Mount-Tools [[-VM] <VirtualMachine[]>] [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet mounts the VMware Tools CD installer as a CD-ROM on the guest operating system that is specified by the Guest or VM parameters. To specify a server different from the 
    default one, use the Server parameter.
    

PARAMETERS
    -Guest <VMGuest[]>
        Specifies the guest operating systems on which you want to mount VMware Tools.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines on which you want to mount VMware Tools.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Mount-Tools VM
    
    Mounts the VMware Tools on the specified virtual machine. The virtual machine must be powered on.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMGuest VM | Mount-Tools
    
    Mounts the VMware Tools on the virtual machine specified by its guest operating system. The virtual machine must be powered on.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Mount-Tools -examples".
    For more information, type: "get-help Mount-Tools -detailed".
    For technical information, type: "get-help Mount-Tools -full".
    For online help, type: "get-help Mount-Tools -online"



