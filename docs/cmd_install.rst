Install Commands
=========================

This page contains details on **Install** commands.

Install-VMHostPatch
-------------------------


NAME
    Install-VMHostPatch
    
SYNOPSIS
    This cmdlet updates the specified hosts.
    
    
SYNTAX
    Install-VMHostPatch [-VMHost] <VMHost[]> -HostPath <String[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Install-VMHostPatch [-VMHost] <VMHost[]> -WebPath <String[]> [-Server <VIServer[]>] [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    Install-VMHostPatch [-VMHost] <VMHost[]> -LocalPath <String[]> [-HostUsername <String>] [-HostPassword <SecureString>] [-HostCredential <PSCredential>] [-Server <VIServer[]>] 
    [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet updates the specified hosts. The cmdlet installs patches on the host. The patches that can be located locally, on a Web location, or in a host file system.
    When using the LocalPath or WebPath parameters, the ESX/ESXi host attempts to store the patch contents in its local temporary directory. Because ESXi hosts might not have enough free 
    space on their  local drives, this cannot apply to large size patches. The best practice for upgrading an ESXi host is to upload the patch contents on the host's datastore and to run 
    Install-VMHostPatch with the HostPath parameter.
    If you want to install patches packaged in a ZIP archive, you must extract them and use one of the HostPatch, LocalPath, or WebPath parameters. If you use the HostPath parameter, you 
    must extract each patch to a temporary folder that is named after the patch ID (for example, c:\temp\ESX400-200906001\), and copy the folder in the root folder of a datastore. Note that 
    the datastore path is case-sensitive. If you use the LocalPath parameter, you must extract each patch to a folder. The name of the folder must contain the patch ID (for example, 
    "ESX400-200906001"). If you use the WebPath parameter, you must extract each patch to a folder that is published on a Web server. The patch URL address must contain the patch ID (for 
    example, http://myInternalWebServer/esx40/ESX400-200906001/).
    Depending on the component to be upgraded, you might have to set the host into a maintenance mode and to restart the host or the hostd management service after applying the patch.
    This cmdlet is experimental and might be changed or removed in a future release.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the hosts you want to update.
        
    -HostPath <String[]>
        Specifies a file path on the ESX/ESXi host to the patches you want to install.
        
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
        
    -WebPath <String[]>
        Specifies the Web location of the patches you want to install.
        
    -LocalPath <String[]>
        Specifies the local file system path to the patches you want to install. Providing credentials when installing a patch from a local path is mandatory.
        
    -HostUsername <String>
        Specifies the username you want to use to authenticate with the host.
        
    -HostPassword <SecureString>
        Specifies the password you want to use to authenticate with the host.
        
    -HostCredential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the host.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Install-VMHostPatch -VMHost $vmhost1,$vmhost2 -LocalPath c:\esx40\patches\ESX400-200906001\metadata.zip -HostUsername admin -HostPassword pass
    
    Updates ESX servers using a local file. Before running the cmdlet, you must download the patch file locally and extract to a folder. The name of the folder must contain the patch ID 
    (for example, "ESX400-200906001"). Providing credentials when installing a patch from a local path is mandatory.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$vmhost | Install-VMHostPatch -WebPath http://myInternalWebServer/esx40/ESX400-200906001/metadata.zip
    
    Upgrades an ESX server using a Web location. Before running the cmdlet, you must download the patch file and extract it to a folder that is published on a Web server. The patch URL 
    address must contain the patch ID (for example, http://myInternalWebServer/esx40/ESX400-200906001/).
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$datastore = Get-Datastore -Name Datastore
    
    Copy-DatastoreItem c:\temp\ESX400-200906001\
    
    $datastore.DatastoreBrowserPath -Recurse
    
    $vmhost1,$vmhost2 | Install-VMHostPatch -HostPath
    /vmfs/volumes/datastore/ESX400-200906001/metadata.zip
    
    Upgrades ESX servers using the -HostPath parameter. First, you must download the patch file and extract its contents to a temporary folder that is named after the patch ID (for example, 
    c:\temp\ESX400-200906001\). Copy the folder in the root folder of the Datastore datastore and run Install-VMHostPatch providing the datastore path to the patch. Note that the datastore 
    path is case-sensitive.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Install-VMHostPatch -examples".
    For more information, type: "get-help Install-VMHostPatch -detailed".
    For technical information, type: "get-help Install-VMHostPatch -full".
    For online help, type: "get-help Install-VMHostPatch -online"



