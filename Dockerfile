FROM photon:1.0

MAINTAINER renoufa@vmware.com
LABEL PSVersion="v6.0.0-alpha.18"

# Set Versions for later use
ARG POWERCLI_PACKAGE=PowerCLI.ViCore.zip
ARG POWERCLI_VDS_PACKAGE=PowerCLI.Vds.zip
ARG POWERCLI_CIS_PACKAGE=PowerCLI.Cis.zip

# Set the working directory 
WORKDIR /powershell

# Download and Unzip the PowerCLI module to the users module directory
ADD https://download3.vmware.com/software/vmw-tools/powerclicore/PowerCLI_Core.zip /powershell
# Add PowerNSX
ADD https://raw.githubusercontent.com/vmware/powernsx/master/module/platform/core/PowerNSX/PowerNSX.psd1 /powershell
ADD https://raw.githubusercontent.com/vmware/powernsx/master/module/platform/core/PowerNSX/PowerNSX.psm1 /powershell

# Add PowerShell repository location to Photon OS
COPY powershell.repo /etc/yum.repos.d

	# Install PowerShell on Photon 
RUN tdnf install -y unzip powershell less git \
	&& tdnf clean all \
	&& unzip /powershell/PowerCLI_Core.zip -d /powershell \
	&& mkdir -p /root/.config/powershell/ \
	&& mkdir -p ~/.local/share/powershell/Modules \
	&& unzip /powershell/$POWERCLI_PACKAGE -d ~/.local/share/powershell/Modules \
	&& unzip /powershell/$POWERCLI_VDS_PACKAGE -d ~/.local/share/powershell/Modules \
	&& unzip /powershell/$POWERCLI_CIS_PACKAGE -d ~/.local/share/powershell/Modules \
	&& rm -rf /powershell/PowerCLI_Core.zip \
	&& rm -rf /powershell/$POWERCLI_PACKAGE \
	&& rm -rf /powershell/$POWERCLI_VDS_PACKAGE \
	&& rm -rf /powershell/$POWERCLI_CIS_PACKAGE \

	# Change the default PowerShell profile to include PowerCLI startup
	&& mv /powershell/Start-PowerCLI.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1 \
	&& mkdir ~/.local/share/powershell/Modules/PowerNSX \
	&& mv /powershell/PowerNSX.psd1 ~/.local/share/powershell/Modules/PowerNSX/ \
	&& mv /powershell/PowerNSX.psm1 ~/.local/share/powershell/Modules/PowerNSX/ \
	
	# Add PowervRA 
	&& powershell -Command 'Set-PSRepository -Name PSGallery -InstallationPolicy Trusted' \
	&& powershell -Command 'Install-Module -Name PowervRA -Confirm:$false' \

	# Add the PowerCLI Example Scripts and Modules
	&& git clone https://github.com/vmware/PowerCLI-Example-Scripts \

	# Add modules from PowerCLI-Example-Scripts folder to correct places
	&& mv /powershell/PowerCLI-Example-Scripts/Modules/VMware.VMEncryption ~/.local/share/powershell/Modules/ \
	&& mv /powershell/PowerCLI-Example-Scripts/Modules/VMFSIncrease ~/.local/share/powershell/Modules/ \
	&& mv /powershell/PowerCLI-Example-Scripts/Modules/Vi-Module ~/.local/share/powershell/Modules/ \
	&& chmod +x /powershell/PowerCLI-Example-Scripts/Scripts/modules.sh \
	&& /powershell/PowerCLI-Example-Scripts/Scripts/modules.sh \
	&& rm -fr /powershell/PowerCLI-Example-Scripts/

CMD ["powershell"]
