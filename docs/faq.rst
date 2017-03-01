Frequently Asked Questions
==========================

**1. I am receiving an error when using Connect-VIServer as below**

::

 WARNING: Invalid server certificate. Use Set-PowerCLIConfiguration to set the value for the InvalidCertificateAction option to Prompt if you'd like to connect once or to add a permanent exception for this server.
 connect-viserver : 10/17/16 3:00:15 PM 	Connect-VIServer       		An error occurred while sending the request.
 At line:1 char:1
 connect-viserver 10.192.116.20 -User administrator@vsphere.local -Pas ...
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 CategoryInfo          : NotSpecified: (:) [Connect-VIServer], ViError
 FullyQualifiedErrorId : Client20_ConnectivityServiceImpl_Reconnect_Exception,VMware.VimAutomation.ViCore.Cmdlets.Commands.ConnectVIServer

This error is because the certificate on your vCenter server is not trusted by the machine you are making the connection from.

To fix this issue, replace the certificate chain on your machine or use the Set-PowerCLIConfiguration cmdlet to ignore certificate issues as below:

::

 Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
