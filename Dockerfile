FROM microsoft/powershell

LABEL authors="renoufa@vmware.com,jaker@vmware.com"

# Install PowerCLI/PowerNSX
RUN pwsh -c \
    "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted; \
    \$ProgressPreference = \"SilentlyContinue\"; \
    apt-get update ; apt-get install -y curl unzip ; apt-get clean; \
    Install-Module VMware.PowerCLI,PowerNSX,PowervRA; \
    Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:\$false; \
    find / -name \"net45\" | xargs rm -rf; \
    curl -o ./PowerCLI-Example-Scripts.zip -J -L https://github.com/vmware/PowerCLI-Example-Scripts/archive/master.zip; \
    mkdir /usr/local/share/powershell/Modules; \
    unzip PowerCLI-Example-Scripts.zip; \
    rm -f PowerCLI-Example-Scripts.zip; \
    mv ./PowerCLI-Example-Scripts-master ./PowerCLI-Example-Scripts; \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/local/share/powershell/Modules/; \
    Set-PSRepository -Name PSGallery -InstallationPolicy UnTrusted"

CMD ["/usr/bin/pwsh"]
