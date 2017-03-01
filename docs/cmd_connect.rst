Connect Commands
=========================

This page contains details on **Connect** commands.

Connect-VIServer
-------------------------


NAME
    Connect-VIServer
    
SYNOPSIS
    This cmdlet establishes a connection to a vCenter Server system.
    
    
SYNTAX
    Connect-VIServer [-Server] <String[]> [-Port <Int32>] [-Protocol <String>] [-Credential <PSCredential>] [-User <String>] [-Password <String>] [-Session <String>] [-NotDefault] 
    [-SaveCredentials] [-AllLinked] [-Force] [<CommonParameters>]
    
    Connect-VIServer -Menu [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet establishes a connection to a vCenter Server system. The cmdlet starts a new session or re-establishes a previous session with a vCenter Server system using the specified 
    parameters.
    
    When you attempt to connect to a server, the server checks for valid certificates. To set the default behavior of vSphere PowerCLI when no valid certificates are recognized, use the 
    InvalidCertificateAction parameter of the Set-PowerCLIConfiguration cmdlet. For more information about invalid certificates, run 'Get-Help about_invalid_certificates'.  
    
    You can have more than one connections to the same server. To disconnect from a server, you need to close all active connections to this server.
    vSphere PowerCLI supports working with multiple default servers. If you select this option, every time when you connect to a different server using Connect-VIServer, the new server 
    connection is stored in an array variable together with the previously connected servers, unless the NotDefault parameter is set.  This variable is named $DefaultVIServers and its 
    initial value is an empty array. When you run a cmdlet and the target servers cannot be determined from the specified parameters, the cmdlet runs against all servers stored in the array 
    variable. To remove a server from the $DefaultVIServers variable, you can either use Disconnect-Server to close all active connections to the server, or modify the value of 
    $DefaultVIServers manually.
    
    If you choose to work with a single default server, when you run a cmdlet and the target servers cannot be determined from the specified parameters, the cmdlet runs against the last 
    connected server. This server is stored in the $defaultVIServer variable, which is updated every time you establish a new connection.
    
    To switch between single and multiple default servers working mode, use DefaultServerMode parameter of the Set-PowerCLIConfiguration cmdlet. Working with multiple default servers will 
    be enabled by default in a future release.
    

PARAMETERS
    -Server <String[]>
        Specifies the IP address or the DNS name of the vSphere server to which you want to connect. You can also specify a server by providing its IPv6 address enclosed in square brackets, 
        for example [fe80::250:56ff:feb0:74bd%4].
        
    -Port <Int32>
        Specifies the port on the server you want to use for the connection.
        
    -Protocol <String>
        Specifies the Internet protocol you want to use for the connection. It can be either http or https.
        
    -Credential <PSCredential>
        Specifies a PSCredential object that contains credentials for authenticating with the server. For more information about the server authentication logic of PowerCLI, run "help 
        about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future release.
        
    -User <String>
        Specifies the user name you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the 
        server authentication logic of PowerCLI, run "help about_server_authentication". Passing values to this parameter through a pipeline is deprecated and will be disabled in a future 
        release.
        
        Note: If the user name contains special characters, enclose the entire string in single quotes (').
        
    -Password <String>
        Specifies the password you want to use for authenticating with the server. If the Credential parameter is also specified, this parameter is ignored. For more information about the 
        server authentication logic of PowerCLI, run "help about_server_authentication".
        
        Note: If the password contains special characters, enclose the entire string in single quotes (').
        
    -Session <String>
        Specifies the ID of an existing vCenter Server session you want to reestablish.
        
    -NotDefault
        Indicates that you do not want to include the server to which you connect into the $defaultVIServers variable.
        
    -SaveCredentials
        Indicates that you want to save the specified credentials in the local credential store.
        
    -AllLinked
        Indicates whether you want to connect to vCenter Server in linked mode. If you specify $true for the AllLinked parameter and the server to which you want to connect is a part of a 
        federation vCenter Server, you'll be connected to all members of the linked vCenter Server.
        
        To use this option, PowerCLI must be configured to work in multiple servers connection mode. To configure PowerCLI to support multiple servers connection, specify Multiple for the 
        DefaultVIServerMode parameter of the Set-PowerCLI Configuration cmdlet.
        
    -Force
        Suppresses all user interface prompts during the cmdlet execution. Currently these include 'Multiple default servers' and 'Invalid certificate action'.
        
    -Menu
        Indicates that you want to select a connection server from a list of recently connected servers. If Menu is set to $true, the cmdlet retrieves a list of the last visited servers and 
        enters a nested command prompt, so that you can select a server from the list.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
    --------------  Example 1 --------------
    
    C:\PS>Connect-VIServer -Server 10.23.112.235 -Protocol https -User admin -Password pass
    
    Connects to a vSphere server using the User and Password parameters.
    
    
    
    
    --------------  Example 2 --------------
    
    C:\PS>Connect-VIServer Server -Credential $myCredentialsObject -Port 1234
    
    Connects to a vSphere server by using a credential object.
    
    
    
    
    --------------  Example 3 --------------
    
    C:\PS>Connect-VIServer "Server" -SessionId $sessionId
    
    Connect by using a server session ID.
    Once you connect to a server, you can save the session ID - $serverObject.SessionId, so that you can restore the existing server connection instead of reconnecting.
    
    
    
    
    --------------  Example 4 --------------
    
    C:\PS>Connect-VIServer Server
    
    Connect by using integrated authentication. In this case, the credentials you are logged on to your machine must be the same as those for the server.
    
    
    
    
    --------------  Example 5 --------------
    
    C:\PS>Connect-VIServer "Server" -User user -Password pass -SaveCredentials
    
    Connect to a server and save the credentials in the credential store. After the credentials are stored, you can connect to the server without specifying them. To get a previously saved 
    credential store item, use the Get-VICredentialStoreItem cmdlet.
    
    
    
    
    --------------  Example 6 --------------
    
    C:\PS>Connect-VIServer -Menu
    
    Connect to a server by choosing the server address from a list of previously connected servers.
    
    
    
    
    --------------  Example 7 --------------
    
    C:\PS>Connect-VIServer "Server" -AllLinked
    
    Connect to a vSphere server which is a part of a federation vCenter Server. This will Connect you to all vSphere servers in the federation as well.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Connect-VIServer -examples".
    For more information, type: "get-help Connect-VIServer -detailed".
    For technical information, type: "get-help Connect-VIServer -full".
    For online help, type: "get-help Connect-VIServer -online"



