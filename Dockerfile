FROM microsoft/powershell:ubuntu16.04

MAINTAINER renoufa@vmware.com

# Install PowerCLI
RUN pwsh -command '& {Install-Module -Name VMware.PowerCLI -RequiredVersion "10.0.0.7895300" -Force}' > /dev/null

# Install PowerNSX
RUN pwsh -command '& {Install-Module -Name PowerNSX -RequiredVersion "3.0.1091" -Force}' > /dev/null

CMD ["pwsh"]