Format Commands
=========================

This page contains details on **Format** commands.

Format-VMHostDiskPartition
-------------------------


NAME
    Format-VMHostDiskPartition
    
SYNOPSIS
    This cmdlet formats a new VMFS (Virtual Machine File System) on each of the specified host disk partitions.
    
    
SYNTAX
    Format-VMHostDiskPartition [-VolumeName] <String> -VMHostDiskPartition <VMHostDiskPartition[]> [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet formats a new VMFS (Virtual Machine File System) on each of the specified host disk partitions.
    

PARAMETERS
    -VolumeName <String>
        Specifies a name for the new VMFS.
        
    -VMHostDiskPartition <VMHostDiskPartition[]>
        Specifies the disk partitions on which you want to format a new VMFS.
        
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
    
    C:\PS>Get-VMHost Host | Get-VMHostDisk | Get-VMHostDiskPartition | ? {.Type -eq "Ntfs"} | Format-VMHostDiskPartition -VolumeName "NewStorage"
    
    Formats the NTFS disk partitions of a host.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Format-VMHostDiskPartition -examples".
    For more information, type: "get-help Format-VMHostDiskPartition -detailed".
    For technical information, type: "get-help Format-VMHostDiskPartition -full".
    For online help, type: "get-help Format-VMHostDiskPartition -online"



