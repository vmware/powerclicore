FROM mcr.microsoft.com/powershell:lts-alpine-3.10

LABEL authors="renoufa@vmware.com,jaker@vmware.com"

# Set terminal. If we don't do this, weird readline things happen.
# ENV TERM linux

WORKDIR /root

RUN echo "/usr/bin/pwsh" >> /etc/shells && \
    echo "/bin/pwsh" >> /etc/shells && \
    pwsh -c "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.PowerCLI -RequiredVersion 11.5.0.14912921" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module PowerNSX -RequiredVersion 3.0.1174" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module PowervRA -RequiredVersion 3.6.0" && \
    wget -O ./PowerCLI-Example-Scripts.zip https://github.com/vmware/PowerCLI-Example-Scripts/archive/03272c1d2db26a525b31c930e3bf3d20d34468e0.zip && \
    unzip PowerCLI-Example-Scripts.zip && \
    rm -f PowerCLI-Example-Scripts.zip && \
    mv ./PowerCLI-Example-Scripts-* ./PowerCLI-Example-Scripts && \
    mv ./PowerCLI-Example-Scripts/Modules/* /opt/microsoft/powershell/7-lts/Modules/ && \
    find . -name "net45" | xargs rm -rf

# CMD ["/bin/pwsh"]
