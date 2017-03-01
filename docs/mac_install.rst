Mac Installation
================

Install
-------

These are the detailed instructions.

Step 1 - Download and Install PowerShell for Mac OS X using the instructions and packages
from here_ this will also include the install of homebrew

Step 2 - Make sure you did not miss this step from the PowerShell installation instruction:
::

 brew install openssl
 brew install curl --with-openssl

Step 3 - Create the following directory if it does not exists by running the following command:
::

 mkdir -p ~/.local/share/powershell/Modules

Step 4 - Extract the PowerCLI modules into the directory you created above by running the following
command:
::

 unzip PowerCLI.ViCore.zip -d ~/.local/share/powershell/Modules
 unzip PowerCLI.Vds.zip -d ~/.local/share/powershell/Modules

.. here: https://github.com/PowerShell/PowerShell