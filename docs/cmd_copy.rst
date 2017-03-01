Copy Commands
=========================

This page contains details on **Copy** commands.

Copy-DatastoreItem
-------------------------


NAME
    Copy-DatastoreItem
    
SYNOPSIS
    This cmdlet copies items between datastores and between a datastore and a local file system provider.
    
    
SYNTAX
    Copy-DatastoreItem [-Item] <Object[]> [[-Destination] <Object>] [-Force] [-PassThru] [-Recurse] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet copies items between datastores and between a datastore and a local file system provider.
    

PARAMETERS
    -Item <Object[]>
        Specifies the datastore item you want to copy. You can use a string to provide a relative path to the item in the current provider location.
        
    -Destination <Object>
        Specifies the destination where you want to copy the datastore item. You can use a string to specify a relative path to the destination object in the current provider location.
        
    -Force
        Indicates whether to overwrite all items with the same name at the provided destination.
        
    -PassThru
        Indicates that the cmdlet returns the copied item.
        
    -Recurse
        Indicates that you want to copy not only the item, but its children items as well.
        
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
    
    C:\PS>Copy-DatastoreItem vmstore:\Datacenter\Storage1\MyVM\* c:\VMFolder\MyVM\
    
    Copies the contents of a datastore folder in a local folder.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Copy-DatastoreItem c:\VMFolder\MyVM\* vmstore:\Datacenter\Storage1\NewVM\ -Force
    
    Copies the contents of a local folder into a datastore folder. If the destination folder does not exist, the Force parameter enforces its creation.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Copy-DatastoreItem c:\VMFolder\* vmstore:\Datacenter\Storage1\VMs\ -Force -Recurse
    
    Copies recursively the contents of a local folder into a datastore folder.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Copy-DatastoreItem Windows.ISO vmstore:\Datacenter\Storage1\ISOFiles\WinXPSP3.iso
    
    Copies a file into a datastore folder and changes the file name.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Copy-DatastoreItem -examples".
    For more information, type: "get-help Copy-DatastoreItem -detailed".
    For technical information, type: "get-help Copy-DatastoreItem -full".
    For online help, type: "get-help Copy-DatastoreItem -online"

Copy-HardDisk
-------------------------

NAME
    Copy-HardDisk
    
SYNOPSIS
    Copies a virtual hard disk to another destination.
    
    
SYNTAX
    Copy-HardDisk [-HardDisk] <HardDisk[]> [-DestinationPath] <String> [-DestinationStorageFormat <VirtualDiskStorageFormat>] [-Force] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    Copies a virtual hard disk to another destination specified by the DestinationPath parameter. DestinationPath must be a datastore path to the destination folder.
    

PARAMETERS
    -HardDisk <HardDisk[]>
        Specifies the virtual hard disk you want to copy.
        
    -DestinationPath <String>
        Specifies the datastore path to the folder where you want to copy the hard disk. The datastore name is included in the path in square braces.
        
    -DestinationStorageFormat <VirtualDiskStorageFormat>
        Specifies the type of the hard disk copy. The valid values are Thin, Thick, and EagerZeroedThick. This parameter is only applicable when you are connected to an ESX/ESXi host.
        
    -Force
        Indicates whether to overwrite all disks with the same name at the provided destination.
        
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
    
    C:\PS>Get-HardDisk -VM $vm | Copy-HardDisk "[Storage1]/"
    
    Retrieves the hard disks of a virtual machine and copies them into the storage1 root folder.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Copy-HardDisk -HardDisk $hdd -DestinationPath "[Storage1] vms/disks" -DestinationStorageFormat Thick
    
    Copies the $hdd hard disk to the "vms/disks"location on storage1 and changes the storage format of the destination disk to Thick.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Copy-HardDisk -examples".
    For more information, type: "get-help Copy-HardDisk -detailed".
    For technical information, type: "get-help Copy-HardDisk -full".
    For online help, type: "get-help Copy-HardDisk -online"

Copy-VMGuestFile
-------------------------

NAME
    Copy-VMGuestFile
    
SYNOPSIS
    This cmdlet copies files and folders from and to the guest OS of the specified virtual machines using VMware Tools.
    
    
SYNTAX
    Copy-VMGuestFile [-Source] <String[]> [-Destination] <String> -LocalToGuest [-Force] [-VM] <VirtualMachine[]> [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword 
    <SecureString>] [-GuestCredential <PSCredential>] [-GuestUser <String>] [-GuestPassword <SecureString>] [-ToolsWaitSecs <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    Copy-VMGuestFile [-Source] <String[]> [-Destination] <String> -GuestToLocal [-Force] [-VM] <VirtualMachine[]> [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword 
    <SecureString>] [-GuestCredential <PSCredential>] [-GuestUser <String>] [-GuestPassword <SecureString>] [-ToolsWaitSecs <Int32>] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet copies files and folders from and to the guest OS of the specified virtual machines using VMware Tools. If a file with the same name exists in the destination directory, it 
    is overwritten. Use the GuestUser and GuestPassword, or GuestCredential parameters to authenticate when connecting to the VMware Tools. To authenticate with the host, use the HostUser 
    and HostPassword, or HostCredential parameters. SSPI is not supported. For a list of supported operating systems, see the PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Modify privilege.
    

PARAMETERS
    -Source <String[]>
        Specifies the file you want to copy. If the file is on a virtual machine, specifies the absolute file path. Relative file paths are supported only when copying files from a local 
        storage. Wildcards are allowed only at the end of the source path. If you are copying files from the guest operating system of a virtual machine to a local directory, the Source 
        parameter supports wildcards only on vCenter Server 5.0 and later.
        
    -Destination <String>
        Specifies the destination path where you want to copy the file. If the destination points to a virtual machine, specify the absolute file path. Relative destination paths are 
        supported only when copying files to a local storage.
        
    -LocalToGuest
        Indicates that you want to copy a file from a local directory to the guest operating system of the virtual machine.
        
    -Force
        Indicates that the non-existing directories in the specified destination path are automatically created.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machine where the file is located.
        
    -HostCredential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the host where the file is to be copied. Do not use this parameter if the HostUser and HostPassword 
        parameters are used. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you 
        have installed is earlier than 1.10.
        
    -HostUser <String>
        Specifies the user name you want to use for authenticating with the host where the file is to be copied. You need to specify host credentials only if the version of the vCenter 
        Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -HostPassword <SecureString>
        Specifies the password you want to use for authenticating with the host where the file is to be copied. You need to specify host credentials only if the version of the vCenter 
        Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -GuestCredential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the guest OS where the file to be copied is located.
        
    -GuestUser <String>
        Specifies the user name you want to use for authenticating with the guest OS where the file to be copied is located.
        
    -GuestPassword <SecureString>
        Specifies the password you want to use for authenticating with the guest OS where the file to be copied is located.
        
    -ToolsWaitSecs <Int32>
        Specifies the time in seconds to wait for a response from the VMware Tools. If a non-positive value is provided, the system waits infinitely long time.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    -WhatIf
        Indicates that the cmdlet is run only to display the changes that would be made and actually no objects are modified.
        
    -Confirm
        If the value is $true, indicates that the cmdlet asks for confirmation before running. If the value is $false, the cmdlet runs without asking for user confirmation.
        
    -GuestToLocal
        Indicates that you want to copy a file from the guest operating system of the virtual machine to a local directory.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Copy-VMGuestFile -Source c:\text.txt -Destination c:\temp\ -VM VM -GuestToLocal -GuestUser user -GuestPassword pass2
    
    Copies the text.txt file from the guest OS system to the local Temp directory.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vm = Get-VM -Name VM
    
    Get-Item "c:\FolderToCopy\*.*" | Copy-VMGuestFile -Destination "c:\MyFolder" -VM $vm -LocalToGuest -GuestUser -GuestPassword pass2
    
    Copies files from a local machine to a guest operating system.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Copy-VMGuestFile -examples".
    For more information, type: "get-help Copy-VMGuestFile -detailed".
    For technical information, type: "get-help Copy-VMGuestFile -full".
    For online help, type: "get-help Copy-VMGuestFile -online"



