FROM photon:1.0

MAINTAINER renoufa@vmware.com
LABEL PSVersion="v6.0.0-alpha.14"

# Set Versions for later use
ARG POWERCLI_PACKAGE=PowerCLI.ViCore.zip
ARG POWERCLI_VDS_PACKAGE=PowerCLI.Vds.zip

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
RUN tdnf install -y unzip powershell curl openssl less

# Download and Unzip the PowerCLI module to the users module directory
ADD https://download3.vmware.com/software/vmw-tools/powerclicore/PowerCLI_Core.zip /powershell
RUN unzip /powershell/PowerCLI_Core.zip -d /powershell
RUN mkdir -p /root/.config/powershell/
RUN mkdir -p ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_PACKAGE -d ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_VDS_PACKAGE -d ~/.local/share/powershell/Modules

# Change the default PowerShell profile to include PowerCLI startup
RUN mv /powershell/Start-PowerCLI.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# Add PowerNSX
ADD https://github.com/vmware/powernsx/archive/master.zip /powershell
RUN mkdir ~/.local/share/powershell/Modules/PowerNSX
RUN unzip /powershell/master.zip -d /powershell/
RUN cp /powershell/powernsx-master/PowerNSX.ps*1 ~/.local/share/powershell/Modules/PowerNSX/

# Add PowervRA 
ADD https://github.com/jakkulabs/PowervRA/releases/download/v2.0.0/PowervRA.zip /powershell
RUN unzip /powershell/PowervRA.zip -d /powershell/
RUN mv /powershell/PowervRA ~/.local/share/powershell/Modules/
RUN rm -f /powershell/PowervRA

CMD ["powershell"]
