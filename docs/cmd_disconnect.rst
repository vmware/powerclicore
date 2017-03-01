Disconnect Commands
=========================

This page contains details on **Disconnect** commands.

Disconnect-VIServer
-------------------------


NAME
    Disconnect-VIServer
    
SYNOPSIS
    This cmdlet closes the connection to a vCenter Server system.
    
    
SYNTAX
    Disconnect-VIServer [[-Server] <VIServer[]>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet closes the connection to a vCenter Server system. In PowerCLI, you can have multiple connections to a server. In order to disconnect from a server, you must close all active 
    connections to it. By default, Disconnect-VIServer closes only the last connection to the specified server. To close all active connections to a server, use the Force parameter or run 
    the cmdlet for each connection. When a server is disconnected, it is removed from the default servers list. For more information about default servers, see the description of 
    Connect-VIServer.
    

PARAMETERS
    -Server <VIServer[]>
        Specifies the vCenter Server systems you want to disconnect from.
        
    -Force
        Indicates that you want to close all active connections to the specified server and disconnect from it. If the value is $false, the cmdlet closes only the last connection to the 
        specified server and you must run Disconnect-VIServer for each active connection to this server in order to disconnect from it.
        
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
    
    C:\PS>$Server = Connect-VIServer 10.23.112.235
    
    Disconnect-VIServer -Server $Server
    
    Connects to a server with an IP address 10.23.112.235 and saves the returned VIServer object in the $Server variable. Then disconnects from the specified server.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Disconnect-VIServer -Server $global:DefaultVIServers -Force
    
    Closes all connections to the default servers.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Disconnect-VIServer -Server * -Force
    
    Disconnects all server connections.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Disconnect-VIServer -examples".
    For more information, type: "get-help Disconnect-VIServer -detailed".
    For technical information, type: "get-help Disconnect-VIServer -full".
    For online help, type: "get-help Disconnect-VIServer -online"



