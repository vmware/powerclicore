FROM mcr.microsoft.com/powershell

LABEL authors="renoufa@vmware.com,jaker@vmware.com,dmilov@vmware.com,nklinkachev@vmware.com"

# Set PowerShell Gallery Repository

RUN pwsh -c 'Set-PSRepository -Name PSGallery -InstallationPolicy Trusted'

# Add Commuunity Examples
# Note: VMware.vSphere.SsoAdmin is removed and later installed from the PowerShell Gallery.

WORKDIR /root

ENV TZ=Etc/UTC
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

RUN apt-get update && \
    apt-get install -y --no-install-recommends git dnsutils && \
    git clone https://github.com/vmware/PowerCLI-Example-Scripts.git && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/lib/powershell/Modules/ && \
    rm -rf /usr/lib/powershell/Modules/VMware.vSphere.SsoAdmin && \
    apt-get remove -y git

# Install PowerShell Modules

RUN pwsh -c "Install-Module -Name PSDesiredStateConfiguration" && \
    pwsh -c "Enable-ExperimentalFeature PSDesiredStateConfiguration.InvokeDscResource" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.PowerCLI" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.vSphereDSC" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.CloudServices" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.vSphere.SsoAdmin" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name PowerVCF" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name PowerNSX" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name PowervRA && \
    find / -name "net45" | xargs rm -rf
    
