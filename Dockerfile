FROM photon:1.0

MAINTAINER renoufa@vmware.com

# Set Versions for later use
ARG POWERCLI_PACKAGE=PowerCLI.ViCore.4523941.zip
ARG POWERCLI_VDS_PACKAGE=PowerCLI.Vds.4523941.zip

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
RUN tdnf install -y unzip curl powershell

# Download and Unzip the PowerCLI module to the users module directory
ADD https://download3.vmware.com/software/vmw-tools/powerclicore/PowerCLI_Core.zip /powershell
RUN unzip /powershell/PowerCLI_Core.zip -d /powershell
RUN mkdir -p /root/.config/powershell/
RUN mkdir -p ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_PACKAGE -d ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_VDS_PACKAGE -d ~/.local/share/powershell/Modules

# Change the default PowerShell profile to include PowerCLI startup
RUN mv /powershell/Start-PowerCLI.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1

CMD ["powershell"]
