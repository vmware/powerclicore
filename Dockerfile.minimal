FROM vmware/photon2

LABEL authors="renoufa@vmware.com,jaker@vmware.com"

ENV TERM linux

WORKDIR /root

# Set terminal. If we don't do this, weird readline things happen.
RUN echo "/usr/bin/pwsh" >> /etc/shells && \
    echo "/bin/pwsh" >> /etc/shells && \
    tdnf install -y powershell unzip && \
    curl -O -J -L https://www.powershellgallery.com/api/v2/package/PackageManagement && \
    unzip PackageManagement -d /usr/lib/powershell/Modules/PackageManagement && \
    rm -f PackageManagement && \
    curl -O -J -L https://www.powershellgallery.com/api/v2/package/PowerShellGet && \
    unzip PowerShellGet -d /usr/lib/powershell/Modules/PowerShellGet && \
    rm -f PowerShellGet && \
    mkdir -p /usr/lib/powershell/ref/ && ln -s /usr/lib/powershell/*.dll /usr/lib/powershell/ref/ && \
    pwsh -c "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.PowerCLI,PowerNSX,PowervRA" && \
    curl -o ./PowerCLI-Example-Scripts.zip -J -L https://github.com/vmware/PowerCLI-Example-Scripts/archive/master.zip && \
    unzip PowerCLI-Example-Scripts.zip && \
    rm -f PowerCLI-Example-Scripts.zip && \
    mv ./PowerCLI-Example-Scripts-master ./PowerCLI-Example-Scripts && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/lib/powershell/Modules/ && \
    find / -name "net45" | xargs rm -rf && \ 
    tdnf erase -y unzip && \
    tdnf clean all


CMD ["/bin/pwsh"]
