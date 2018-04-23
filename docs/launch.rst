Launching PowerCLI
==================

Launching PowerCLI from Mac/Linux
---------------------------------

Step 1 - Open terminal

Step 2 - Start Powershell in the terminal by running the following command:
::

 powershell

Step 3 - Import the PowerCLI Modules into your PowerShell Session:
::

 Get-Module -ListAvailable PowerCLI* | Import-Module

Step 3a - (Optional - Please Read) If the SSL certificates of your vCenter are not trusted by your OS, disable SSL certificate validation for PowerCLI by running:
::

 Set-PowerCLIConfiguration -InvalidCertificateAction Ignore

Step 4 - Connect to your vCenter Server using Connect-VIServer
::

 PS> Connect-VIServer -Server 192.168.1.51 -User administrator@vSphere.local -
 Password VMware1!
 Name Port User
 ---- ---- ----
 192.168.1.51 443 VSPHERE.LOCAL\Administrator

Launching the PowerCLI Docker container
---------------------------------------
To open a interactive Terminal and run:
:: 

 docker run --rm -it vmware/powerclicore

To just execute a local script run:
:: 

 docker run --rm --entrypoint="/usr/bin/pwsh" -v ${PWD}/scripts:/tmp/scripts vmware/powerclicore /tmp/scripts/sample1.ps1

Where /scripts is a local folder cointaining your scripts.

More options for working with and running the container can be found here_.

.. _here: http://www.virtuallyghetto.com/2016/10/5-different-ways-to-run-powercli-script-using-powercli-core-docker-container.html
