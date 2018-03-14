FROM vmware/photon2

LABEL authors="renoufa@vmware.com,jaker@vmware.com"

# Install PowerShell on Photon 
RUN tdnf install -y powershell unzip git && \
    tdnf clean all

# Install PackageManagement and PowerShellGet
# This is temporary until it is included in the PowerShell Core package for Photon
RUN curl -O -J -L https://www.powershellgallery.com/api/v2/package/PackageManagement && \
    unzip PackageManagement -d /usr/lib/powershell/Modules/PackageManagement && \
    rm -f PackageManagement

RUN curl -O -J -L https://www.powershellgallery.com/api/v2/package/PowerShellGet && \
    unzip PowerShellGet -d /usr/lib/powershell/Modules/PowerShellGet && \
    rm -f PowerShellGet

# Add the PowerCLI Example Scripts and Modules
RUN git clone https://github.com/vmware/PowerCLI-Example-Scripts && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/local/share/powershell/Modules/

# Install VMware modules from PSGallery
SHELL ["pwsh", "-command"]
RUN Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
RUN Install-Module VMware.PowerCLI,PowerNSX,PowervRA

CMD ["pwsh"]