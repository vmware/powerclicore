Export Commands
=========================

This page contains details on **Export** commands.

Export-VApp
-------------------------


NAME
    Export-VApp
    
SYNOPSIS
    This cmdlet exports a vApp or a single virtual machine to the specified destination.
    
    
SYNTAX
    Export-VApp [[-Destination] <String>] [-VApp] <VApp[]> [-Name <String>] [-Force] [-Format <VAppStorageFormat>] [-CreateSeparateFolder] [-Description <String>] [-Server <VIServer[]>] 
    [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Export-VApp [[-Destination] <String>] -VM <VirtualMachine[]> [-Name <String>] [-Force] [-Format <VAppStorageFormat>] [-CreateSeparateFolder] [-Description <String>] [-Server 
    <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet exports a vApp or a single virtual machine to the specified destination. If no destination is specified, the cmdlet creates a new folder in the current working directory and 
    exports the vApp or the virtual machine to it. The name of the new folder is the same as the name of the vApp or the virtual machine as it appears in vCenter Server.
    

PARAMETERS
    -Destination <String>
        Specifies a destination path to the file system location where you want to export the vApp or the virtual machine. If the value of the Destination parameter is a folder, the vApp or 
        the virtual machine is exported to a container folder (OVF). If the destination is a file, the vApp or the virtual machine is exported in OVA format.
        
    -VApp <VApp[]>
        Specifies the vApp that you want to export.
        
    -Name <String>
        Specifies a name for the exported vApp or virtual machine.
        
    -Force
        Indicates that the cmdlet overwrites the existing destination files and creates directories to complete the specified file path.
        
    -Format <VAppStorageFormat>
        Specifies the file format of the specified vApp or virtual machine. The default format is OVF. The valid values are OVF and OVA.
        
    -CreateSeparateFolder
        Indicates that you want to create a separate folder for each vApp or virtual machine.
        
    -Description <String>
        Provides a description of the exported vApp or virtual machine.
        
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
        
    -VM <VirtualMachine[]>
        Specifies the virtual machine that you want to export.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VApp -Name "MyVApp*" | Export-VApp -Destination "C:\vapps\"
    
    Retrieves all vApps whose names start with "MyVApp" and exports them to the specified path.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myVApp = Get-VApp -Name "MyVApp1" 
    Export-VApp -Destination "C:\NewFolder\" -VApp $myVApp -Name "EMail_vApp" -Force
    
    Exports the vApp in the $myVApp variable to the specified location and assigns a name to the folder.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$myVApp = Get-VApp -Name "MyVApp1" 
    Export-VApp -vApp $myVApp -Destination "C:\vapps\Vapp\" -Force -CreateSeparateFolder:$false
    
    Exports the vApp in the $myVApp variable to the specified location without creating a separate folder for each virtual appliance.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>$myVApp = Get-VApp -Name "MyVApp1" 
    Export-VApp -vApp $myVApp -Destination "C:\vapps\myVapp\" -Format Ova
    
    Exports a vApp in OVA format.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Get-VM -Name MyVM* | Export-VApp -Destination "C:\MyVMs\"
    
    Retrieves all virtual machines whose names start with "MyVM" and exports them to the specified path.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$myVM = New-VM -Name MyVM1 -VMHost MyVMHost1
    Export-VApp -Destination "C:\MyVMs\" -VM $myVM -Format Ova
    
    Creates a new virtual machine and exports it in OVA format.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>$myVM = New-VM -Name "MyVM1" -VMHost MyVMHost1
    Get-VM -Name MyVM | Export-VApp -Destination "C:\MyVMs\"
    Export-VApp -Destination "C:\MyVMs\" -VM $myVM -Force
    
    Exports a virtual machine to the same path twice. The second time forces an override of the previously exported files.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Export-VApp -examples".
    For more information, type: "get-help Export-VApp -detailed".
    For technical information, type: "get-help Export-VApp -full".
    For online help, type: "get-help Export-VApp -online"

Export-VDPortGroup
-------------------------

NAME
    Export-VDPortGroup
    
SYNOPSIS
    This cmdlet exports the configuration of a specified distributed port group to a specified .zip file.
    
    
SYNTAX
    Export-VDPortGroup [-VDPortGroup] <VDPortgroup[]> [-Description <String>] [-Destination <String>] [-Force] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet exports the configuration of a specified distributed port group to a specified .zip file. You can export only vSphere distributed port groups.
    
    Note: This cmdlet is supported only on vSphere 5.1 or later.
    

PARAMETERS
    -VDPortGroup <VDPortgroup[]>
        Specifies the distributed port group whose configuration you want to export.
        
    -Description <String>
        Specifies a description for the exported distributed port group configuration.
        
    -Destination <String>
        Specifies an absolute or a relative file path to the location where you want to export the configuration of the distributed port group.
        
    -Force
        Indicates that if the specified destination file already exists, the existing file will be overwritten. Any directories required to complete the specified file path will also be 
        created.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDPortGroup -Name 'MyVDPortGroup' | Export-VDPortGroup -Destination 'C:\MyVDSwitchesBackup\MyVDPortGroup_21122012.zip'
    
    Exports the configuration of the specified port group to the specified file.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$myPortGroup = Get-VDPortGroup -Name 'MyVDPortGroup'
    Export-VDPortGroup -VDPortGroup $myPortGroup -Destination 'C:\MyVDSwitchesBackup\MyVDPortGroupBackup.zip' -Force
    
    Exports the configuration of the specified port group to the specified file. If the MyVDSwitchesBackup directory does not exist, it is created. If the MyVDPortGroupBackup.zip file 
    already exists in the specified location, it is overwritten.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Export-VDPortGroup -examples".
    For more information, type: "get-help Export-VDPortGroup -detailed".
    For technical information, type: "get-help Export-VDPortGroup -full".
    For online help, type: "get-help Export-VDPortGroup -online"

Export-VDSwitch
-------------------------

NAME
    Export-VDSwitch
    
SYNOPSIS
    This cmdlet exports the configuration of a specified vSphere distributed switch to a .zip file.
    
    
SYNTAX
    Export-VDSwitch [-VDSwitch] <VDSwitch[]> [-WithoutPortGroups] [-Description <String>] [-Destination <String>] [-Force] [-Server <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet exports the configuration of a specified vSphere distributed switch to a .zip file.
    
    Note: This cmdlet is supported only on vCenter Server 5.1 or later.
    

PARAMETERS
    -VDSwitch <VDSwitch[]>
        Specifies the vSphere distributed switch whose configuration you want to export.
        
    -WithoutPortGroups
        Indicates that the configuration of the vSphere distributed switch is exported without its port group configuration.
        
    -Description <String>
        Specifies a description for the exported vSphere distributed switch configuration.
        
    -Destination <String>
        Specifies an absolute or a relative file path to the location where you want to export the vSphere distributed switch configuration.
        
    -Force
        Indicates that if the specified destination file already exists, the existing file is overwritten. Any directories required to complete the specified file path are also created.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Get-VDSwitch -Name 'MyVDSwitch' | Export-VDSwitch -Description "My VDSwitch configuration" -Destination "c:\myVDSwitchConfig.zip"
    
    Exports the configuration of the specified vSphere distributed switch and its port groups to the specified file.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Get-VDSwitch -Name 'MyVDSwitch' | Export-VDSwitch -Description "My VDSwitch configuration" -Destination "c:\myVDSwitchConfig.zip" -WithoutPortGroups -Force
    
    Exports the configuration of the specified vSphere distributed switch and its port groups to the specified file. If the myVDSwitchConfig.zip file already exists, it is overwritten.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Export-VDSwitch -examples".
    For more information, type: "get-help Export-VDSwitch -detailed".
    For technical information, type: "get-help Export-VDSwitch -full".
    For online help, type: "get-help Export-VDSwitch -online"

Export-VMHostProfile
-------------------------

NAME
    Export-VMHostProfile
    
SYNOPSIS
    This cmdlet exports the specified host profile to a file.
    
    
SYNTAX
    Export-VMHostProfile [-FilePath] <String> [-Profile] <VMHostProfile> [-Force] [-Server <VIServer>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet exports the specified host profile to a file that is in the VMware profile format (.vpf). If the value of the Force parameter is $false and the destination file exists or 
    the target parent directory does not exist, a terminating error is generated. If the value of the Force parameter is $true, the existing destination file is overwritten and directories 
    are created to complete the specified file path.
    

PARAMETERS
    -FilePath <String>
        Specifies the path to the file where you want to export the host profile.
        
    -Profile <VMHostProfile>
        Specifies the host profile you want to export.
        
    -Force
        Indicates that the cmdlet overwrites the existing destination files and creates directories to complete the specified file path.
        
    -Server <VIServer>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>$profile = (Get-VMHostProfile -Name Profile )[0]
    
    Export-VMHostProfile -FilePath export.prf -Profile $profile -Force
    
    Exports the selected host profile to the export.prf file.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Export-VMHostProfile -examples".
    For more information, type: "get-help Export-VMHostProfile -detailed".
    For technical information, type: "get-help Export-VMHostProfile -full".
    For online help, type: "get-help Export-VMHostProfile -online"



