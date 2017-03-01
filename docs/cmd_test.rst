Test Commands
=========================

This page contains details on **Test** commands.

Test-VMHostProfileCompliance
-------------------------


NAME
    Test-VMHostProfileCompliance
    
SYNOPSIS
    This cmdlet tests hosts for profile compliance.
    
    
SYNTAX
    Test-VMHostProfileCompliance [-VMHost] <VMHost[]> [-UseCache] [[-Server] <VIServer[]>] [<CommonParameters>]
    
    Test-VMHostProfileCompliance [-Profile] <VMHostProfile[]> [-UseCache] [[-Server] <VIServer[]>] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet tests hosts for profile compliance. The Profile and VMHost parameters cannot be set at the same time. If the Profile parameter is set, the specified host profile is tested 
    for compliance with the hosts, to which it is associated. If the VMHost parameter is specified, the host is tested for compliance with the profiles associated with it. If no profiles 
    are associated with the host, then the profile associated with the cluster is applied.
    

PARAMETERS
    -VMHost <VMHost[]>
        Specifies the host you want to test for profile compliance with the profile associated with it. If no profile is associated with it, the host is tested for compliance with the 
        profile associated with the cluster, to which the host belongs. Do not set this parameter if the Profile parameter is set.
        
    -UseCache
        Indicates that you want the vCenter Server to return cached information. If vCenter Server does not have cached information, a compliance scanning is performed.
        
    -Server <VIServer[]>
        Specifies the vCenter Server systems on which you want to run the cmdlet. If no value is given to this parameter, the command runs on the default servers. For more information about 
        default servers, see the description of Connect-VIServer.
        
    -Profile <VMHostProfile[]>
        Specifies a host profile against which to test the specified host for compliance with the host to which it is associated. Do not set this parameter if the VMHost parameter is set.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 2 --------------
    
    C:\PS>Test-VMHostProfileCompliance -VMHost Host
    
    Tests the specified host for compliance with the profiles associated with it.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>$profile = Get-VMHostProfile -Name Profile
    
    Apply-VMHostProfile -AssociateOnly -Profile $profile -Entity 10.0.0.126
    
    Test-VMHostProfileCompliance -VMHost 10.0.0.126 | fl *
    
    Test the profile compliance of a non-compliant virtual machine host associated with the profile.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Test-VMHostProfileCompliance -Profile $profile | fl *
    
    Test the profile compliance of a virtual machine host profile with the hosts it is associated with.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Test-VMHostProfileCompliance -examples".
    For more information, type: "get-help Test-VMHostProfileCompliance -detailed".
    For technical information, type: "get-help Test-VMHostProfileCompliance -full".
    For online help, type: "get-help Test-VMHostProfileCompliance -online"

Test-VMHostSnmp
-------------------------

NAME
    Test-VMHostSnmp
    
SYNOPSIS
    This cmdlet tests the host SNMP.
    
    
SYNTAX
    Test-VMHostSnmp [-HostSnmp] <VmHostSnmp[]> [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet tests the host SNMP specified by the HostSNMP parameter.
    

PARAMETERS
    -HostSnmp <VmHostSnmp[]>
        Specifies the host SNMP you want to test.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Test-VMHostSNMP -HostSNMP (Get-VMHostSNMP)
    
    Retrieves and tests the SNMP of the default server.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Test-VMHostSnmp -examples".
    For more information, type: "get-help Test-VMHostSnmp -detailed".
    For technical information, type: "get-help Test-VMHostSnmp -full".
    For online help, type: "get-help Test-VMHostSnmp -online"



