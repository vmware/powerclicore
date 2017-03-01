Open Commands
=========================

This page contains details on **Open** commands.

Open-VMConsoleWindow
-------------------------


NAME
    Open-VMConsoleWindow
    
SYNOPSIS
    This cmdlet opens a window to the virtual machine's console.
    
    
SYNTAX
    Open-VMConsoleWindow [-VM] <RemoteConsoleVM[]> [-FullScreen] [-UrlOnly] [-Server <VIConnection[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
    
    
DESCRIPTION
    This cmdlet opens a window to the virtual machine's console. The window is opened in a Web page in the browser configured in the VMConsoleWindowBrowser setting (in 
    Set-PowerCLIConfiguration), or in the default Web browser, if the setting is not configured.
    
    If the default browser is not 32-bit, you must configure a 32-bit browser to be used by this cmdlet. This configuration is done through the Set-PowerCLIConfiguration cmdlet, by 
    specifying the VMConsoleWindowBrowser setting and providing the full path to a browser's executable file. The officially supported browsers are listed on the VMware site, under the VMRC 
    distributable (which is used to display the virtual machine's console).
    

PARAMETERS
    -VM <RemoteConsoleVM[]>
        Specifies the virtual machines for which to open a remote console. Supports vCloud and vSphere virtual machines.
        
    -FullScreen
        If specified, opens the virtual machine console window in full screen mode.
        
    -UrlOnly
        If specified, the cmdlet returns the URL for opening a console window to the virtual machine, without opening the console window.
        
        Note: The URL is valid for 30 seconds. After 30 seconds, the screen authentication ticket contained in the URL expires.
        
    -Server <VIConnection[]>
        Specifies the vCenter Server systems or cloud server instances on which you want to run the cmdlet. If no value is passed to this parameter, the command runs on the default servers. 
        For more information about default servers, see the description of Connect-VIServer.
        
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
    
    C:\PS>Get-CIVM myVM | Open-VMConsoleWindow -FullScreen
    
    Opens the console of the specified virtual machine in full screen mode.
    
    
    
    
REMARKS
    To see the examples, type: "get-help Open-VMConsoleWindow -examples".
    For more information, type: "get-help Open-VMConsoleWindow -detailed".
    For technical information, type: "get-help Open-VMConsoleWindow -full".
    For online help, type: "get-help Open-VMConsoleWindow -online"



