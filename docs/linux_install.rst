Linux Installation
==================

Installing on VMware Photon OS 1.0
----------------------------------

Step 1 - On the Photon machine Edit a new file in the following location /etc/yum.repos.d/powershell.repo and place the following content in it:
::

 [powershell]
 name=VMware Photon Linux 1.0(x86_64)
 baseurl=https://vmware.bintray.com/powershell
 gpgcheck=0
 enabled=1
 skip_if_unavailable=True

Step 2 - Install PowerShell onto Photon OS and create the modules folder needed later:
::

 tdnf install -y powershell
 mkdir -p ~/.local/share/powershell/Modules

Step 3 - From your download machine, copy the PowerCLI Modules from the downloaded fling zip file to the Photon machine, for example use scp as below:
::

 scp PowerCLI* root@PHOTON_IP_ADDRESS:/root/.local/share/powershell/Modules

Step 4 - From your Photon machine, install Unzip on the photon box
::

 tdnf install -y unzip

Step 5 - Extract the PowerCLI modules into the directory you copied them into above by running the following command:
::

 cd /root/.local/share/powershell/Modules
 unzip PowerCLI.ViCore.zip
 unzip PowerCLI.Vds.zip

Installing on Ubuntu 14.04.5 Server (64-bit)
--------------------------------------------
Step 1 - Download PowerShell for Linux from here_ on your Ubuntu machine and install as below:
::

 curl -SLO https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.12/powershell_6.0.0-alpha.12-1ubuntu1.14.04.1_amd64.deb
 sudo dpkg -i powershell_6.0.0-alpha.12-1ubuntu1.14.04.1_amd64.deb
 sudo apt-get install -f

Step 2 - Create the following directory if it does not exist by running the following command:
::
 
 mkdir -p ~/.local/share/powershell/Modules

Step 3 - From your download machine, copy the PowerCLI Modules from the downloaded fling zip file to the Photon machine under your users folders (replace "username" with your username), for example use scp as below:
::

 scp PowerCLI* username@UBUNTU_IP_ADDRESS:/home/username/.local/share/powershell/Modules

Step 4 - From the Ubunutu server extract the PowerCLI modules into the directory you created above by running the following command:
::

 cd ~/.local/share/powershell/Modules
 unzip PowerCLI.ViCore.zip
 unzip PowerCLI.Vds.zip

