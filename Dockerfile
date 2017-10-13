FROM photon:1.0

MAINTAINER renoufa@vmware.com
LABEL PSVersion="v6.0.0-alpha.18"

# Set Versions for later use
ARG POWERCLI_PACKAGE=PowerCLI.ViCore.zip
ARG POWERCLI_VDS_PACKAGE=PowerCLI.Vds.zip
ARG POWERCLI_CIS_PACKAGE=PowerCLI.Cis.zip

# Add PowerShell repository location to Photon OS
RUN echo $'[powershell]\n\

name=VMware Photon Linux 1.0(x86_64)\n\
baseurl=https://vmware.bintray.com/powershell\n\
gpgcheck=0\n\
enabled=1\n\
skip_if_unavailable=True\n '\
>> /etc/yum.repos.d/powershell.repo

# Set the working directory 
WORKDIR /powershell

# Install PowerShell on Photon 
RUN tdnf install -y unzip powershell curl openssl less git

# Download and Unzip the PowerCLI module to the users module directory
ADD https://download3.vmware.com/software/vmw-tools/powerclicore/PowerCLI_Core.zip /powershell
RUN unzip /powershell/PowerCLI_Core.zip -d /powershell
RUN mkdir -p /root/.config/powershell/
RUN mkdir -p ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_PACKAGE -d ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_VDS_PACKAGE -d ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_CIS_PACKAGE -d ~/.local/share/powershell/Modules

# Change the default PowerShell profile to include PowerCLI startup
RUN mv /powershell/Start-PowerCLI.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# Add PowerNSX
ADD https://raw.githubusercontent.com/vmware/powernsx/master/module/platform/core/PowerNSX/PowerNSX.psd1 /powershell
ADD https://raw.githubusercontent.com/vmware/powernsx/master/module/platform/core/PowerNSX/PowerNSX.psm1 /powershell
RUN mkdir ~/.local/share/powershell/Modules/PowerNSX
RUN cp /powershell/PowerNSX.ps*1 ~/.local/share/powershell/Modules/PowerNSX/

# Add PowervRA 
RUN powershell -Command 'Set-PSRepository -Name PSGallery -InstallationPolicy Trusted'
RUN powershell -Command 'Install-Module -Name PowervRA -Confirm:$false'

# Add the PowerCLI Example Scripts and Modules
RUN git clone https://github.com/vmware/PowerCLI-Example-Scripts

# Add modules from PowerCLI-Example-Scripts folder to correct places
RUN mv /powershell/PowerCLI-Example-Scripts/Modules/VMware.VMEncryption ~/.local/share/powershell/Modules/
RUN mv /powershell/PowerCLI-Example-Scripts/Modules/VMFSIncrease ~/.local/share/powershell/Modules/
RUN mv /powershell/PowerCLI-Example-Scripts/Modules/Vi-Module ~/.local/share/powershell/Modules/
RUN chmod +x /powershell/PowerCLI-Example-Scripts/Scripts/modules.sh
RUN /powershell/PowerCLI-Example-Scripts/Scripts/modules.sh

CMD ["powershell"]