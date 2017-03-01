.. image:: https://labs.vmware.com/flings/files/flings/0/0/0/0/1/2/0/powerclicore140x140.jpg

PowerCLI Core
=============

Welcome!
========

PowerCLI Core uses Microsoft PowerShell Core and .Net Core to enable users of VMware Photon OS, Linux, Mac and Docker to now use the same cmdlets which were previously only available on windows.

PowerCLI Core enables a multi-platform scripting language which will allow you to manage your VMware infrastructure on any OS. Scripts written previously against the windows version are now made portable to a number of operating systems and can simply be loaded and run on these new OS versions without change.

PowerCLI Core can be downloaded from [the VMware Flings site here](https://labs.vmware.com/flings/powercli-core) and used with he below instructions to be deployed.

PowerCLI Core vs PowerCLI for Windows
=====================================
This initial version provides access to the core vSphere module including over 280 cmdlets allowing you to manage most of the major features of vCenter and ESXi.  The below table shows the difference between the windows version and what is currently offered for PowerCLI Core:

+-----------------+------------------------------------+---------------------+---------------+
| Module          | Description                        | PowerCLI for Windows| PowerCLI Core |
+=================+====================================+=====================+===============+
| Core            | vCenter and ESXi Cmdlets           | √                   | √             |
+-----------------+------------------------------------+---------------------+---------------+
| VDS             | vSphere Distributed Switch Cmdlets | √                   | √             |
+-----------------+------------------------------------+---------------------+---------------+
| Storage         | Storage Cmdlets                    | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| License         | License View Cmdlet                | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| VUM             | Update Manager Cmdlets             | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| Auto Deploy     | Auto Deploy Cmdlets                | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| Image Builder   | Image Builder Cmdlets              | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| VCD             | vCloud Director Cmdlets            | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| vCloud Air      | vCloud Air Cmdlets                 | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+
| Content Library | Content Library Cmdlets            | √                   | X             |
+-----------------+------------------------------------+---------------------+---------------+

Usage
=====

Docker Image
============

Step 1 Run the following to download the container from the docker hub:

:: 

 docker pull vmware/powerclicore


Launch the container
====================

:: 

 docker run --rm -it vmware/powerclicore

More options for working with and running the container can be `found here`_.

Changelog
=========

+----------+--------+--------------------------------------------------------+
| Date     | Tag    | Change                                                 |
+==========+========+========================================================+
| 01-11-17 | Latest | Added PowerVRA Module for managing vRealize Automation |
+----------+--------+--------------------------------------------------------+
| 01-05-17 | Latest | Added PowerNSX Module for managing NSXv                |
+----------+--------+--------------------------------------------------------+


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

Known Issues
============
* PowerShell Core does not provide aliases for some of the well known PowerShell cmdlets, watch out for aliases like sleep and sort as these will run native linux commands, it is recommended you use the full cmdlet names like Sort-Object and Start-Sleep for example.
* The Get-VMHostHardware cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Get-VMHostPciDevice cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Open-VMConsoleWindow cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Tag, TagCategory, TagAssignment cmdlets are not supported with vSphere 6.5
* The Content Library Cmdlets have not yet been fully ported to PowerCLI Core and will provide an error when run
* The Credential store Cmdlets have not yet been fully ported to PowerCLI Core and will provide an error when run

.. _found here: http://www.virtuallyghetto.com/2016/10/5-different-ways-to-run-powercli-script-using-powercli-core-docker-container.html

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: User Documentation

   requirements
   installation
   getting_started
   project_architecture
   support
   contribution
   licensing  
   faq

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: Command Documentation

   cmd_connect
   cmd_get
   cmd_move
   cmd_new
   cmd_protect
   cmd_remove
   cmd_set
   cmd_start
   cmd_stop
   cmd_sync

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: Workflow Examples

   flow_audit
   flow_backup_validation

