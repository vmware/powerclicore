Invoke Commands
=========================

This page contains details on **Invoke** commands.

Invoke-DrsRecommendation
-------------------------


NAME
    Invoke-DrsRecommendation
    
SYNOPSIS
    This cmdlet applies the specified DRS recommendations.
    
    
SYNTAX
    Invoke-DrsRecommendation [-DrsRecommendation] <DrsRecommendation[]> [-RunAsync] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet applies the specified DRS recommendations.
    

PARAMETERS
    -DrsRecommendation <DrsRecommendation[]>
        Specifies the DRS recommendations you want to apply.
        
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
    
    C:\PS>Get-DrsRecommendation -Priority 1,2 | Invoke-DrsRecommendation
    
    Retrieves and applies DRS recommendations with priorities 1 and 2.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$drs = Get-DrsRecommendation -Cluster Cluster
    Invoke-DrsRecommendation -DrsRecommendation $drs -RunAsync
    
    Retrieves the DRS recommendations from the Cluster cluster and applies them. The command returns without waiting for the task to complete.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Invoke-DrsRecommendation -examples".
    For more information, type: "get-help Invoke-DrsRecommendation -detailed".
    For technical information, type: "get-help Invoke-DrsRecommendation -full".
    For online help, type: "get-help Invoke-DrsRecommendation -online"

Invoke-VMHostProfile
-------------------------

NAME
    Invoke-VMHostProfile
    
SYNOPSIS
    This cmdlet applies a host profile to the specified host or cluster.
    
    
SYNTAX
    Invoke-VMHostProfile [-Entity] <InventoryItem[]> [-Profile <VMHostProfile>] [-Variable <Hashtable>] [-AssociateOnly] [-ApplyOnly] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] 
    [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet applies a host profile to the specified host or cluster. The host or cluster must be in a maintenance mode. If no value is provided to the Profile parameter, the profile 
    currently associated with the  host or cluster is applied.
    

PARAMETERS
    -Entity <InventoryItem[]>
        Specifies hosts or clusters to which you want to apply the virtual machine host profile.
        
    -Profile <VMHostProfile>
        Specifies the host profile you want to apply.
        
    -Variable <Hashtable>
        Specifies a hash table object that provides values for the host profile required variables.
        
    -AssociateOnly
        Indicates whether to associate the host profile to the specified host or cluster without applying it.
        
    -ApplyOnly
        Indicates whether to apply the host profile to the specified virtual machine host without associating it.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
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
    
    C:\PS>Invoke-VMHostProfile -AssociateOnly -Entity $cluster -Profile $profile
    
    Associates the specified profile to all hosts in the specified cluster.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Invoke-VMHostProfile -Entity $vmhost -Profile $profile
    
    Associates and applies the specified profile to the specified host.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Get-VMHost | Invoke-VMHostProfile -ApplyOnly -Profile $profile
    
    Applies the specified profile to all specified hosts.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Get-VMHost | Invoke-VMHostProfile -AssociateOnly -profile $profile
    
    Associates the specified profile to all specified hosts.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Invoke-VMHostProfile $vmhost
    
    Applies the associated host's profile to the host.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>$requireInput = Invoke-VMHostProfile $vmhost -Profile $profile;
    
    $requireInput['network.hostPortGroup["key-vim-profile-host-HostPortgroupProfile-VMkernel"].ipConfig.IpAddressPolicy.address'] = '192.168.0.1';
    
    $requireInput['network.hostPortGroup["key-vim-profile-host-HostPortgroupProfile-VMkernel"].ipConfig.IpAddressPolicy.subnetmask'] = '255.255.255.0';
    
    Invoke-VMHostProfile $vmhost -Profile $profile -Variable $requireInput;
    
    Applies a profile to host but first assigns values to all required values.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Invoke-VMHostProfile -examples".
    For more information, type: "get-help Invoke-VMHostProfile -detailed".
    For technical information, type: "get-help Invoke-VMHostProfile -full".
    For online help, type: "get-help Invoke-VMHostProfile -online"

Invoke-VMScript
-------------------------

NAME
    Invoke-VMScript
    
SYNOPSIS
    This cmdlet runs a script in the guest OS of each of the specified virtual machines.
    
    
SYNTAX
    Invoke-VMScript [-ScriptText] <String> [-VM] <VirtualMachine[]> [-HostCredential <PSCredential>] [-HostUser <String>] [-HostPassword <SecureString>] [-GuestCredential <PSCredential>] 
    [-GuestUser <String>] [-GuestPassword <SecureString>] [-ToolsWaitSecs <Int32>] [-ScriptType <ScriptType>] [-RunAsync] [-Server <VIServer[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet runs a script in the guest OS of each of the specified virtual machines. To run Invoke-VMScript, the user must have read access to the folder containing the virtual machine 
    and a Virtual Machine.Interaction.Console Interaction privilege. The virtual machines must be powered on and have VMware Tools installed. Network connectivity to the ESX system hosting 
    the virtual machine on port 902 must be present. To authenticate with the host or the guest OS, one of the HostUser/HostPassword (GuestUser/GuestPassword) pair and HostCredential 
    (GuestCredential) parameters must be provided. The guest account you use to authenticate with the guest operating system must have administrator's privileges. For a list of supported 
    operating systems, see the PowerCLI User's Guide.
    
    To run this cmdlet against vCenter Server/ESX/ESXi versions earlier than 5.0, you need to meet the following requirements:
    *You must run the cmdlet on the 32-bit version of Windows PowerShell.
    *You must have access to the ESX that hosts the virtual machine over TCP port 902.
    *For vCenter Server/ESX/ESXi versions earlier than 4.1, you need VirtualMachine.Interact.ConsoleInteract privilege. For vCenter Server/ESX/ESXi 4.1 and later, you need 
    VirtualMachine.Interact.GuestControl privilege.
    
    To run this cmdlet against vCenter Server/ESXi 5.0 and later, you need VirtualMachine.GuestOperations.Modify and VirtualMachine.GuestOperations.Execute privileges.
    

PARAMETERS
    -ScriptText <String>
        Provides the text of the script you want to run. You can also pass to this parameter a string variable containing the path to the script.
        
    -VM <VirtualMachine[]>
        Specifies the virtual machines on whose guest operating systems you want to run the script.
        
    -HostCredential <PSCredential>
        Specifies a PSCredential object containing the credentials you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter 
        Server or ESX you are authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -HostUser <String>
        Specifies the user name you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are 
        authenticating with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -HostPassword <SecureString>
        Specifies the password you want to use for authenticating with the host. You need to specify host credentials only if the version of the vCenter Server or ESX you are authenticating 
        with is earlier than 4.0, or the VIX version you have installed is earlier than 1.10.
        
    -GuestCredential <PSCredential>
        Specifies a PSCredential object containing the credentials you want to use for authenticating with the virtual machine guest OS.
        
    -GuestUser <String>
        Specifies the user name you want to use for authenticating with the virtual machine guest OS.
        
    -GuestPassword <SecureString>
        Specifies the password you want to use for authenticating with the virtual machine guest OS.
        
    -ToolsWaitSecs <Int32>
        Specifies how long in seconds the system waits for connecting to the VMware Tools. The default value is 20.
        
    -ScriptType <ScriptType>
        Specifies the type of the script. The valid values are PowerShell, Bat, and Bash. If the virtual machine OS is Windows, the default value is PowerShell. If the virtual machine OS is 
        Linux, the default value is Bash.
        
    -RunAsync
        Indicates that the command returns immediately without waiting for the task to complete. In this mode, the output of the cmdlet is a Task object. For more information about the 
        RunAsync parameter run "help About_RunAsync" in the vSphere PowerCLI console.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. For more information 
        about default servers, see the description of Connect-VIServer.
        
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
    
    C:\PS>Invoke-VMScript -VM VM -ScriptText "dir" -GuestUser administrator -GuestPassword pass2
    
    Lists the directory entries on the guest OS.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>$script = '&"$env:ProgramFiles\Common Files\Microsoft Shared\MSInfo\msinfo32.exe" /report "$env:Tmp\inforeport"'
    
    Invoke-VMScript -ScriptText $script -VM VM -GuestCredential $guestCredential
    
    Runs a PowerShell script. In PowerShell, to access environment variables, you must use the following syntax: $env:<environment variable> (for example, $env:ProgramFiles). Also, to run 
    the program, you must specify an ampersand (&) in front of the program path.
    The outer quotes ($script = '...') are required because this is how you define a string variable in PowerShell. The inner double quotes are required because there are spaces in the path.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$script = '"%programfiles%\Common Files\Microsoft Shared\MSInfo\msinfo32.exe" /report "%tmp%\inforeport"'
    
    Invoke-VMScript -ScriptText $script -VM VM -GuestCredential $guestCredential -ScriptType Bat
    
    Runs a BAT script. In BAT scripts, to access environment variables, you must use the following syntax: %<environment variable>% (for example, %programfiles%).
    
    The outer quotes ($script = '...') are required because this is how you define a string variable in PowerShell. The inner double quotes are required because there are spaces in the path.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Invoke-VMScript -examples".
    For more information, type: "get-help Invoke-VMScript -detailed".
    For technical information, type: "get-help Invoke-VMScript -full".
    For online help, type: "get-help Invoke-VMScript -online"



