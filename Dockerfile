FROM photon:3.0

LABEL authors="renoufa@vmware.com,jaker@vmware.com,dmilov@vmware.com"

ENV TERM linux

WORKDIR /root

# Set terminal. If we don't do this, weird readline things happen.
RUN echo "/usr/bin/pwsh" >> /etc/shells && \
    echo "/bin/pwsh" >> /etc/shells && \
    tdnf install -y wget tar icu powershell-7.1.4-1.ph3 git unzip && \
    pwsh -c "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted" && \
    pwsh -c "Install-Module -Name PSDesiredStateConfiguration" && \
    pwsh -c "Enable-ExperimentalFeature PSDesiredStateConfiguration.InvokeDscResource" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.PowerCLI" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.vSphereDSC" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.PSDesiredStateConfiguration" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module VMware.vSphere.SsoAdmin" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module PowerNSX -RequiredVersion 3.0.1174" && \
    pwsh -c "\$ProgressPreference = \"SilentlyContinue\"; Install-Module PowervRA -RequiredVersion 3.6.0" && \
    curl -o ./PowerCLI-Example-Scripts.zip -J -L https://github.com/vmware/PowerCLI-Example-Scripts/archive/03272c1d2db26a525b31c930e3bf3d20d34468e0.zip && \
    unzip PowerCLI-Example-Scripts.zip && \
    rm -f PowerCLI-Example-Scripts.zip && \
    mv ./PowerCLI-Example-Scripts-* ./PowerCLI-Example-Scripts && \
    mv ./PowerCLI-Example-Scripts/Modules/* /usr/lib/powershell/Modules/ && \
    find / -name "net45" | xargs rm -rf && \
    echo '$ProgressPreference = "SilentlyContinue"' > /root/.config/powershell/Microsoft.PowerShell_profile.ps1 && \
    tdnf erase -y unzip && \
    tdnf clean all

CMD ["/bin/pwsh"]
