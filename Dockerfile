FROM mcr.microsoft.com/powershell:lts-ubuntu-20.04

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
    mkdir --parents /usr/local/share/powershell/Modules && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/local/share/powershell/Modules/ && \
    rm -rf /usr/local/share/powershell/Modules/VMware.vSphere.SsoAdmin && \
    apt-get remove -y git


# Install PowerShell Modules
## Invoke-DscResource is no longer an experimental feature starting with PSDesiredStateConfiguration version 2.0.6

RUN pwsh -c "Install-Module PSDesiredStateConfiguration -MinimumVersion 2.0.6" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.PowerCLI" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.vSphereDSC" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.CloudServices" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name VMware.vSphere.SsoAdmin" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name PowerVCF" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name PowerNSX" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module -Name PowervRA" && \
    find / -name "net45" | xargs rm -rf
    

# Install VMware.DeployAutomation dependencies

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget build-essential libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.6 libgdm-dev libdb4o-cil-dev libpcap-dev && \
    cd /usr/src && \
    wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz && \
    tar xzf Python-3.7.9.tgz && \
    cd Python-3.7.9 && \
    ./configure  && \
    make && \
    make install

# Install required pip modules and set python path
RUN pip3 install six psutil lxml pyopenssl && \
    pwsh -c "Set-PowerCLIConfiguration -PythonPath /usr/local/bin/python3 -Scope AllUsers -Confirm:\$false"

