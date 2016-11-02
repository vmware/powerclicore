# PowerCLI Core
Document Version 1.8

NOTE: A text version of this document can be found as README.md in the download zip file for this fling.

# Welcome!

PowerCLI Core uses Microsoft PowerShell Core and .Net Core to enable users of VMware Photon OS, Linux, Mac and Docker to now use the same cmdlets which were previously only available on windows.
 
PowerCLI Core enables a multi-platform scripting language which will allow you to manage your VMware infrastructure on any OS. Scripts written previously against the windows version are now made portable to a number of operating systems and can simply be loaded and run on these new OS versions without change.

PowerCLI Core can be downloaded from [the VMware Flings site here](https://labs.vmware.com/flings/powercli-core) and used with he below instructions to be deployed.

## PowerCLI Core vs PowerCLI for Windows
This initial version provides access to the core vSphere module including over 280 cmdlets allowing you to manage most of the major features of vCenter and ESXi.  The below table shows the difference between the windows version and what is currently offered for PowerCLI Core:

| Module   |Description              |PowerCLI for Windows|PowerCLI Core|
|----------|-------------------------|--------------------|-------------|
| Core     |vCenter and ESXi Cmdlets | √ | √|
| VDS      |vSphere Distributed Switch Cmdlets | √ | √ |
| Storage  |Storage Cmdlets | √ | X |
| License  |License View Cmdlet | √ | X |
| VUM      |Update Manager Cmdlets | √ | X |
| Auto Deploy | Auto Deploy Cmdlets | √ | X |
| Image Builder | Image Builder Cmdlets | √ | X |
| VCD | vCloud Director Cmdlets | √ | X |
| vCloud Air | vCloud Air Cmdlets | √ | X |
| Content Library | Content Library Cmdlets | √ | X |

# Installation
## Mac Install
### Install

Step 1 - Download and Install .NET Core for Mac OS X from [here](https://www.microsoft.com/net/core#macos)

Step 2 - Download and Install PowerShell for Mac OS X using the instructions and packages from [here](https://github.com/PowerShell/PowerShell) this will also include the install of homebrew

Step 3 - Perform the following steps to ensure you are using the latest OpenSSL and Curl:

```
brew install openssl
brew install curl --with-openssl

sudo install_name_tool -change /usr/lib/libcurl.4.dylib /usr/local/opt/curl/lib/libcurl.4.dylib /usr/local/microsoft/powershell/6.0.0-alpha.11/System.Net.Http.Native.dylib
sudo install_name_tool -add_rpath /usr/local/opt/openssl/lib /usr/local/microsoft/powershell/6.0.0-alpha.11/System.Security.Cryptography.Native.dylib

```

Step 4 - Create the following directory if it does not exists by running the following command:

```console
mkdir -p ~/.local/share/powershell/Modules
```

Step 5 - Extract the PowerCLI modules into the directory you created above by running the following command:

```console
unzip PowerCLI.ViCore.4523941.zip -d ~/.local/share/powershell/Modules
unzip PowerCLI.Vds.4523941.zip -d ~/.local/share/powershell/Modules
```

### Launch PowerShell
Step 1 - Open terminal

Step 2 - Start Powershell in the terminal by running the following command:
```
powershell
```

Step 3 - Import the PowerCLI Modules into your PowerShell Session:
```
Get-Module -ListAvailable PowerCLI* | Import-Module
```

Step 4 - Connect to your vCenter Server using Connect-VIServer
```
PS> Connect-VIServer -Server 192.168.1.51 -User administrator@vSphere.local -Password VMware1!

Name                           Port  User
----                           ----  ----
192.168.1.51                   443   VSPHERE.LOCAL\Administrator
```

## Linux Install
### Installing on VMware Photon OS 1.0
Step 1 - On the Photon machine Edit a new file in the following location /etc/yum.repos.d/powershell.repo and place the following content in it:

```
[powershell]
name=VMware Photon Linux 1.0(x86_64)
baseurl=https://vmware.bintray.com/powershell
gpgcheck=0
enabled=1
skip_if_unavailable=True
```

Step 2 - Install PowerShell onto Photon OS and create the modules folder needed later: 
```
tdnf install -y powershell
mkdir -p ~/.local/share/powershell/Modules

```

Step 3 - From your download machine, copy the PowerCLI Modules from the downloaded fling zip file to the Photon machine, for example use scp as below:
```
scp PowerCLI* root@PHOTON_IP_ADDRESS:/root/.local/share/powershell/Modules
```

Step 4 - From your Photon machine, install Unzip on the photon box
```
tdnf install -y unzip
```

Step 5 - Extract the PowerCLI modules into the directory you copied them into above by running the following command:
```
cd /root/.local/share/powershell/Modules
unzip PowerCLI.ViCore.4523941.zip
unzip PowerCLI.Vds.4523941.zip
```

### Launch PowerShell

Step 1 - Start Powershell in a terminal by running the following command:
```
powershell
```

Step 2 - Import the PowerCLI Modules into your PowerShell Session:
```
Get-Module -ListAvailable PowerCLI* | Import-Module
```

Step 3 - Connect to your vCenter Server using Connect-VIServer
```
PS> Connect-VIServer -Server 192.168.1.51 -User administrator@vSphere.local -Password VMware1!

Name                           Port  User
----                           ----  ----
192.168.1.51                   443   VSPHERE.LOCAL\Administrator
```

### Installing on Ubuntu 14.04.5 Server (64-bit)

Step 1 – Install the pre-requisites as per the below example:
```
sudo apt-get update && \
    sudo apt-get install --no-install-recommends -yq \
    openssh-server \
    ca-certificates \
    curl \
    libunwind8 \
    libicu52 \
    unzip \
    wget \
    libcurl4-openssl-dev
```

Step 2 - Download PowerShell for Linux from [here](https://github.com/PowerShell/PowerShell) on your Ubuntu machine and install as below: 
```
curl -SLO https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.11/powershell_6.0.0-alpha.11-1ubuntu1.14.04.1_amd64.deb
sudo dpkg -i powershell_6.0.0-alpha.11-1ubuntu1.14.04.1_amd64.deb
```

Step 3 - Create the following directory if it does not exist by running the following command:
```
mkdir -p ~/.local/share/powershell/Modules
```

Step 4 - From your download machine, copy the PowerCLI Modules from the downloaded fling zip file to the Photon machine under your users folders (replace "username" with your username), for example use scp as below:
```
scp PowerCLI* username@UBUNTU_IP_ADDRESS:/home/username/.local/share/powershell/Modules
```

Step 5 - From the Ubunutu server extract the PowerCLI modules into the directory you created above by running the following command:
```
cd ~/.local/share/powershell/Modules
unzip PowerCLI.ViCore.4523941.zip
unzip PowerCLI.Vds.4523941.zip
```

### Launch PowerShell

Step 1 - Start Powershell in a terminal window by running the following command:
```
powershell
```

Step 2 - Import the PowerCLI Modules into your PowerShell Session:
```
Get-Module -ListAvailable PowerCLI* | Import-Module
```

Step 3 - Connect to your vCenter Server using Connect-VIServer
```
PS> Connect-VIServer -Server 192.168.1.51 -User administrator@vSphere.local -Password VMware1!

Name                           Port  User
----                           ----  ----
192.168.1.51                   443   VSPHERE.LOCAL\Administrator
```
## Docker Image
More information can be found on the docker PowerCLI Core image on [docker hub here](https://hub.docker.com/r/vmware/powerclicore/)

Step 1 Run the following to download the container from the docker hub:

```console
docker pull vmware/powerclicore
```

### Launch the container

```console
docker run --rm -it vmware/powerclicore
```

More options for working with and running the container can be [found here](http://www.virtuallyghetto.com/2016/10/5-different-ways-to-run-powercli-script-using-powercli-core-docker-container.html)

# Frequently Asked Questions

## I am receiving an error when using Connect-VIServer as below

```
WARNING: Invalid server certificate. Use Set-PowerCLIConfiguration to set the value for
the InvalidCertificateAction option to Prompt if you'd like to connect once or to add a
permanent exception for this server.
connect-viserver : 10/17/16 3:00:15 PM 	Connect-VIServer       		An error occurred while
sending the request.
At line:1 char:1
+ connect-viserver 10.192.116.20 -User administrator@vsphere.local -Pas ...
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [Connect-VIServer], ViError
    + FullyQualifiedErrorId : Client20_ConnectivityServiceImpl_Reconnect_Exception,VMwa
   re.VimAutomation.ViCore.Cmdlets.Commands.ConnectVIServer
```

This error is because the certificate on your vCenter server is not trusted by the machine you are making the connection from.

To fix this issue, replace the certificate chain on your machine or use the Set-PowerCLIConfiguration cmdlet to ignore certificate issues as below:

```
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
```

# Known Issues
* PowerShell Core does not provide aliases for some of the well known PowerShell cmdlets, watch out for aliases like sleep and sort as these will run native linux commands, it is recommended you use the full cmdlet names like Sort-Object and Start-Sleep for example.
* The Get-VMHostHardware cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Get-VMHostPciDevice cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The Open-VMConsoleWindow cmdlet has not yet been fully ported to PowerCLI Core and will provide an error when run
* The *-Tag, *-TagCategory, *-TagAssignment cmdlets require a trusted server certificate
* The Content Library Cmdlets have not yet been fully ported to PowerCLI Core and will provide an error when run
* The Credential store Cmdlets have not yet been fully ported to PowerCLI Core and will provide an error when run
* The Import/Export-VApp Cmdlets currently requires a trusted server certificate

