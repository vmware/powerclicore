FROM vmware/photon2

LABEL authors="renoufa@vmware.com,jaker@vmware.com"

# Install PowerShell on Photon 
RUN tdnf install -y powershell unzip && \
    tdnf clean all

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
RUN curl -O https://github.com/vmware/PowerCLI-Example-Scripts/archive/master.zip && \
    unzip master.zip -d ./PowerCLI-Example-Scripts/ && \
    rm -f master.zip && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/local/share/powershell/Modules/

# Run pwsh from bash after setting terminal
# This is a workaround, as CMD ["pwsh"] results in a readline issue where each keystroke results in a new line.
CMD [ "/bin/bash", "-c", "export TERM=linux; pwsh" ]