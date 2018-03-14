FROM vmware/photon2

LABEL authors="renoufa@vmware.com,jaker@vmware.com"

# Set terminal. If we don't do this, weird readline things happen.
ENV TERM linux
RUN echo "/usr/bin/pwsh" >> /etc/shells && \
    echo "/bin/pwsh" >> /etc/shells

# Install PowerShell on Photon 
RUN tdnf install -y powershell unzip && \
    tdnf clean all

# Set working directory so stuff doesn't end up in /
WORKDIR /root

# Install PackageManagement and PowerShellGet
# This is temporary until it is included in the PowerShell Core package for Photon
RUN curl -O -J -L https://www.powershellgallery.com/api/v2/package/PackageManagement && \
    unzip PackageManagement -d /usr/lib/powershell/Modules/PackageManagement && \
    rm -f PackageManagement

RUN curl -O -J -L https://www.powershellgallery.com/api/v2/package/PowerShellGet && \
    unzip PowerShellGet -d /usr/lib/powershell/Modules/PowerShellGet && \
    rm -f PowerShellGet

# Install VMware modules from PSGallery
SHELL [ "pwsh", "-command" ]
RUN Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
RUN Install-Module VMware.PowerCLI,PowerNSX,PowervRA

# Add the PowerCLI Example Scripts and Modules
# using ZIP instead of a git pull to save at least 100MB
SHELL [ "bash", "-c"]
RUN curl -o ./PowerCLI-Example-Scripts.zip -J -L https://github.com/vmware/PowerCLI-Example-Scripts/archive/master.zip && \
    unzip PowerCLI-Example-Scripts.zip && \
    rm -f PowerCLI-Example-Scripts.zip && \
    mv ./PowerCLI-Example-Scripts-master ./PowerCLI-Example-Scripts && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/local/share/powershell/Modules/

CMD ["/bin/pwsh"]