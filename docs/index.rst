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

Changelog
=========

+----------+--------+--------------------------------------------------------+
| Date     | Tag    | Change                                                 |
+==========+========+========================================================+
| 01-11-17 | Latest | Added PowerVRA Module for managing vRealize Automation |
+----------+--------+--------------------------------------------------------+
| 01-05-17 | Latest | Added PowerNSX Module for managing NSXv                |
+----------+--------+--------------------------------------------------------+

.. _found here: http://www.virtuallyghetto.com/2016/10/5-different-ways-to-run-powercli-script-using-powercli-core-docker-container.html

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: Installation

   docker
   mac
   ubuntu

.. toctree::
   :maxdepth: 2
   :hidden:
   :titlesonly:
   :caption: Cmdlet Reference

   cmd_connect
   cmd_add
   cmd_copy
   cmd_disconnect
   cmd_dismount
   cmd_export
   cmd_format
   cmd_get
   cmd_import
   cmd_install
   cmd_invoke
   cmd_mount
   cmd_move
   cmd_new
   cmd_open
   cmd_remove
   cmd_restart
   cmd_set
   cmd_start
   cmd_stop
   cmd_suspend
   cmd_test
   cmd_update
   cmd_wait

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: FAQ/Issue

   faq
   known_issues

