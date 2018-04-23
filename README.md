# PowerCLI Core

## Welcome!

This Docker image contains PowerShell Core, PowerCLI 10, PowerNSX, and a number of community modules and script examples

For detailed information on how to use the container have a look at the docs.

For more information, visit the following links:

[PowerCLI](https://vmware.com/go/powercli)
[PowerNSX](https://powernsx.github.io/)
[PowerVRA](https://github.com/jakkulabs/PowervRA)
[PowerCLI-Example-Scripts](https://github.com/vmware/PowerCLI-Example-Scripts)

## Quick usage

Run the following to download the container from the docker hub:

    docker pull vmware/powerclicore

To open an interactive Terminal and run:

    docker run --rm -it vmware/powerclicore

Or to just execute a local script run:

    docker run --rm --entrypoint="/usr/bin/pwsh" -v ${PWD}/scripts:/tmp/scripts vmware/powerclicore /tmp/scripts/sample1.ps1

Where "/scripts" is a local folder cointaining your scripts.

More options for working with and running the container can be found here: (http://www.virtuallyghetto.com/2016/10/5-different-ways-to-run-powercli-script-using-powercli-core-docker-container.html)
