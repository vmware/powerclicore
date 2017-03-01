Known Issues
============
* PowerShell Core does not provide aliases for some of the well known PowerShell cmdlets, watch out for aliases like sleep and sort as these will run native linux commands, it is recommended you use the full cmdlet names like Sort-Object and Start-Sleep for example.
* The Get-VMHostHardware cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Get-VMHostPciDevice cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Open-VMConsoleWindow cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Tag, TagCategory, TagAssignment cmdlets are not supported with vSphere 6.5
* The Content Library Cmdlets have not yet been fully ported to PowerCLI Core and will provide an error when run
* The Credential store Cmdlets have not yet been fully ported to PowerCLI Core and will provide an error when run
