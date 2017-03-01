Dismount Commands
=========================

This page contains details on **Dismount** commands.

Dismount-Tools
-------------------------


NAME
    Dismount-Tools
    
SYNOPSIS
    This cmdlet dismounts the VMware Tools installer CD.
    
    
SYNTAX
    Dismount-Tools [[-Guest] <VMGuest[]>] [<CommonParameters>]
    
    Dismount-Tools [[-VM] <VirtualMachine[]>] [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet dismounts the VMware Tools installer CD from one or more virtual machines operating systems specified by the VM and Guest parameters. To specify a server different from the 
    default one, use the Server parameter. The virtual machines must be powered on.
    

PARAMETERS
    -Guest <VMGuest[]>
        Specifies the guest operating systems from which you want to remove the VMware Tools.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines from which you want to remove the VMware Tools.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which the search for virtual machine names passed by the VM parameter is performed. If no value is given to this parameter, the search for 
        the virtual machine names is performed on the default server.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Dismount-Tools VM
    
    Dismounts the VMware Tools from the VM virtual machine. The virtual machine must be powered on.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VMGuest VM | Dismount-Tools
    
    Dismounts the VMware Tools from the virtual machine specified by its guest operating system. The virtual machine must be powered on.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Dismount-Tools -examples".
    For more information, type: "get-help Dismount-Tools -detailed".
    For technical information, type: "get-help Dismount-Tools -full".
    For online help, type: "get-help Dismount-Tools -online"



