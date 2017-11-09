FROM photon:1.0 as downloader
WORKDIR /powershell
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

RUN tdnf install -y unzip powershell curl openssl less git
ADD https://download3.vmware.com/software/vmw-tools/powerclicore/PowerCLI_Core.zip /powershell
RUN unzip /powershell/PowerCLI_Core.zip -d /powershell && \
    mkdir -p /root/.config/powershell/ && \
    mkdir -p /root/.local/share/powershell/Modules && \
    unzip /powershell/$POWERCLI_PACKAGE -d /root/.local/share/powershell/Modules && \
    unzip /powershell/$POWERCLI_VDS_PACKAGE -d /root/.local/share/powershell/Modules && \
    unzip /powershell/$POWERCLI_CIS_PACKAGE -d /root/.local/share/powershell/Modules

# Add PowerNSX
ADD https://github.com/vmware/powernsx/archive/master.zip /powershell
RUN mkdir -p /root/.local/share/powershell/Modules/PowerNSX && \
    unzip /powershell/master.zip -d /powershell/ && \
    cp /powershell/powernsx-master/PowerNSXInstaller.ps1 ~/.local/share/powershell/Modules/PowerNSX/

# Add the PowerCLI Example Scripts and Modules
RUN git clone https://github.com/vmware/PowerCLI-Example-Scripts && \
    mv /powershell/PowerCLI-Example-Scripts/Modules/VMware.VMEncryption /root/.local/share/powershell/Modules/ && \
    mv /powershell/PowerCLI-Example-Scripts/Modules/VMFSIncrease /root/.local/share/powershell/Modules/ && \
    mv /powershell/PowerCLI-Example-Scripts/Modules/Vi-Module /root/.local/share/powershell/Modules/

# Add modules from PowerCLI-Example-Scripts folder to correct places
RUN chmod +x /powershell/PowerCLI-Example-Scripts/Scripts/modules.sh && \
    /powershell/PowerCLI-Example-Scripts/Scripts/modules.sh

FROM photon:1.0

MAINTAINER renoufa@vmware.com
LABEL PSVersion="v6.0.0-alpha.18"

# Set the working directory
WORKDIR /powershell

# Add PowerShell repository location to Photon OS
RUN echo $'[powershell]\n\
name=VMware Photon Linux 1.0(x86_64)\n\
baseurl=https://vmware.bintray.com/powershell\n\
gpgcheck=0\n\
enabled=1\n\
skip_if_unavailable=True\n '\
>> /etc/yum.repos.d/powershell.repo && \
 # Install PowerShell on Photon
 tdnf install -y powershell curl openssl
# Change the default PowerShell profile to include PowerCLI startup
COPY --from=downloader /powershell/Start-PowerCLI.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# PowerCLI module to the users module directory
COPY --from=downloader /root/.local/share/powershell/Modules /root/.local/share/powershell/Modules

# Add PowervRA
RUN powershell -Command 'Set-PSRepository -Name PSGallery -InstallationPolicy Trusted' && \
    powershell -Command 'Install-Module -Name PowervRA -Confirm:$false -RequiredVersion 2.1.0'

CMD ["powershell"]
