FROM ubuntu:14.04
MAINTAINER renoufa@vmware.com

ARG POWERSHELL_RELEASE=v6.0.0-alpha.14
ARG POWERSHELL_PACKAGE=powershell_6.0.0-alpha.14-1ubuntu1.14.04.1_amd64.deb
ARG POWERCLI_PACKAGE=PowerCLI.ViCore.zip
ARG POWERCLI_VDS_PACKAGE=PowerCLI.Vds.zip

RUN apt-get update && \
    apt-get install --no-install-recommends -yq \
    openssh-server \
    ca-certificates \
    curl \
    libunwind8 \
    libicu52 \
    unzip \
    wget \
    libcurl4-openssl-dev \
    git && \
    rm -rf /var/lib/apt/lists/*
    
# Set the working directory to /powershell
WORKDIR /powershell

# Install PowerShell package and clean up
RUN curl -SLO https://github.com/PowerShell/PowerShell/releases/download/$POWERSHELL_RELEASE/$POWERSHELL_PACKAGE \
    && dpkg -i $POWERSHELL_PACKAGE \
    && rm $POWERSHELL_PACKAGE

# Download and Unzip the PowerCLI module to the users module directory
ADD https://download3.vmware.com/software/vmw-tools/powerclicore/PowerCLI_Core.zip /powershell
RUN unzip /powershell/PowerCLI_Core.zip -d /powershell
RUN mkdir -p /root/.config/powershell/
RUN mkdir -p ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_PACKAGE -d ~/.local/share/powershell/Modules
RUN unzip /powershell/$POWERCLI_VDS_PACKAGE -d ~/.local/share/powershell/Modules

# Change the default PowerShell profile to include PowerCLI startup
RUN mv /powershell/Start-PowerCLI.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# Add PowerNSX
ADD https://github.com/vmware/powernsx/archive/master.zip /powershell
RUN mkdir ~/.local/share/powershell/Modules/PowerNSX
RUN unzip /powershell/master.zip -d /powershell/
RUN cp /powershell/powernsx-master/PowerNSX.ps*1 ~/.local/share/powershell/Modules/PowerNSX/

# Add Log Insight Module - https://github.com/lucdekens/LogInsight
# RUN git clone https://github.com/lucdekens/LogInsight.git ~/.local/share/powershell/Modules/LogInsight

# Add PowervRA 
ADD https://github.com/jakkulabs/PowervRA/releases/download/v2.0.0/PowervRA.zip /powershell
RUN unzip /powershell/PowervRA.zip -d /powershell/
RUN mv /powershell/PowervRA ~/.local/share/powershell/Modules/
RUN rm -f /powershell/PowervRA

CMD ["powershell"]

