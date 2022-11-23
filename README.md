# PowerCLI Core

## Overview

A container image for VMware PowerCLI and supporting modules, community modules, and community script examples.

This image includes the following components:

Component | Description
---------|----------
[`VMware.PowerCLI`][vmware-powercli] | A collection of PowerShell modules for managing and automating VMware products.
[`VMware.vSphereDSC`][vmware-vsphere-dsc] | PowerShell module for vSphere desired state configuration.
`VMware.CloudServices` | PowerShell module for VMware Cloud Services.
`VMware.vSphere.SsoAdmin` | PowerShell module for vCenter Single Sign-on.
[`PowerVCF`][powervcf] | PowerShell module for VMware Cloud Foundation.
[`PowerNSX`][powernsx] | PowerShell module for VMware NSX for vSphere.
[PowerCLI Examples][powercli-examples] | A collection of community contributed PowerShell modules and scripts.

## Get Started

Run the following to download the latest container [from Docker Hub][powerclicore-docker-hub]:

```bash
docker pull vmware/powerclicore:latest
```

Run the following to download a specific version from Docker Hub:

```bash
docker pull vmware/powerclicore:x.y.z
```

Open an interactive terminal:

```bash
docker run --rm -it vmware/powerclicore
```

Run a local script:
docker run --rm --entrypoint="/usr/bin/pwsh" -v ${PWD}
```bash
docker run --rm --entrypoint="/usr/bin/pwsh" -v ~/scripts:/tmp/scripts vmware/powerclicore /tmp/scripts/example.ps1
```

Where `~/scripts` is the local directory path for your PowerShell scripts.

For more methods, read [5 ways to a run PowerCLI script using the PowerCLI Docker Container][community-wlam-powerclicore] by William Lam.

[powerclicore-docker-hub]: https://hub.docker.com/r/vmware/powerclicore
[vmware-powercli]: https://developer.vmware.com/web/tool/vmware-powercli
[vmware-vsphere-dsc]: https://github.com/vmware/dscr-for-vmware
[powervcf]: https://vmware.github.io/powershell-module-for-vmware-cloud-foundation
[powernsx]: https://powernsx.github.io
[powervra]: https://github.com/jakkulabs/PowervRA
[powercli-examples]: https://github.com/vmware/PowerCLI-Example-Scripts
[community-wlam-powerclicore]: https://williamlam.com/2016/10/5-different-ways-to-run-powercli-script-using-powercli-core-docker-container.html
